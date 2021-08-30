- [meeting notes August 29, 2021](#orgd585674)
  - [the method .round, currently calls it's argument "scale"](#org07abf09)
    - [a better term might be "nearest"](#org3cccdf1)
  - [lowest common ancestor with raku classes](#org17a5253)
    - [example code](#org1ccc715)
  - [multiple dispatch and types](#orgce41d51)
    - [my standard complaint](#org04c6d93)
    - [using multi-dispatch for "dualmap"](#orgc3feb98)
    - [dualmap status](#orgd77e389)
  - [david christensen](#orgfb11814)
  - [the maybe method (dot question mark operator: ".?")](#orgdb6f9a1)
    - [documentation: Safe call operator](#org546d70c)
    - [avoids need to check if .can](#org0ce55ea)
    - [(from a jonathan worthington code example)](#orgf0b27cc)
    - [bruce gray argues it's to short-circuit long chains](#orgebbe493)
  - [the usual links:](#orgb0ee23f)
    - [meeting notes](#org11491f9)
    - [code examples:](#orgbc8e1d1)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgd357af8)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgccb6ae8)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgb319f32)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgaa28844)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgda2afaa)
    - [blog post by laurent<sub>r</sub>:](#orgac05261)
  - [some stackoverflow questions](#org0d545bf)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#org425fef7)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#orge6b4b2c)
  - [william michaels](#orga7a099a)
    - [answers shell questions with raku](#orgdf1c1e4)
    - [if you approve some of these, you might upvote:](#orgc7a66f5)
    - [a question: will shell people use tools that need to be installed first.](#org652bd3a)
  - [the future:](#org1c6b13b)
    - [next meeting: September 12th, 2021](#org7882ef5)
    - [Bruce Gray promises an anti-Haskell spiel](#org755fa97)
    - [jeff](#org1538f4c)


<a id="orgd585674"></a>

# meeting notes August 29, 2021


<a id="org07abf09"></a>

## the method .round, currently calls it's argument "scale"


<a id="org3cccdf1"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org17a5253"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org1ccc715"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgce41d51"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org04c6d93"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgc3feb98"></a>

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


<a id="orgd77e389"></a>

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


<a id="orgfb11814"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgdb6f9a1"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org546d70c"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org0ce55ea"></a>

### avoids need to check if .can


<a id="orgf0b27cc"></a>

### (from a jonathan worthington code example)


<a id="orgebbe493"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgb0ee23f"></a>

## the usual links:


<a id="org11491f9"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgbc8e1d1"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgd357af8"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgccb6ae8"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgb319f32"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgaa28844"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgda2afaa"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgac05261"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org0d545bf"></a>

## some stackoverflow questions


<a id="org425fef7"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="orge6b4b2c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="orga7a099a"></a>

## william michaels


<a id="orgdf1c1e4"></a>

### answers shell questions with raku


<a id="orgc7a66f5"></a>

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


<a id="org652bd3a"></a>

### a question: will shell people use tools that need to be installed first.


<a id="org1c6b13b"></a>

## the future:


<a id="org7882ef5"></a>

### next meeting: September 12th, 2021


<a id="org755fa97"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org1538f4c"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
