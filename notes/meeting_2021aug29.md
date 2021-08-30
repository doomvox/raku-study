- [meeting notes August 29, 2021](#org314aa58)
  - [david christensen](#orga703a46)
  - [the method .round, currently calls it's argument "scale"](#orgf24c14d)
    - [that might be called "nearest"](#org402b5c3)
  - [lowest common ancestor with raku classes](#orga1369c1)
    - [example code](#org3254231)
  - [multiple dispatch and types](#org69da855)
    - [my standard complaint](#org579ab08)
    - [using multi-dispatch for "dualmap"](#orgf7a2505)
    - [dualmap status](#orgdc27584)
  - [the maybe method (dot question mark operator: ".?")](#orgcc3a82b)
    - [documentation: Safe call operator](#org0883013)
    - [avoids need to check if .can](#org68637a7)
    - [(from a jonathan worthington code example)](#org6b98554)
    - [bruce gray argues it's to short-circuit long chains](#orgc474c39)
  - [the usual links:](#org69904af)
    - [meeting notes](#org8d8db02)
    - [code examples:](#orgb8b3eb1)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgd65d1ad)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org687b5fd)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org26a03ce)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org9217fa6)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org38739f1)
    - [blog post by laurent<sub>r</sub>:](#org0127c96)
  - [some stackoverflow questions](#org781fb28)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org63699fe)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org2ee7120)
  - [william michaels](#orgc9bafae)
    - [answers shell questions with raku](#org48b4fed)
    - [if you approve some of these, you might upvote:](#org4ad0f91)
  - [the future:](#orgee8c00a)
    - [next meeting: September 12th, 2021](#org2f96abc)
    - [Bruce Gray promises an anti-Haskell spiel](#org127681e)
    - [jeff](#org66a1bf6)


<a id="org314aa58"></a>

# meeting notes August 29, 2021


<a id="orga703a46"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgf24c14d"></a>

## the method .round, currently calls it's argument "scale"


<a id="org402b5c3"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="orga1369c1"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org3254231"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org69da855"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org579ab08"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgf7a2505"></a>

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


<a id="orgdc27584"></a>

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


<a id="orgcc3a82b"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org0883013"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org68637a7"></a>

### avoids need to check if .can


<a id="org6b98554"></a>

### (from a jonathan worthington code example)


<a id="orgc474c39"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org69904af"></a>

## the usual links:


<a id="org8d8db02"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgb8b3eb1"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgd65d1ad"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org687b5fd"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org26a03ce"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org9217fa6"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org38739f1"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org0127c96"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org781fb28"></a>

## some stackoverflow questions


<a id="org63699fe"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org2ee7120"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orgc9bafae"></a>

## william michaels


<a id="org48b4fed"></a>

### answers shell questions with raku


<a id="org4ad0f91"></a>

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


<a id="orgee8c00a"></a>

## the future:


<a id="org2f96abc"></a>

### next meeting: September 12th, 2021


<a id="org127681e"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org66a1bf6"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
