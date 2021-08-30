- [meeting notes August 29, 2021](#org4f62dbb)
  - [david christensen](#org1910b73)
  - [the round method, currently calls it's argument "scale"](#org5919a9a)
    - [the argument to round might be called "nearest"](#org5bfaa95)
    - [lowest common ancestor with raku classes](#org3a32deb)
  - [multiple dispatch](#orgd620c3e)
    - [my standard complaint](#orgb9a68b6)
    - [using multi-dispatch for "dualmap"](#org6b7356c)
    - [dualmap status](#org22b5081)
  - [the maybe method (dot question mark operator: ".?")](#orgc6c48ba)
    - [documentation: Safe call operator](#orgbf28b84)
    - [avoids need to check if .can](#org3d5f98d)
    - [(from a jonathan worthington code example)](#org2d75775)
    - [bruce gray argues it's to short-circuit long chains](#org9edc002)
  - [the usual links:](#orgae0ffab)
    - [meeting notes](#org04628b1)
    - [code examples:](#org79c81ed)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgf863394)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgcec0ca3)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgc61e4f9)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org454b5bb)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org8c54bc5)
  - [william michaels](#orgd1cf430)
    - [answers shell questions with raku](#org9935579)
    - [if you approve some of these, you might upvote:](#orgc1f0e04)
  - [the future:](#org8408095)
    - [next meeting: September 12th, 2021](#org1ec7312)
    - [Bruce Gray promises an anti-Haskell spiel](#org1b31e39)
    - [jeff](#org064021e)


<a id="org4f62dbb"></a>

# meeting notes August 29, 2021


<a id="org1910b73"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk>


<a id="org5919a9a"></a>

## the round method, currently calls it's argument "scale"


<a id="org5bfaa95"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org3a32deb"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgd620c3e"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgb9a68b6"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org6b7356c"></a>

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


<a id="org22b5081"></a>

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


<a id="orgc6c48ba"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgbf28b84"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org3d5f98d"></a>

### avoids need to check if .can


<a id="org2d75775"></a>

### (from a jonathan worthington code example)


<a id="org9edc002"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgae0ffab"></a>

## the usual links:


<a id="org04628b1"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org79c81ed"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgf863394"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgcec0ca3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgc61e4f9"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org454b5bb"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org8c54bc5"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgd1cf430"></a>

## william michaels


<a id="org9935579"></a>

### answers shell questions with raku


<a id="orgc1f0e04"></a>

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


<a id="org8408095"></a>

## the future:


<a id="org1ec7312"></a>

### next meeting: September 12th, 2021


<a id="org1b31e39"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org064021e"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
