- [meeting notes August 29, 2021](#orgd611b59)
  - [david christensen](#org175daf0)
  - [the round method, currently calls it's argument "scale"](#org87ebb0e)
    - [the argument to round might be called "nearest"](#org7106f96)
    - [lowest common ancestor with raku classes](#orgbdf9b23)
  - [multiple dispatch](#orgd2b36fb)
    - [standard complaint](#org1ea7949)
    - [using multi-dispatch for "dualmap"](#org48ec608)
    - [dualmap status](#org54f41ee)
  - [the maybe method (dot question mark operator: ".?")](#orgcbb3911)
    - [documentation: Safe call operator](#orgf02fb48)
    - [avoids need to check if .can](#org39888a9)
    - [(from a jonathan worthington code example)](#org0633591)
    - [bruce gray argues it's to short-circuit long chains](#orge8ecec9)
  - [the usual links:](#org805e50f)
    - [meeting notes](#org7506db0)
    - [code examples:](#org726b652)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org1fda944)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orga88d038)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgb86c7a5)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org486af01)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org53909c4)
  - [william michaels](#orgda2385c)
    - [answers shell questions with raku](#org813ebbd)
    - [if you approve some of these, you might upvote:](#org0f2e981)
  - [the future:](#org28bdf72)
    - [next meeting: September 12th, 2021](#orgc44e682)
    - [Bruce Gray promises an anti-Haskell spiel](#orgc991ad6)
    - [jeff](#org0f57f47)


<a id="orgd611b59"></a>

# meeting notes August 29, 2021


<a id="org175daf0"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org87ebb0e"></a>

## the round method, currently calls it's argument "scale"


<a id="org7106f96"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orgbdf9b23"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgd2b36fb"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org1ea7949"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org48ec608"></a>

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


<a id="org54f41ee"></a>

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
    
    3.  still may need more thought for Raku
    
        1.  maybe: any number of code blocks associated with arbitrary types
        
            1.  do **this** with a leaf node that looks like **that**
        
        2.  consider the case of set operations


<a id="orgcbb3911"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgf02fb48"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org39888a9"></a>

### avoids need to check if .can


<a id="org0633591"></a>

### (from a jonathan worthington code example)


<a id="orge8ecec9"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org805e50f"></a>

## the usual links:


<a id="org7506db0"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org726b652"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org1fda944"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orga88d038"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgb86c7a5"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org486af01"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org53909c4"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgda2385c"></a>

## william michaels


<a id="org813ebbd"></a>

### answers shell questions with raku


<a id="org0f2e981"></a>

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


<a id="org28bdf72"></a>

## the future:


<a id="orgc44e682"></a>

### next meeting: September 12th, 2021


<a id="orgc991ad6"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org0f57f47"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
