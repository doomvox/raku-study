- [meeting notes August 29, 2021](#orgaa4d6f6)
  - [david christensen](#orgd5197fc)
  - [the round method, currently calls it's argument "scale"](#org5624eec)
    - [the argument to round might be called "nearest"](#org258b906)
    - [lowest common ancestor with raku classes](#org9ad7de0)
  - [multiple dispatch](#org1a0092c)
    - [standard complaint](#org4400365)
    - [using multi-dispatch for "dualmap"](#org1a8503d)
    - [dualmap status](#orga9f4170)
  - [the maybe method (dot question mark operator: ".?")](#org0bae57e)
    - [Safe call operator](#org7c6f718)
    - [avoids need to check if .can](#org28b6c6d)
    - [(from a jonathan worthington code example)](#orgbf3a585)
    - [bruce gray argues it's to short-circuit long chains](#org53f4ed2)
  - [the usual links:](#orgf0adf55)
    - [meeting notes](#org0ff4b77)
    - [code examples:](#orgdcf7625)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgd747095)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org0ae1b34)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgb0b07b4)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge928f13)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orga82e0a0)
  - [william michaels](#org8504a48)
    - [answers shell questions with raku](#org32f755a)
    - [if you approve some of these, you might upvote:](#org4857afd)
  - [the future:](#org2a72651)
    - [next meeting: September 12th, 2021](#org16c1ba4)
    - [Bruce Gray promises an anti-Haskell spiel](#org52fb0c9)
    - [jeff](#org2ba5ff6)


<a id="orgaa4d6f6"></a>

# meeting notes August 29, 2021


<a id="orgd5197fc"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org5624eec"></a>

## the round method, currently calls it's argument "scale"


<a id="org258b906"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org9ad7de0"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org1a0092c"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org4400365"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org1a8503d"></a>

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


<a id="orga9f4170"></a>

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


<a id="org0bae57e"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org7c6f718"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org28b6c6d"></a>

### avoids need to check if .can


<a id="orgbf3a585"></a>

### (from a jonathan worthington code example)


<a id="org53f4ed2"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgf0adf55"></a>

## the usual links:


<a id="org0ff4b77"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgdcf7625"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgd747095"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org0ae1b34"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgb0b07b4"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orge928f13"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orga82e0a0"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org8504a48"></a>

## william michaels


<a id="org32f755a"></a>

### answers shell questions with raku


<a id="org4857afd"></a>

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


<a id="org2a72651"></a>

## the future:


<a id="org16c1ba4"></a>

### next meeting: September 12th, 2021


<a id="org52fb0c9"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org2ba5ff6"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
