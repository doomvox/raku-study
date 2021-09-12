- [meeting notes August 29, 2021](#org29d5464)
  - [the method .round, currently calls it's argument "scale"](#org009b40f)
    - [a better term might be "nearest"](#org43c6abc)
  - [lowest common ancestor with raku classes](#org955c7d9)
    - [<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>](#org7771576)
    - [Lowest common ancestor, at wikipedia:](#org68a7a57)
  - [multiple dispatch and types](#org7d5f752)
    - [my standard complaint](#org591394e)
    - [using multi-dispatch for "dualmap"](#org8d07a7b)
    - [dualmap status](#orgbe1871f)
  - [david christensen](#org8d64b56)
  - [the maybe method (dot question mark operator: ".?")](#org45c378d)
    - [documentation: "Safe call operator"](#org2ad274f)
    - [avoids need to check if .can](#org1e51d94)
    - [(from a jonathan worthington code example)](#org58cefdd)
    - [bruce gray argues it's to short-circuit long chains](#orgd57a45e)
  - [the usual links:](#org9d14a20)
    - [meeting notes](#org3847678)
    - [code examples:](#org2b17777)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org1106da7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgfdc3af3)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgebaf031)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org564016b)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgbb1ed17)
    - [blog post by laurent<sub>r</sub>:](#orgbf83329)
  - [some stackoverflow questions](#orgfb93c5b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#orgff6aaaa)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org3756488)
  - [william michaels](#orgeda261f)
    - [answers shell questions with raku](#org3f368b9)
    - [if you approve some of these, you might upvote:](#org34e85a0)
    - [question: will shell people use a tool that needs to be installed first?](#org278f8fd)
  - [the future:](#org3635439)
    - [next meeting: September 12th, 2021](#org2abfb34)
    - [Bruce Gray promises an anti-Haskell spiel](#orgcefe6db)
    - [jeff](#orgda7aca1)


<a id="org29d5464"></a>

# meeting notes August 29, 2021


<a id="org009b40f"></a>

## the method .round, currently calls it's argument "scale"


<a id="org43c6abc"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org955c7d9"></a>

## lowest common ancestor with raku classes


<a id="org7771576"></a>

### <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org68a7a57"></a>

### Lowest common ancestor, at wikipedia:

1.  <https://en.wikipedia.org/wiki/Lowest_common_ancestor>

    "In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"

2.  so the definitions in use:

    1.  the root of a tree is at the top
    
    2.  a node can be it's own parent
    
        1.  LCA is like "genetic similarity": you are similar to yourself

3.  example code

    <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org7d5f752"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org591394e"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org8d07a7b"></a>

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


<a id="orgbe1871f"></a>

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


<a id="org8d64b56"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org45c378d"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org2ad274f"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org1e51d94"></a>

### avoids need to check if .can


<a id="org58cefdd"></a>

### (from a jonathan worthington code example)


<a id="orgd57a45e"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org9d14a20"></a>

## the usual links:


<a id="org3847678"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org2b17777"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org1106da7"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgfdc3af3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgebaf031"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org564016b"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgbb1ed17"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgbf83329"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="orgfb93c5b"></a>

## some stackoverflow questions


<a id="orgff6aaaa"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org3756488"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orgeda261f"></a>

## william michaels


<a id="org3f368b9"></a>

### answers shell questions with raku


<a id="org34e85a0"></a>

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


<a id="org278f8fd"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org3635439"></a>

## the future:


<a id="org2abfb34"></a>

### next meeting: September 12th, 2021


<a id="orgcefe6db"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgda7aca1"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
