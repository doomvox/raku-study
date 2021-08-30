- [meeting notes August 29, 2021](#org2c7503f)
  - [the method .round, currently calls it's argument "scale"](#orgcae1fd2)
    - [a better term might be "nearest"](#org23c7929)
  - [lowest common ancestor with raku classes](#orgdbcb5b9)
    - [<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>](#org2b95494)
    - [Lowest common ancestor, at wikipedia:](#orgeddc3a2)
  - [multiple dispatch and types](#orgf599613)
    - [my standard complaint](#orgddfbfda)
    - [using multi-dispatch for "dualmap"](#org7b6d26c)
    - [dualmap status](#orga12f028)
  - [david christensen](#org0f82824)
  - [the maybe method (dot question mark operator: ".?")](#org3387f89)
    - [documentation: "Safe call operator"](#org514979d)
    - [avoids need to check if .can](#orgfce450a)
    - [(from a jonathan worthington code example)](#org7691569)
    - [bruce gray argues it's to short-circuit long chains](#org85efe7e)
  - [the usual links:](#orgdae5496)
    - [meeting notes](#org926fdb3)
    - [code examples:](#org2ca719c)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org0cc0436)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org0ca37cc)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orge61dd83)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org5943625)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgb0fec41)
    - [blog post by laurent<sub>r</sub>:](#orgbad43b3)
  - [some stackoverflow questions](#org8a36161)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org52b3831)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org062092d)
  - [william michaels](#org3ef5e73)
    - [answers shell questions with raku](#org6a4f420)
    - [if you approve some of these, you might upvote:](#orgd67daad)
    - [question: will shell people use a tool that needs to be installed first?](#orgc31471a)
  - [the future:](#org73a894b)
    - [next meeting: September 12th, 2021](#org8668afc)
    - [Bruce Gray promises an anti-Haskell spiel](#org758fe42)
    - [jeff](#org92dca73)


<a id="org2c7503f"></a>

# meeting notes August 29, 2021


<a id="orgcae1fd2"></a>

## the method .round, currently calls it's argument "scale"


<a id="org23c7929"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="orgdbcb5b9"></a>

## lowest common ancestor with raku classes


<a id="org2b95494"></a>

### <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgeddc3a2"></a>

### Lowest common ancestor, at wikipedia:

1.  <https://en.wikipedia.org/wiki/Lowest_common_ancestor>

    "In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"

2.  so the definitions in use:

    1.  the root of a tree is at the top
    
    2.  a node can be it's own parent
    
        1.  LCA is like "genetic similarity": you are similar to yourself

3.  example code

    <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgf599613"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgddfbfda"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org7b6d26c"></a>

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


<a id="orga12f028"></a>

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


<a id="org0f82824"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org3387f89"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org514979d"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgfce450a"></a>

### avoids need to check if .can


<a id="org7691569"></a>

### (from a jonathan worthington code example)


<a id="org85efe7e"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgdae5496"></a>

## the usual links:


<a id="org926fdb3"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org2ca719c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org0cc0436"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org0ca37cc"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orge61dd83"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org5943625"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgb0fec41"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgbad43b3"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org8a36161"></a>

## some stackoverflow questions


<a id="org52b3831"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org062092d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org3ef5e73"></a>

## william michaels


<a id="org6a4f420"></a>

### answers shell questions with raku


<a id="orgd67daad"></a>

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


<a id="orgc31471a"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org73a894b"></a>

## the future:


<a id="org8668afc"></a>

### next meeting: September 12th, 2021


<a id="org758fe42"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org92dca73"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
