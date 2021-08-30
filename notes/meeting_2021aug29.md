- [meeting notes August 29, 2021](#orgddb2847)
  - [the method .round, currently calls it's argument "scale"](#orgd76c8d6)
    - [a better term might be "nearest"](#org9afba0c)
  - [lowest common ancestor with raku classes](#org04bbf47)
    - [example code](#orge5c81fe)
  - [multiple dispatch and types](#org3143105)
    - [my standard complaint](#org7736f41)
    - [using multi-dispatch for "dualmap"](#org25828f2)
    - [dualmap status](#orga7aad38)
  - [david christensen](#orgf9f3625)
  - [the maybe method (dot question mark operator: ".?")](#orgca78ae5)
    - [documentation: Safe call operator](#org0299413)
    - [avoids need to check if .can](#org48c064a)
    - [(from a jonathan worthington code example)](#orgd84f040)
    - [bruce gray argues it's to short-circuit long chains](#org7acb71b)
  - [the usual links:](#org18aae45)
    - [meeting notes](#orgd5b3583)
    - [code examples:](#orgc14e952)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgb60dafc)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org367b30b)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org85972e5)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orga7ec0bc)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orge362eb3)
    - [blog post by laurent<sub>r</sub>:](#org315f289)
  - [some stackoverflow questions](#org29bd2ac)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org56af0ba)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org84698e4)
  - [william michaels](#orgc2ae035)
    - [answers shell questions with raku](#org45c0f72)
    - [if you approve some of these, you might upvote:](#org29ef8d2)
  - [the future:](#org94a17be)
    - [next meeting: September 12th, 2021](#org5beef05)
    - [Bruce Gray promises an anti-Haskell spiel](#org322f238)
    - [jeff](#orgc71981e)


<a id="orgddb2847"></a>

# meeting notes August 29, 2021


<a id="orgd76c8d6"></a>

## the method .round, currently calls it's argument "scale"


<a id="org9afba0c"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org04bbf47"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orge5c81fe"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org3143105"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org7736f41"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org25828f2"></a>

### using multi-dispatch for "dualmap"

1.  kind of cool

    1.  implementing this feature in raku took little code:
    
        ```perl6
        my $dmh = Data::Dualmap::Recurse::Numerics.new( 
                  string_handler => 
                     { do if ( $^a eq $^b ) { "Both: $a" } else { "1: $a  2: $b" } } );
        my $result = $dmh.dualmap( '-', $gross, $costs );
        ```

2.  a little tricky to think about

    1.  it isn't **exactly** like a case statement
    
        1.  but the "is default" feature helps


<a id="orga7aad38"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is now more like deepmap
    
        1.  needs a code block as argument
        
        2.  acts on any value of any type
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')
            
            3.  default string handler does what **I** mean,
            
                1.  via OOP interface can use code block instead
    
    3.  still may need more thought
    
        1.  maybe: any number of code blocks associated with arbitrary types
        
            1.  do **this** with a leaf node that looks like **that**
        
        2.  consider the case of set operations


<a id="orgf9f3625"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgca78ae5"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org0299413"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org48c064a"></a>

### avoids need to check if .can


<a id="orgd84f040"></a>

### (from a jonathan worthington code example)


<a id="org7acb71b"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org18aae45"></a>

## the usual links:


<a id="orgd5b3583"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgc14e952"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgb60dafc"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org367b30b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org85972e5"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orga7ec0bc"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orge362eb3"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org315f289"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org29bd2ac"></a>

## some stackoverflow questions


<a id="org56af0ba"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org84698e4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orgc2ae035"></a>

## william michaels


<a id="org45c0f72"></a>

### answers shell questions with raku


<a id="org29ef8d2"></a>

### if you approve some of these, you might upvote:

1.  <https://unix.stackexchange.com/a/654444>

2.  <https://unix.stackexchange.com/a/655217>

3.  <https://unix.stackexchange.com/a/655944>

4.  <https://unix.stackexchange.com/a/658564>

5.  <https://unix.stackexchange.com/a/658618>

6.  <https://unix.stackexchange.com/a/658666>

7.  <https://unix.stackexchange.com/a/658703>

8.  <https://unix.stackexchange.com/a/658716>

9.  <https://unix.stackexchange.com/a/664929>


<a id="org94a17be"></a>

## the future:


<a id="org5beef05"></a>

### next meeting: September 12th, 2021


<a id="org322f238"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgc71981e"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
