- [meeting notes August 29, 2021](#org6f322f4)
  - [david christensen](#orgd38fac8)
  - [the round method, currently calls it's argument "scale"](#org4b7b328)
    - [the argument to round might be called "nearest"](#orgb12d9fa)
    - [lowest common ancestor with raku classes](#orgfd4a3b4)
  - [multiple dispatch](#org0d121f8)
    - [standard complaint](#org4d09cf5)
    - [using multi-dispatch for "dualmap"](#orgb960380)
    - [dualmap status](#org39d0325)
  - [the maybe method (dot question mark operator: ".?")](#org55f9339)
    - [Safe call operator](#orgae6bf1a)
  - [the usual links:](#orgfe5ca8b)
    - [meeting notes](#orgfd35dc5)
    - [code examples:](#orgcd94acf)
  - [Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org1558f9c)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org369274f)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orga5246a0)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org311460b)
  - [william michaels](#org6a072dd)
    - [answers shell questions with raku](#org9c8b0f9)
    - [if you approve some of these, you might upvote:](#org223f19a)
  - [the future:](#orgaa1552f)
    - [next meeting: September 12th, 2021](#orgac98fdd)
    - [Bruce Gray promises an anti-Haskell spiel](#org1a631be)
    - [jeff](#orge222674)


<a id="org6f322f4"></a>

# meeting notes August 29, 2021


<a id="orgd38fac8"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org4b7b328"></a>

## the round method, currently calls it's argument "scale"


<a id="orgb12d9fa"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orgfd4a3b4"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org0d121f8"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org4d09cf5"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgb960380"></a>

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


<a id="org39d0325"></a>

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


<a id="org55f9339"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgae6bf1a"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="orgfe5ca8b"></a>

## the usual links:


<a id="orgfd35dc5"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgcd94acf"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org1558f9c"></a>

## Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org369274f"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orga5246a0"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org311460b"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org6a072dd"></a>

## william michaels


<a id="org9c8b0f9"></a>

### answers shell questions with raku


<a id="org223f19a"></a>

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


<a id="orgaa1552f"></a>

## the future:


<a id="orgac98fdd"></a>

### next meeting: September 12th, 2021


<a id="org1a631be"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orge222674"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
