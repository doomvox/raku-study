- [meeting notes August 29, 2021](#orgd29fb7c)
  - [the method .round, currently calls it's argument "scale"](#org1fc39f9)
    - [a better term might "nearest"](#orgee545b7)
  - [lowest common ancestor with raku classes](#org1a5ba4d)
    - [example code](#org426aa36)
  - [multiple dispatch and types](#org5ab3510)
    - [my standard complaint](#org0d07dea)
    - [using multi-dispatch for "dualmap"](#org1b1ee2b)
    - [dualmap status](#org1918f08)
  - [david christensen](#org2be2915)
  - [the maybe method (dot question mark operator: ".?")](#org1188de8)
    - [documentation: Safe call operator](#org3d11889)
    - [avoids need to check if .can](#org8b55dfd)
    - [(from a jonathan worthington code example)](#orgdb2f1fb)
    - [bruce gray argues it's to short-circuit long chains](#orgff5852d)
  - [the usual links:](#org8626546)
    - [meeting notes](#orgfbc760e)
    - [code examples:](#org2c67c7f)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orga69e7ba)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org5b4cf40)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org2acae16)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org315d7b9)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org340ed19)
    - [blog post by laurent<sub>r</sub>:](#org6177ed9)
  - [some stackoverflow questions](#orge203951)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org788a973)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org7742d34)
  - [william michaels](#org19dcd05)
    - [answers shell questions with raku](#org717a9e9)
    - [if you approve some of these, you might upvote:](#org9b1a85a)
  - [the future:](#org147d84e)
    - [next meeting: September 12th, 2021](#org1f2612e)
    - [Bruce Gray promises an anti-Haskell spiel](#org06ccf97)
    - [jeff](#orgdcb3c01)


<a id="orgd29fb7c"></a>

# meeting notes August 29, 2021


<a id="org1fc39f9"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgee545b7"></a>

### a better term might "nearest"

"round off to the nearest"


<a id="org1a5ba4d"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org426aa36"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org5ab3510"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org0d07dea"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org1b1ee2b"></a>

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


<a id="org1918f08"></a>

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


<a id="org2be2915"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org1188de8"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org3d11889"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org8b55dfd"></a>

### avoids need to check if .can


<a id="orgdb2f1fb"></a>

### (from a jonathan worthington code example)


<a id="orgff5852d"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org8626546"></a>

## the usual links:


<a id="orgfbc760e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org2c67c7f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orga69e7ba"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org5b4cf40"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org2acae16"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org315d7b9"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org340ed19"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org6177ed9"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="orge203951"></a>

## some stackoverflow questions


<a id="org788a973"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org7742d34"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org19dcd05"></a>

## william michaels


<a id="org717a9e9"></a>

### answers shell questions with raku


<a id="org9b1a85a"></a>

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


<a id="org147d84e"></a>

## the future:


<a id="org1f2612e"></a>

### next meeting: September 12th, 2021


<a id="org06ccf97"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgdcb3c01"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
