- [meeting notes August 29, 2021](#org9a2b145)
  - [david christensen](#org4f74024)
  - [the round method, currently calls it's argument "scale"](#org5f9acf9)
    - [the argument to round might be called "nearest"](#org8644d08)
    - [lowest common ancestor with raku classes](#orga7da86e)
  - [multiple dispatch](#orgb6962eb)
    - [my standard complaint](#orgcd5c251)
    - [using multi-dispatch for "dualmap"](#orgd44ea58)
    - [dualmap status](#orgd9260d1)
  - [the maybe method (dot question mark operator: ".?")](#org4cb9daf)
    - [documentation: Safe call operator](#orge97bfc2)
    - [avoids need to check if .can](#org07a8676)
    - [(from a jonathan worthington code example)](#orgcc19907)
    - [bruce gray argues it's to short-circuit long chains](#org593eaf2)
  - [the usual links:](#orgaac0dde)
    - [meeting notes](#org8c1ac07)
    - [code examples:](#org3cc3c72)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgc9334f2)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgf03975e)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org8178831)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org7e05bba)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org2655709)
  - [william michaels](#org4f7d14e)
    - [answers shell questions with raku](#orgaf0a3da)
    - [if you approve some of these, you might upvote:](#orgb2b95ae)
  - [the future:](#org450e28a)
    - [next meeting: September 12th, 2021](#org8dbf8bc)
    - [Bruce Gray promises an anti-Haskell spiel](#org7c29d5c)
    - [jeff](#org8c03157)


<a id="org9a2b145"></a>

# meeting notes August 29, 2021


<a id="org4f74024"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org5f9acf9"></a>

## the round method, currently calls it's argument "scale"


<a id="org8644d08"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orga7da86e"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgb6962eb"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgcd5c251"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgd44ea58"></a>

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


<a id="orgd9260d1"></a>

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


<a id="org4cb9daf"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orge97bfc2"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org07a8676"></a>

### avoids need to check if .can


<a id="orgcc19907"></a>

### (from a jonathan worthington code example)


<a id="org593eaf2"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orgaac0dde"></a>

## the usual links:


<a id="org8c1ac07"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org3cc3c72"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgc9334f2"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgf03975e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org8178831"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org7e05bba"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org2655709"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org4f7d14e"></a>

## william michaels


<a id="orgaf0a3da"></a>

### answers shell questions with raku


<a id="orgb2b95ae"></a>

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


<a id="org450e28a"></a>

## the future:


<a id="org8dbf8bc"></a>

### next meeting: September 12th, 2021


<a id="org7c29d5c"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org8c03157"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
