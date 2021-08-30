- [meeting notes August 29, 2021](#orgb974ceb)
  - [the method .round, currently calls it's argument "scale"](#org9825098)
    - [a better term might be "nearest"](#orgf72f99d)
  - [lowest common ancestor with raku classes](#orgf7c9075)
    - [example code](#orga323008)
  - [multiple dispatch and types](#org60019b2)
    - [my standard complaint](#org05795d8)
    - [using multi-dispatch for "dualmap"](#org1e0eb79)
    - [dualmap status](#org98fdeb5)
  - [david christensen](#org29338ce)
  - [the maybe method (dot question mark operator: ".?")](#org6ff1bbb)
    - [documentation: Safe call operator](#orgc42f513)
    - [avoids need to check if .can](#orge4c2ca1)
    - [(from a jonathan worthington code example)](#org0c30873)
    - [bruce gray argues it's to short-circuit long chains](#orgc29c208)
  - [the usual links:](#orgec1c1ff)
    - [meeting notes](#org5550e0d)
    - [code examples:](#org87c852d)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org69b5ba5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgfb1c240)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org397d104)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org6a9fa57)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org733d68f)
    - [blog post by laurent<sub>r</sub>:](#orgfd1e88b)
  - [some stackoverflow questions](#orgdb8fba5)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org043c359)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org8036532)
  - [william michaels](#org83f9c55)
    - [answers shell questions with raku](#org1f56bf6)
    - [if you approve some of these, you might upvote:](#org11e1798)
    - [question: will shell people use tools that need to be installed first.](#org9010342)
  - [the future:](#org9b9f3ff)
    - [next meeting: September 12th, 2021](#org2ce1b09)
    - [Bruce Gray promises an anti-Haskell spiel](#orgac40df1)
    - [jeff](#org58f37ee)


<a id="orgb974ceb"></a>

# meeting notes August 29, 2021


<a id="org9825098"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgf72f99d"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="orgf7c9075"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orga323008"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org60019b2"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org05795d8"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org1e0eb79"></a>

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


<a id="org98fdeb5"></a>

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


<a id="org29338ce"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org6ff1bbb"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgc42f513"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orge4c2ca1"></a>

### avoids need to check if .can


<a id="org0c30873"></a>

### (from a jonathan worthington code example)


<a id="orgc29c208"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgec1c1ff"></a>

## the usual links:


<a id="org5550e0d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org87c852d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org69b5ba5"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgfb1c240"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org397d104"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org6a9fa57"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org733d68f"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgfd1e88b"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="orgdb8fba5"></a>

## some stackoverflow questions


<a id="org043c359"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org8036532"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org83f9c55"></a>

## william michaels


<a id="org1f56bf6"></a>

### answers shell questions with raku


<a id="org11e1798"></a>

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


<a id="org9010342"></a>

### question: will shell people use tools that need to be installed first.


<a id="org9b9f3ff"></a>

## the future:


<a id="org2ce1b09"></a>

### next meeting: September 12th, 2021


<a id="orgac40df1"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org58f37ee"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
