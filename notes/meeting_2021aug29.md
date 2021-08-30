- [meeting notes August 29, 2021](#orgdab7b7a)
  - [the method .round, currently calls it's argument "scale"](#org64fd2be)
    - [a better term might be "nearest"](#orgb115e46)
  - [lowest common ancestor with raku classes](#orge1e49ad)
    - [<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>](#org78aeb83)
    - [Lowest common ancestor, at wikipedia:](#org8780d48)
  - [multiple dispatch and types](#org7a254c7)
    - [my standard complaint](#org6a17a17)
    - [using multi-dispatch for "dualmap"](#orgf464bee)
    - [dualmap status](#org165694c)
  - [david christensen](#orga480f57)
  - [the maybe method (dot question mark operator: ".?")](#orgf3e7361)
    - [documentation: "Safe call operator"](#orgf472ad2)
    - [avoids need to check if .can](#org0f4448c)
    - [(from a jonathan worthington code example)](#orgf95bee9)
    - [bruce gray argues it's to short-circuit long chains](#org6b61ead)
  - [the usual links:](#org91483ef)
    - [meeting notes](#org33cc6fd)
    - [code examples:](#org61854be)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orga888aa8)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orga125e67)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgfcbb65b)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org47c24be)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org91b8075)
    - [blog post by laurent<sub>r</sub>:](#org1ebd64e)
  - [some stackoverflow questions](#org18e7f88)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org9c70a00)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org514b85d)
  - [william michaels](#org624a3b6)
    - [answers shell questions with raku](#org1814ccd)
    - [if you approve some of these, you might upvote:](#org5ae6db1)
    - [question: will shell people use a tool that needs to be installed first?](#org78d16d0)
  - [the future:](#org6ae60c0)
    - [next meeting: September 12th, 2021](#org35a295b)
    - [Bruce Gray promises an anti-Haskell spiel](#org678a80f)
    - [jeff](#orga645db9)


<a id="orgdab7b7a"></a>

# meeting notes August 29, 2021


<a id="org64fd2be"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgb115e46"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="orge1e49ad"></a>

## lowest common ancestor with raku classes


<a id="org78aeb83"></a>

### <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org8780d48"></a>

### Lowest common ancestor, at wikipedia:

1.  <https://en.wikipedia.org/wiki/Lowest_common_ancestor>

    "In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"

2.  so the definitions in use:

    1.  the root of a tree is at the top
    
    2.  a node can be it's own parent
    
        1.  I think of LCA as "genetic similarity": you are similar to yourself

3.  example code

    <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org7a254c7"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org6a17a17"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgf464bee"></a>

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


<a id="org165694c"></a>

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


<a id="orga480f57"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgf3e7361"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgf472ad2"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org0f4448c"></a>

### avoids need to check if .can


<a id="orgf95bee9"></a>

### (from a jonathan worthington code example)


<a id="org6b61ead"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org91483ef"></a>

## the usual links:


<a id="org33cc6fd"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org61854be"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orga888aa8"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orga125e67"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgfcbb65b"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org47c24be"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org91b8075"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org1ebd64e"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org18e7f88"></a>

## some stackoverflow questions


<a id="org9c70a00"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org514b85d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org624a3b6"></a>

## william michaels


<a id="org1814ccd"></a>

### answers shell questions with raku


<a id="org5ae6db1"></a>

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


<a id="org78d16d0"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org6ae60c0"></a>

## the future:


<a id="org35a295b"></a>

### next meeting: September 12th, 2021


<a id="org678a80f"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orga645db9"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
