- [meeting notes August 29, 2021](#orgcffa5ee)
  - [the method .round, currently calls it's argument "scale"](#org39f45c2)
    - [a better term might be "nearest"](#org7bee424)
  - [lowest common ancestor with raku classes](#org2a22bd6)
    - [example code](#org1dbd6c8)
  - [multiple dispatch and types](#orgc0be49a)
    - [my standard complaint](#org82c1417)
    - [using multi-dispatch for "dualmap"](#orgf6d4814)
    - [dualmap status](#org3157252)
  - [david christensen](#orgfb0596b)
  - [the maybe method (dot question mark operator: ".?")](#orgd6f0e58)
    - [documentation: Safe call operator](#org591aef7)
    - [avoids need to check if .can](#org8fd2bd6)
    - [(from a jonathan worthington code example)](#org4a9bd7c)
    - [bruce gray argues it's to short-circuit long chains](#orge4daed7)
  - [the usual links:](#org5d4d062)
    - [meeting notes](#orgd2690a5)
    - [code examples:](#org780015f)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org3c225f1)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org8d0fdb1)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgcaa088c)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgef7d719)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgc980bb9)
    - [blog post by laurent<sub>r</sub>:](#org1167b4a)
  - [some stackoverflow questions](#org7d82561)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org0ae9e37)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#org6613acf)
  - [william michaels](#orged4f9da)
    - [answers shell questions with raku](#orgcb3c363)
    - [if you approve some of these, you might upvote:](#org4a50a62)
    - [question: will shell people use a tool that needs to be installed first?](#org4a101a3)
  - [the future:](#org3d7a138)
    - [next meeting: September 12th, 2021](#org7981c30)
    - [Bruce Gray promises an anti-Haskell spiel](#org0088c19)
    - [jeff](#org1c772d8)


<a id="orgcffa5ee"></a>

# meeting notes August 29, 2021


<a id="org39f45c2"></a>

## the method .round, currently calls it's argument "scale"


<a id="org7bee424"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org2a22bd6"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org1dbd6c8"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgc0be49a"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org82c1417"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgf6d4814"></a>

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


<a id="org3157252"></a>

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


<a id="orgfb0596b"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgd6f0e58"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org591aef7"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org8fd2bd6"></a>

### avoids need to check if .can


<a id="org4a9bd7c"></a>

### (from a jonathan worthington code example)


<a id="orge4daed7"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org5d4d062"></a>

## the usual links:


<a id="orgd2690a5"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org780015f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org3c225f1"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org8d0fdb1"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgcaa088c"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgef7d719"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgc980bb9"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org1167b4a"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org7d82561"></a>

## some stackoverflow questions


<a id="org0ae9e37"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="org6613acf"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orged4f9da"></a>

## william michaels


<a id="orgcb3c363"></a>

### answers shell questions with raku


<a id="org4a50a62"></a>

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


<a id="org4a101a3"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="org3d7a138"></a>

## the future:


<a id="org7981c30"></a>

### next meeting: September 12th, 2021


<a id="org0088c19"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org1c772d8"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
