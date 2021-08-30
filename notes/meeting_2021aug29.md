- [meeting notes August 29, 2021](#org7c76b5a)
  - [david christensen](#org5eb5435)
  - [the method .round, currently calls it's argument "scale"](#org9632a49)
    - [that might be called "nearest"](#orga081767)
  - [lowest common ancestor with raku classes](#orgfe85af6)
    - [example code](#org00582a6)
  - [multiple dispatch](#orgb4fdf44)
    - [my standard complaint](#org219d0af)
    - [using multi-dispatch for "dualmap"](#org0edcd14)
    - [dualmap status](#orgc802cfc)
  - [the maybe method (dot question mark operator: ".?")](#org7b81b0d)
    - [documentation: Safe call operator](#org46285ae)
    - [avoids need to check if .can](#org040de86)
    - [(from a jonathan worthington code example)](#orga75c8e4)
    - [bruce gray argues it's to short-circuit long chains](#org3d5a0df)
  - [the usual links:](#orge5d759f)
    - [meeting notes](#orgc4f706e)
    - [code examples:](#org6b8f736)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org4c17c8e)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org7147173)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgfd47957)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge8b0889)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orge4dfbe0)
  - [william michaels](#orge6d48bb)
    - [answers shell questions with raku](#orgb6c7529)
    - [if you approve some of these, you might upvote:](#orgb9ff7eb)
  - [the future:](#orgd2d5d81)
    - [next meeting: September 12th, 2021](#org7bf2fb5)
    - [Bruce Gray promises an anti-Haskell spiel](#org74fc62d)
    - [jeff](#org7364b9d)


<a id="org7c76b5a"></a>

# meeting notes August 29, 2021


<a id="org5eb5435"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org9632a49"></a>

## the method .round, currently calls it's argument "scale"


<a id="orga081767"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="orgfe85af6"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org00582a6"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgb4fdf44"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org219d0af"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org0edcd14"></a>

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
    
        1.  but the "is default" feature helpsg


<a id="orgc802cfc"></a>

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


<a id="org7b81b0d"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org46285ae"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org040de86"></a>

### avoids need to check if .can


<a id="orga75c8e4"></a>

### (from a jonathan worthington code example)


<a id="org3d5a0df"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orge5d759f"></a>

## the usual links:


<a id="orgc4f706e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org6b8f736"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org4c17c8e"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org7147173"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgfd47957"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orge8b0889"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orge4dfbe0"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orge6d48bb"></a>

## william michaels


<a id="orgb6c7529"></a>

### answers shell questions with raku


<a id="orgb9ff7eb"></a>

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


<a id="orgd2d5d81"></a>

## the future:


<a id="org7bf2fb5"></a>

### next meeting: September 12th, 2021


<a id="org74fc62d"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org7364b9d"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
