- [meeting notes August 29, 2021](#orga2df303)
  - [david christensen](#orga3513dc)
  - [the round method, currently calls it's argument "scale"](#org62fcf89)
    - [the argument to round might be called "nearest"](#orgb13b788)
    - [lowest common ancestor with raku classes](#orga8d6630)
  - [multiple dispatch](#orgd456ab0)
    - [my standard complaint](#orgcbee290)
    - [using multi-dispatch for "dualmap"](#org26c6b59)
    - [dualmap status](#org7a9e4d1)
  - [the maybe method (dot question mark operator: ".?")](#org2146a5c)
    - [documentation: Safe call operator](#org9ea650f)
    - [avoids need to check if .can](#org5479d65)
    - [(from a jonathan worthington code example)](#orgb17cdbb)
    - [bruce gray argues it's to short-circuit long chains](#orga340d7d)
  - [the usual links:](#org438d2e2)
    - [meeting notes](#org7e2df8c)
    - [code examples:](#org1791d50)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org42a040c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org569db75)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgfac853e)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org6a50857)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org200ccaf)
  - [william michaels](#org8393dcc)
    - [answers shell questions with raku](#org1c1eb03)
    - [if you approve some of these, you might upvote:](#orgff72317)
  - [the future:](#org34c26bd)
    - [next meeting: September 12th, 2021](#org10d0a0a)
    - [Bruce Gray promises an anti-Haskell spiel](#org83e5dad)
    - [jeff](#orgc3501e9)


<a id="orga2df303"></a>

# meeting notes August 29, 2021


<a id="orga3513dc"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org62fcf89"></a>

## the round method, currently calls it's argument "scale"


<a id="orgb13b788"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orga8d6630"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgd456ab0"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgcbee290"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org26c6b59"></a>

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


<a id="org7a9e4d1"></a>

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


<a id="org2146a5c"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org9ea650f"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org5479d65"></a>

### avoids need to check if .can


<a id="orgb17cdbb"></a>

### (from a jonathan worthington code example)


<a id="orga340d7d"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org438d2e2"></a>

## the usual links:


<a id="org7e2df8c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org1791d50"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org42a040c"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org569db75"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgfac853e"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org6a50857"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org200ccaf"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org8393dcc"></a>

## william michaels


<a id="org1c1eb03"></a>

### answers shell questions with raku


<a id="orgff72317"></a>

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


<a id="org34c26bd"></a>

## the future:


<a id="org10d0a0a"></a>

### next meeting: September 12th, 2021


<a id="org83e5dad"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgc3501e9"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
