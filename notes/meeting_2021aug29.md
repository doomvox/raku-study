- [meeting notes August 29, 2021](#org96470bf)
  - [david christensen](#org2c8d285)
  - [the method .round, currently calls it's argument "scale"](#orgb9434f8)
    - [that might be called "nearest"](#orgcda7793)
  - [lowest common ancestor with raku classes](#org316d26f)
    - [example code](#org2cded18)
  - [multiple dispatch and types](#org73ee447)
    - [my standard complaint](#org3ae87fa)
    - [using multi-dispatch for "dualmap"](#orgb88dc30)
    - [dualmap status](#org6a135a8)
  - [the maybe method (dot question mark operator: ".?")](#orgd1f357a)
    - [documentation: Safe call operator](#org251bbb7)
    - [avoids need to check if .can](#org31104e2)
    - [(from a jonathan worthington code example)](#org6b695bc)
    - [bruce gray argues it's to short-circuit long chains](#org19b62bd)
  - [the usual links:](#org2312ca5)
    - [meeting notes](#org1532544)
    - [code examples:](#org1664c68)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orge7b2a78)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org06204f0)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org26ae576)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org5e8a9df)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org3412675)
  - [some stackoverflow questions](#org0aa7afc)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org880ea6e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#orgc4dcf9c)
  - [william michaels](#org3a4c188)
    - [answers shell questions with raku](#org29bec95)
    - [if you approve some of these, you might upvote:](#orgf641b4e)
  - [the future:](#orgee23e27)
    - [next meeting: September 12th, 2021](#org84a7aec)
    - [Bruce Gray promises an anti-Haskell spiel](#orgcbf9cc9)
    - [jeff](#orge39ec03)


<a id="org96470bf"></a>

# meeting notes August 29, 2021


<a id="org2c8d285"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgb9434f8"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgcda7793"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org316d26f"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org2cded18"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org73ee447"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org3ae87fa"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgb88dc30"></a>

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


<a id="org6a135a8"></a>

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


<a id="orgd1f357a"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org251bbb7"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org31104e2"></a>

### avoids need to check if .can


<a id="org6b695bc"></a>

### (from a jonathan worthington code example)


<a id="org19b62bd"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org2312ca5"></a>

## the usual links:


<a id="org1532544"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org1664c68"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orge7b2a78"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org06204f0"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org26ae576"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org5e8a9df"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org3412675"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org0aa7afc"></a>

## some stackoverflow questions


<a id="org880ea6e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="orgc4dcf9c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org3a4c188"></a>

## william michaels


<a id="org29bec95"></a>

### answers shell questions with raku


<a id="orgf641b4e"></a>

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


<a id="orgee23e27"></a>

## the future:


<a id="org84a7aec"></a>

### next meeting: September 12th, 2021


<a id="orgcbf9cc9"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orge39ec03"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
