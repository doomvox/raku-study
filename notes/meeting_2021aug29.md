- [meeting notes August 29, 2021](#org587af3b)
  - [the method .round, currently calls it's argument "scale"](#org85314e8)
    - [a better term might be "nearest"](#org7679d24)
  - [lowest common ancestor with raku classes](#org4e30ecb)
    - [<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>](#orgf446d38)
    - [Lowest common ancestor, at wikipedia:](#orgb32a43b)
    - [example code](#org26b214c)
  - [multiple dispatch and types](#org6f1316c)
    - [my standard complaint](#orgc0774d6)
    - [using multi-dispatch for "dualmap"](#org9b28456)
    - [dualmap status](#org0e59213)
  - [david christensen](#org7bd4c80)
  - [the maybe method (dot question mark operator: ".?")](#orgc5b1d77)
    - [documentation: "Safe call operator"](#org90318e4)
    - [avoids need to check if .can](#orgc93fcb1)
    - [(from a jonathan worthington code example)](#org66def9e)
    - [bruce gray argues it's to short-circuit long chains](#org1af745a)
  - [the usual links:](#orgd1cc2b7)
    - [meeting notes](#orgbb63b66)
    - [code examples:](#org17dd656)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org072f6ad)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgd1f5057)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org3d4fe30)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orga9e3022)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org54c397e)
    - [blog post by laurent<sub>r</sub>:](#org1687106)
  - [some stackoverflow questions](#orge6e8ac6)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org6ddbf90)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org09e6791)
  - [william michaels](#org7496a2f)
    - [answers shell questions with raku](#orgc026419)
    - [if you approve some of these, you might upvote:](#org173ab39)
    - [question: will shell people use a tool that needs to be installed first?](#org1154f73)
  - [the future:](#org7e9ab90)
    - [next meeting: September 12th, 2021](#org520518b)
    - [Bruce Gray promises an anti-Haskell spiel](#orgfa23f5b)
    - [jeff](#org1bb4ffc)


<a id="org587af3b"></a>

# meeting notes August 29, 2021


<a id="org85314e8"></a>

## the method .round, currently calls it's argument "scale"


<a id="org7679d24"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org4e30ecb"></a>

## lowest common ancestor with raku classes


<a id="orgf446d38"></a>

### <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgb32a43b"></a>

### Lowest common ancestor, at wikipedia:

1.  <https://en.wikipedia.org/wiki/Lowest_common_ancestor>

    "In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"

2.  so the definitions in use:

    1.  the root of a tree is at the top
    
    2.  a node can be it's own parent
    
        1.  I think of LCA as "genetic similarity": you are similar to yourself


<a id="org26b214c"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org6f1316c"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgc0774d6"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org9b28456"></a>

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


<a id="org0e59213"></a>

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


<a id="org7bd4c80"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgc5b1d77"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org90318e4"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgc93fcb1"></a>

### avoids need to check if .can


<a id="org66def9e"></a>

### (from a jonathan worthington code example)


<a id="org1af745a"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgd1cc2b7"></a>

## the usual links:


<a id="orgbb63b66"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org17dd656"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org072f6ad"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgd1f5057"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org3d4fe30"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orga9e3022"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org54c397e"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org1687106"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="orge6e8ac6"></a>

## some stackoverflow questions


<a id="org6ddbf90"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org09e6791"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org7496a2f"></a>

## william michaels


<a id="orgc026419"></a>

### answers shell questions with raku


<a id="org173ab39"></a>

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


<a id="org1154f73"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org7e9ab90"></a>

## the future:


<a id="org520518b"></a>

### next meeting: September 12th, 2021


<a id="orgfa23f5b"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org1bb4ffc"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
