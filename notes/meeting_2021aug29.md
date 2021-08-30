- [meeting notes August 29, 2021](#orgbdf1e13)
  - [the method .round, currently calls it's argument "scale"](#org1a088dc)
    - [a better term might be "nearest"](#org8da664b)
  - [lowest common ancestor with raku classes](#orgb8d0536)
    - [Lowest common ancestor, at wikipedia:](#orge6e415f)
    - [example code](#orgec547c2)
  - [multiple dispatch and types](#org3fd5c65)
    - [my standard complaint](#org80b3fc8)
    - [using multi-dispatch for "dualmap"](#orgdf03444)
    - [dualmap status](#orga9b5010)
  - [david christensen](#org5bf4a71)
  - [the maybe method (dot question mark operator: ".?")](#org68313cc)
    - [documentation: "Safe call operator"](#org5397ab8)
    - [avoids need to check if .can](#orga81e7fb)
    - [(from a jonathan worthington code example)](#orgf2e860e)
    - [bruce gray argues it's to short-circuit long chains](#org89d2d9b)
  - [the usual links:](#org74a2e88)
    - [meeting notes](#org6eaa05a)
    - [code examples:](#orge244f54)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org5d0d97c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgbaa3b4e)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orga330677)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgc9c5614)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org9ca6546)
    - [blog post by laurent<sub>r</sub>:](#org6b3f771)
  - [some stackoverflow questions](#orgbcd0ddb)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org260128c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org7bc2fe8)
  - [william michaels](#org1a9cddd)
    - [answers shell questions with raku](#orgdac8614)
    - [if you approve some of these, you might upvote:](#org8dd02b7)
    - [question: will shell people use a tool that needs to be installed first?](#orgdc23015)
  - [the future:](#orgfe9704f)
    - [next meeting: September 12th, 2021](#orge36e02c)
    - [Bruce Gray promises an anti-Haskell spiel](#org1f4ae05)
    - [jeff](#org4da9e60)


<a id="orgbdf1e13"></a>

# meeting notes August 29, 2021


<a id="org1a088dc"></a>

## the method .round, currently calls it's argument "scale"


<a id="org8da664b"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="orgb8d0536"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orge6e415f"></a>

### Lowest common ancestor, at wikipedia:

"In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"


<a id="orgec547c2"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org3fd5c65"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org80b3fc8"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgdf03444"></a>

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


<a id="orga9b5010"></a>

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


<a id="org5bf4a71"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org68313cc"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org5397ab8"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orga81e7fb"></a>

### avoids need to check if .can


<a id="orgf2e860e"></a>

### (from a jonathan worthington code example)


<a id="org89d2d9b"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org74a2e88"></a>

## the usual links:


<a id="org6eaa05a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orge244f54"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org5d0d97c"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgbaa3b4e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orga330677"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgc9c5614"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org9ca6546"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org6b3f771"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="orgbcd0ddb"></a>

## some stackoverflow questions


<a id="org260128c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org7bc2fe8"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org1a9cddd"></a>

## william michaels


<a id="orgdac8614"></a>

### answers shell questions with raku


<a id="org8dd02b7"></a>

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


<a id="orgdc23015"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="orgfe9704f"></a>

## the future:


<a id="orge36e02c"></a>

### next meeting: September 12th, 2021


<a id="org1f4ae05"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org4da9e60"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
