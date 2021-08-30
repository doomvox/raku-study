- [meeting notes August 29, 2021](#org4a023f2)
  - [the method .round, currently calls it's argument "scale"](#org7bc2db2)
    - [a better term might be "nearest"](#org0ea718e)
  - [lowest common ancestor with raku classes](#org4989746)
    - [example code](#org2728b0c)
  - [multiple dispatch and types](#org916b8fa)
    - [my standard complaint](#org7230296)
    - [using multi-dispatch for "dualmap"](#orgde38cc9)
    - [dualmap status](#org3c8246d)
  - [david christensen](#org4c90889)
  - [the maybe method (dot question mark operator: ".?")](#org615dd88)
    - [documentation: Safe call operator](#org90c0562)
    - [avoids need to check if .can](#orga5d45a4)
    - [(from a jonathan worthington code example)](#org884527a)
    - [bruce gray argues it's to short-circuit long chains](#orgf5cde06)
  - [the usual links:](#orgc3bf50a)
    - [meeting notes](#org9c77b8a)
    - [code examples:](#org42b934c)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org6087a50)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org05d8f92)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org09ddcfe)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org1ecf067)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgc44b918)
    - [blog post by laurent<sub>r</sub>:](#orgf0fa2e4)
  - [some stackoverflow questions](#org331b624)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#orge0f8cd2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org74ec756)
  - [william michaels](#org5ea69d0)
    - [answers shell questions with raku](#org9f713f6)
    - [if you approve some of these, you might upvote:](#org8728a39)
    - [question: will shell people use tools that need to be installed first.](#orgedecc7a)
  - [the future:](#org2a3b416)
    - [next meeting: September 12th, 2021](#org7d54345)
    - [Bruce Gray promises an anti-Haskell spiel](#org6423af5)
    - [jeff](#orgcbf18ce)


<a id="org4a023f2"></a>

# meeting notes August 29, 2021


<a id="org7bc2db2"></a>

## the method .round, currently calls it's argument "scale"


<a id="org0ea718e"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org4989746"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org2728b0c"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org916b8fa"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org7230296"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgde38cc9"></a>

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


<a id="org3c8246d"></a>

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


<a id="org4c90889"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org615dd88"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org90c0562"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orga5d45a4"></a>

### avoids need to check if .can


<a id="org884527a"></a>

### (from a jonathan worthington code example)


<a id="orgf5cde06"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgc3bf50a"></a>

## the usual links:


<a id="org9c77b8a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org42b934c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org6087a50"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org05d8f92"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org09ddcfe"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org1ecf067"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgc44b918"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgf0fa2e4"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org331b624"></a>

## some stackoverflow questions


<a id="orge0f8cd2"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org74ec756"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org5ea69d0"></a>

## william michaels


<a id="org9f713f6"></a>

### answers shell questions with raku


<a id="org8728a39"></a>

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


<a id="orgedecc7a"></a>

### question: will shell people use tools that need to be installed first.


<a id="org2a3b416"></a>

## the future:


<a id="org7d54345"></a>

### next meeting: September 12th, 2021


<a id="org6423af5"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgcbf18ce"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
