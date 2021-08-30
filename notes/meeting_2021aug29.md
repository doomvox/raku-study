- [meeting notes August 29, 2021](#org0b84edd)
  - [the method .round, currently calls it's argument "scale"](#orgb9634e8)
    - [a better term might be "nearest"](#org8ab9040)
  - [lowest common ancestor with raku classes](#org0dc7324)
    - [<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>](#org594bb39)
    - [Lowest common ancestor, at wikipedia:](#org497e9b2)
    - [example code](#org13d07a8)
  - [multiple dispatch and types](#org8dc7d88)
    - [my standard complaint](#orgadd005a)
    - [using multi-dispatch for "dualmap"](#orgf3cbfac)
    - [dualmap status](#org63a5fc5)
  - [david christensen](#org20746c4)
  - [the maybe method (dot question mark operator: ".?")](#org506bc66)
    - [documentation: "Safe call operator"](#org984e0d0)
    - [avoids need to check if .can](#orgcd3f6c6)
    - [(from a jonathan worthington code example)](#org0537f5a)
    - [bruce gray argues it's to short-circuit long chains](#org7f19881)
  - [the usual links:](#orga9dbb45)
    - [meeting notes](#orgdd7fc28)
    - [code examples:](#org371f617)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org35541d5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgc5e2cee)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org57ca97a)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org0e750d7)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org58d0037)
    - [blog post by laurent<sub>r</sub>:](#org083b4de)
  - [some stackoverflow questions](#org117d4fa)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org6d06adc)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org9e92e11)
  - [william michaels](#orgea7ca6c)
    - [answers shell questions with raku](#org66a672c)
    - [if you approve some of these, you might upvote:](#orgaad07ac)
    - [question: will shell people use a tool that needs to be installed first?](#org6952e32)
  - [the future:](#orgde18e2a)
    - [next meeting: September 12th, 2021](#orga659cea)
    - [Bruce Gray promises an anti-Haskell spiel](#org3c40fdc)
    - [jeff](#orgf6f1818)


<a id="org0b84edd"></a>

# meeting notes August 29, 2021


<a id="orgb9634e8"></a>

## the method .round, currently calls it's argument "scale"


<a id="org8ab9040"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org0dc7324"></a>

## lowest common ancestor with raku classes


<a id="org594bb39"></a>

### <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org497e9b2"></a>

### Lowest common ancestor, at wikipedia:

"In graph theory and computer science, the lowest common ancestor (LCA) of two nodes v and w in a tree or directed acyclic graph (DAG) T is the lowest (i.e. deepest) node that has both v and w as descendants, where we define each node to be a descendant of itself"

1.  the definitions in use:

    1.  the root of a tree is at the top
    
    2.  a node can be it's own parent
    
        1.  I think of LCA as "genetic similarity": you are similar to yourself

2.  <https://en.wikipedia.org/wiki/Lowest_common_ancestor>


<a id="org13d07a8"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="org8dc7d88"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgadd005a"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgf3cbfac"></a>

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


<a id="org63a5fc5"></a>

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


<a id="org20746c4"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org506bc66"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org984e0d0"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgcd3f6c6"></a>

### avoids need to check if .can


<a id="org0537f5a"></a>

### (from a jonathan worthington code example)


<a id="org7f19881"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orga9dbb45"></a>

## the usual links:


<a id="orgdd7fc28"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org371f617"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org35541d5"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgc5e2cee"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org57ca97a"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org0e750d7"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org58d0037"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org083b4de"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org117d4fa"></a>

## some stackoverflow questions


<a id="org6d06adc"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org9e92e11"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orgea7ca6c"></a>

## william michaels


<a id="org66a672c"></a>

### answers shell questions with raku


<a id="orgaad07ac"></a>

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


<a id="org6952e32"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="orgde18e2a"></a>

## the future:


<a id="orga659cea"></a>

### next meeting: September 12th, 2021


<a id="org3c40fdc"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgf6f1818"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
