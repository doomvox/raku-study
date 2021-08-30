- [meeting notes August 29, 2021](#org2521672)
  - [david christensen](#org9fd7d5f)
  - [the round method, currently calls it's argument "scale"](#org758924f)
    - [the argument to round might be called "nearest"](#org7817882)
    - [lowest common ancestor with raku classes](#org522ffbe)
  - [multiple dispatch](#org490b510)
    - [standard complaint](#org7b5d029)
    - [using multi-dispatch for "dualmap"](#orge7e4fea)
    - [dualmap status](#orgee26a72)
  - [the maybe method (dot question mark operator: ".?")](#org500a31d)
    - [documentation: Safe call operator](#orgeb94775)
    - [avoids need to check if .can](#org6609588)
    - [(from a jonathan worthington code example)](#orgce15348)
    - [bruce gray argues it's to short-circuit long chains](#orgea4a8fa)
  - [the usual links:](#org0fa37d4)
    - [meeting notes](#org970c981)
    - [code examples:](#org28632a9)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgea84750)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgd81472e)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org727091f)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge85e7eb)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org8fe1d1d)
  - [william michaels](#orgeac0f78)
    - [answers shell questions with raku](#orgba9976c)
    - [if you approve some of these, you might upvote:](#org3a5d6ed)
  - [the future:](#orgddfe309)
    - [next meeting: September 12th, 2021](#org0ae9abf)
    - [Bruce Gray promises an anti-Haskell spiel](#orgb1ea3cc)
    - [jeff](#org128effa)


<a id="org2521672"></a>

# meeting notes August 29, 2021


<a id="org9fd7d5f"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org758924f"></a>

## the round method, currently calls it's argument "scale"


<a id="org7817882"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org522ffbe"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org490b510"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org7b5d029"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orge7e4fea"></a>

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


<a id="orgee26a72"></a>

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


<a id="org500a31d"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgeb94775"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org6609588"></a>

### avoids need to check if .can


<a id="orgce15348"></a>

### (from a jonathan worthington code example)


<a id="orgea4a8fa"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org0fa37d4"></a>

## the usual links:


<a id="org970c981"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org28632a9"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgea84750"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgd81472e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org727091f"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orge85e7eb"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org8fe1d1d"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgeac0f78"></a>

## william michaels


<a id="orgba9976c"></a>

### answers shell questions with raku


<a id="org3a5d6ed"></a>

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


<a id="orgddfe309"></a>

## the future:


<a id="org0ae9abf"></a>

### next meeting: September 12th, 2021


<a id="orgb1ea3cc"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org128effa"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
