- [meeting notes August 29, 2021](#orgbea0316)
  - [the method .round, currently calls it's argument "scale"](#org984df30)
    - [a better term might be "nearest"](#org1fd09c8)
  - [lowest common ancestor with raku classes](#orgc7136a6)
    - [Lowest common ancestor, at wikipedia:](#orgd036eb7)
    - [example code](#org69e773c)
  - [multiple dispatch and types](#orga0e4481)
    - [my standard complaint](#orgc6cfde4)
    - [using multi-dispatch for "dualmap"](#org4a86f39)
    - [dualmap status](#org0bbd38a)
  - [david christensen](#org9c21de9)
  - [the maybe method (dot question mark operator: ".?")](#org5f9f91f)
    - [documentation: "Safe call operator"](#orgb3237cd)
    - [avoids need to check if .can](#orgdeb4dbe)
    - [(from a jonathan worthington code example)](#orgb73b633)
    - [bruce gray argues it's to short-circuit long chains](#org349eba7)
  - [the usual links:](#org81c65c6)
    - [meeting notes](#orgcce1e60)
    - [code examples:](#org81918eb)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org85cd055)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orga827c7c)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orga08a99c)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org41a1abb)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orge682a1e)
    - [blog post by laurent<sub>r</sub>:](#orgdfd826d)
  - [some stackoverflow questions](#org1a7d022)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org1b8c360)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org6188477)
  - [william michaels](#org468a6f8)
    - [answers shell questions with raku](#org9e7f987)
    - [if you approve some of these, you might upvote:](#orge6b4278)
    - [question: will shell people use a tool that needs to be installed first?](#org77a7134)
  - [the future:](#orgbc54ea4)
    - [next meeting: September 12th, 2021](#org2569fc6)
    - [Bruce Gray promises an anti-Haskell spiel](#orgc06c7c1)
    - [jeff](#org302d147)


<a id="orgbea0316"></a>

# meeting notes August 29, 2021


<a id="org984df30"></a>

## the method .round, currently calls it's argument "scale"


<a id="org1fd09c8"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="orgc7136a6"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgd036eb7"></a>

### Lowest common ancestor, at wikipedia:

"In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"

1.  <https://en.wikipedia.org/wiki/Lowest_common_ancestor>


<a id="org69e773c"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orga0e4481"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgc6cfde4"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org4a86f39"></a>

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


<a id="org0bbd38a"></a>

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


<a id="org9c21de9"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org5f9f91f"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgb3237cd"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgdeb4dbe"></a>

### avoids need to check if .can


<a id="orgb73b633"></a>

### (from a jonathan worthington code example)


<a id="org349eba7"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org81c65c6"></a>

## the usual links:


<a id="orgcce1e60"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org81918eb"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org85cd055"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orga827c7c"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orga08a99c"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org41a1abb"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orge682a1e"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgdfd826d"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org1a7d022"></a>

## some stackoverflow questions


<a id="org1b8c360"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org6188477"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org468a6f8"></a>

## william michaels


<a id="org9e7f987"></a>

### answers shell questions with raku


<a id="orge6b4278"></a>

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


<a id="org77a7134"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="orgbc54ea4"></a>

## the future:


<a id="org2569fc6"></a>

### next meeting: September 12th, 2021


<a id="orgc06c7c1"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org302d147"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
