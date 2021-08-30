- [meeting notes August 29, 2021](#org7615755)
  - [the method .round, currently calls it's argument "scale"](#org1eb2693)
    - [a better term might be "nearest"](#org423ba6e)
  - [lowest common ancestor with raku classes](#org4509715)
    - [Lowest common ancestor, at wikipedia:](#org625c5aa)
    - [example code](#org57aa62f)
  - [multiple dispatch and types](#org88ee17e)
    - [my standard complaint](#orgcda200d)
    - [using multi-dispatch for "dualmap"](#org1baeb27)
    - [dualmap status](#orgff65877)
  - [david christensen](#orgecc8ae4)
  - [the maybe method (dot question mark operator: ".?")](#org901d2b8)
    - [documentation: "Safe call operator"](#org88b3e63)
    - [avoids need to check if .can](#orgf7087aa)
    - [(from a jonathan worthington code example)](#orge62e6b4)
    - [bruce gray argues it's to short-circuit long chains](#org3b3f5e5)
  - [the usual links:](#org395ff2c)
    - [meeting notes](#org8ef25a4)
    - [code examples:](#orgece04bb)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org8f3c317)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org848c844)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org6d0d649)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org744847f)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org8c36c4b)
    - [blog post by laurent<sub>r</sub>:](#org5f1041f)
  - [some stackoverflow questions](#org3808bf9)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org61eec87)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#orga2bbb86)
  - [william michaels](#orgb9563b4)
    - [answers shell questions with raku](#org390a4d3)
    - [if you approve some of these, you might upvote:](#org5417127)
    - [question: will shell people use a tool that needs to be installed first?](#orgae46110)
  - [the future:](#org45b534b)
    - [next meeting: September 12th, 2021](#orga3191cd)
    - [Bruce Gray promises an anti-Haskell spiel](#orgb821f8c)
    - [jeff](#orgf536746)


<a id="org7615755"></a>

# meeting notes August 29, 2021


<a id="org1eb2693"></a>

## the method .round, currently calls it's argument "scale"


<a id="org423ba6e"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org4509715"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org625c5aa"></a>

### Lowest common ancestor, at wikipedia:

"This article is about lowest common ancestors in graph theory and computer science. For the common ancestor of a set of species in evolutionary trees, see most recent common ancestor. For a common ancestor of all life forms, see last universal common ancestor."

In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself (so if v has a direct connection from w, w is the lowest common ancestor).


<a id="org57aa62f"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org88ee17e"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgcda200d"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org1baeb27"></a>

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


<a id="orgff65877"></a>

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


<a id="orgecc8ae4"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org901d2b8"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org88b3e63"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgf7087aa"></a>

### avoids need to check if .can


<a id="orge62e6b4"></a>

### (from a jonathan worthington code example)


<a id="org3b3f5e5"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org395ff2c"></a>

## the usual links:


<a id="org8ef25a4"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgece04bb"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org8f3c317"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org848c844"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org6d0d649"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org744847f"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org8c36c4b"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org5f1041f"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org3808bf9"></a>

## some stackoverflow questions


<a id="org61eec87"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="orga2bbb86"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orgb9563b4"></a>

## william michaels


<a id="org390a4d3"></a>

### answers shell questions with raku


<a id="org5417127"></a>

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


<a id="orgae46110"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org45b534b"></a>

## the future:


<a id="orga3191cd"></a>

### next meeting: September 12th, 2021


<a id="orgb821f8c"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgf536746"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
