- [meeting notes August 29, 2021](#org6b2093b)
  - [the method .round, currently calls it's argument "scale"](#orgb57a7db)
    - [a better term might be "nearest"](#org1d7ea7f)
  - [lowest common ancestor with raku classes](#org8070d49)
    - [example code](#org2277403)
  - [multiple dispatch and types](#orge362be3)
    - [my standard complaint](#org43cbdd2)
    - [using multi-dispatch for "dualmap"](#org107872f)
    - [dualmap status](#orga5435fa)
  - [david christensen](#org65e132f)
  - [the maybe method (dot question mark operator: ".?")](#org96dcc28)
    - [documentation: "Safe call operator"](#org970fdf3)
    - [avoids need to check if .can](#org55ad93e)
    - [(from a jonathan worthington code example)](#org555555c)
    - [bruce gray argues it's to short-circuit long chains](#org6e7ee32)
  - [the usual links:](#org9e25bf1)
    - [meeting notes](#org171e9e3)
    - [code examples:](#org072ae63)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org838341b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org135dcb3)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org013648b)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org6f324ab)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgefe744b)
    - [blog post by laurent<sub>r</sub>:](#org65d5e0f)
  - [some stackoverflow questions](#org2addb3f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>](#orgbb05964)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>](#orgd38ede6)
  - [william michaels](#org6a00e49)
    - [answers shell questions with raku](#org1a207b6)
    - [if you approve some of these, you might upvote:](#orgb06bcc9)
    - [question: will shell people use a tool that needs to be installed first?](#org91fb69d)
  - [the future:](#orgc82c14f)
    - [next meeting: September 12th, 2021](#org66c5fa7)
    - [Bruce Gray promises an anti-Haskell spiel](#orgbca9bb9)
    - [jeff](#orgdd88b89)


<a id="org6b2093b"></a>

# meeting notes August 29, 2021


<a id="orgb57a7db"></a>

## the method .round, currently calls it's argument "scale"


<a id="org1d7ea7f"></a>

### a better term might be "nearest"

"round off to the nearest"


<a id="org8070d49"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org2277403"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orge362be3"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org43cbdd2"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org107872f"></a>

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


<a id="orga5435fa"></a>

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


<a id="org65e132f"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org96dcc28"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org970fdf3"></a>

### documentation: "Safe call operator"

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org55ad93e"></a>

### avoids need to check if .can


<a id="org555555c"></a>

### (from a jonathan worthington code example)


<a id="org6e7ee32"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org9e25bf1"></a>

## the usual links:


<a id="org171e9e3"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org072ae63"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org838341b"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org135dcb3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org013648b"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org6f324ab"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgefe744b"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org65d5e0f"></a>

### blog post by laurent<sub>r</sub>:

<http://blogs.perl.org/users/laurent_r/2021/08/perl-weekly-challenge-127-disjoint-sets-and-conflict-intervals.html>


<a id="org2addb3f"></a>

## some stackoverflow questions


<a id="orgbb05964"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/interpolation_games.raku>


<a id="orgd38ede6"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/so_question_order_of_operations_with_R_and_pop.raku>


<a id="org6a00e49"></a>

## william michaels


<a id="org1a207b6"></a>

### answers shell questions with raku


<a id="orgb06bcc9"></a>

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


<a id="org91fb69d"></a>

### question: will shell people use a tool that needs to be installed first?


<a id="orgc82c14f"></a>

## the future:


<a id="org66c5fa7"></a>

### next meeting: September 12th, 2021


<a id="orgbca9bb9"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgdd88b89"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
