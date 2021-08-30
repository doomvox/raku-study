- [meeting notes August 29, 2021](#org4b9c816)
  - [the method .round, currently calls it's argument "scale"](#orgccf1171)
    - [a better term might be "nearest"](#org257b3cc)
  - [lowest common ancestor with raku classes](#orgdd6eb6b)
    - [Lowest common ancestor, at wikipedia:](#org7a34269)
    - [example code](#orgec9e623)
  - [multiple dispatch and types](#orgcffe763)
    - [my standard complaint](#org5190595)
    - [using multi-dispatch for "dualmap"](#org6c1c482)
    - [dualmap status](#orge3e3c9d)
  - [david christensen](#org941518e)
  - [the maybe method (dot question mark operator: ".?")](#orgba69792)
    - [documentation: "Safe call operator"](#orgfa3a140)
    - [avoids need to check if .can](#org1b93ef4)
    - [(from a jonathan worthington code example)](#orgd1b5bca)
    - [bruce gray argues it's to short-circuit long chains](#org504923f)
  - [the usual links:](#org19f3d68)
    - [meeting notes](#org2449dde)
    - [code examples:](#org4c6a6c1)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgceba68e)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org14ec45f)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org738bdfe)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgb6b1f9b)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orga91481f)
    - [blog post by laurent<sub>r</sub>:](#org411ab58)
  - [some stackoverflow questions](#org3129566)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#orgec8ad09)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org4ae3821)
  - [william michaels](#orgdd37676)
    - [answers shell questions with raku](#org2373119)
    - [if you approve some of these, you might upvote:](#org4538884)
    - [question: will shell people use a tool that needs to be installed first?](#orga7cfec0)
  - [the future:](#org6218052)
    - [next meeting: September 12th, 2021](#orgc6aad70)
    - [Bruce Gray promises an anti-Haskell spiel](#orgd5b1c8a)
    - [jeff](#org4dbe5a2)


<a id="org4b9c816"></a>

# meeting notes August 29, 2021


<a id="orgccf1171"></a>

## the method .round, currently calls it's argument "scale"


<a id="org257b3cc"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="orgdd6eb6b"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org7a34269"></a>

### Lowest common ancestor, at wikipedia:

"This article is about lowest common ancestors in graph theory and computer science. For the common ancestor of a set of species in evolutionary trees, see most recent common ancestor. For a common ancestor of all life forms, see last universal common ancestor. In this tree, the lowest common ancestor of the nodes x and y is marked in dark green. Other common ancestors are shown in light green."

In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself (so if v has a direct connection from w, w is the lowest common ancestor).


<a id="orgec9e623"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgcffe763"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org5190595"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org6c1c482"></a>

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


<a id="orge3e3c9d"></a>

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


<a id="org941518e"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgba69792"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgfa3a140"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org1b93ef4"></a>

### avoids need to check if .can


<a id="orgd1b5bca"></a>

### (from a jonathan worthington code example)


<a id="org504923f"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org19f3d68"></a>

## the usual links:


<a id="org2449dde"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org4c6a6c1"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgceba68e"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org14ec45f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org738bdfe"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgb6b1f9b"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orga91481f"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org411ab58"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org3129566"></a>

## some stackoverflow questions


<a id="orgec8ad09"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org4ae3821"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orgdd37676"></a>

## william michaels


<a id="org2373119"></a>

### answers shell questions with raku


<a id="org4538884"></a>

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


<a id="orga7cfec0"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org6218052"></a>

## the future:


<a id="orgc6aad70"></a>

### next meeting: September 12th, 2021


<a id="orgd5b1c8a"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org4dbe5a2"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
