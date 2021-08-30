- [meeting notes August 29, 2021](#org271f520)
  - [the method .round, currently calls it's argument "scale"](#orgd971d03)
    - [a better term might be "nearest"](#orgbcf4e78)
  - [lowest common ancestor with raku classes](#org6dfbe77)
    - [example code](#org20fc9f6)
  - [multiple dispatch and types](#org8a2dbc9)
    - [my standard complaint](#org3618a72)
    - [using multi-dispatch for "dualmap"](#orgcb7f098)
    - [dualmap status](#org43f43af)
  - [david christensen](#orgde1dbf4)
  - [the maybe method (dot question mark operator: ".?")](#orgbf83738)
    - [documentation: "Safe call operator"](#org11f1922)
    - [avoids need to check if .can](#orga0e881d)
    - [(from a jonathan worthington code example)](#org37d2fc8)
    - [bruce gray argues it's to short-circuit long chains](#org86566c3)
  - [the usual links:](#orgad0314a)
    - [meeting notes](#org2901df0)
    - [code examples:](#org4e0ee83)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orga3ad2c5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgc0d985f)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgf07faed)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org96b07da)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgc1227ad)
    - [blog post by laurent<sub>r</sub>:](#orgcd45d25)
  - [some stackoverflow questions](#orgfa7485c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org01cc25c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org428e3f2)
  - [william michaels](#org9c494f2)
    - [answers shell questions with raku](#orgd69e759)
    - [if you approve some of these, you might upvote:](#orgbe8cff0)
    - [question: will shell people use a tool that needs to be installed first?](#orgbf1842b)
  - [the future:](#org1afd651)
    - [next meeting: September 12th, 2021](#org73dd724)
    - [Bruce Gray promises an anti-Haskell spiel](#org84aa120)
    - [jeff](#orgac35e14)


<a id="org271f520"></a>

# meeting notes August 29, 2021


<a id="orgd971d03"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgbcf4e78"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org6dfbe77"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

Lowest common ancestor

This article is about lowest common ancestors in graph theory and computer science. For the common ancestor of a set of species in evolutionary trees, see most recent common ancestor. For a common ancestor of all life forms, see last universal common ancestor. In this tree, the lowest common ancestor of the nodes x and y is marked in dark green. Other common ancestors are shown in light green.

In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself (so if v has a direct connection from w, w is the lowest common ancestor).


<a id="org20fc9f6"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org8a2dbc9"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org3618a72"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgcb7f098"></a>

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


<a id="org43f43af"></a>

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


<a id="orgde1dbf4"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgbf83738"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org11f1922"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orga0e881d"></a>

### avoids need to check if .can


<a id="org37d2fc8"></a>

### (from a jonathan worthington code example)


<a id="org86566c3"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgad0314a"></a>

## the usual links:


<a id="org2901df0"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org4e0ee83"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orga3ad2c5"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgc0d985f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgf07faed"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org96b07da"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgc1227ad"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgcd45d25"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="orgfa7485c"></a>

## some stackoverflow questions


<a id="org01cc25c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org428e3f2"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org9c494f2"></a>

## william michaels


<a id="orgd69e759"></a>

### answers shell questions with raku


<a id="orgbe8cff0"></a>

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


<a id="orgbf1842b"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org1afd651"></a>

## the future:


<a id="org73dd724"></a>

### next meeting: September 12th, 2021


<a id="org84aa120"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgac35e14"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
