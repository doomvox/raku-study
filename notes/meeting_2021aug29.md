- [meeting notes August 29, 2021](#org1c839a8)
  - [hidden agenda](#org2b04527)
    - [david christensen](#orgeeb964d)
    - [jeff](#org9b3bf1c)
  - [the round method, currently calls it's argument "scale"](#orgbd21ba3)
    - [the argument to round might be called "nearest"](#org18316b5)
    - [lowest common ancestor with raku classes](#orga7f5296)
  - [multiple dispatch](#org9c40b3e)
    - [standard complaint](#org1350acd)
    - [using multi-dispatch for "dualmap"](#orge8ccf2e)
    - [dualmap status](#org194168d)
  - [the maybe method (dot question mark operator: ".?")](#org55fddfe)
    - [Safe call operator](#orga57ef27)
  - [the usual links:](#org264765c)
    - [meeting notes](#orgba2f059)
    - [code examples:](#orgae3c0f4)
  - [Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org506c77e)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org2c9cda6)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orge6503f3)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgc2ba722)
  - [William Michaels](#org1cda009)
    - [<https://unix.stackexchange.com/a/654444>](#orge07f4ed)
    - [<https://unix.stackexchange.com/a/655217>](#org5ff92e4)
    - [<https://unix.stackexchange.com/a/655944>](#org27d7da5)
    - [<https://unix.stackexchange.com/a/658564>](#org023e755)
    - [<https://unix.stackexchange.com/a/658618>](#orgcc1db1c)
    - [<https://unix.stackexchange.com/a/658666>](#org256ca0d)
    - [<https://unix.stackexchange.com/a/658703>](#org3c45c39)
    - [<https://unix.stackexchange.com/a/658716>](#org3394b9d)
    - [<https://unix.stackexchange.com/a/664929>](#orgaa41299)
  - [Bruce Gray promises an anti-Haskell spiel in the future&#x2026;](#orgb4e4d22)


<a id="org1c839a8"></a>

# meeting notes August 29, 2021


<a id="org2b04527"></a>

## hidden agenda


<a id="orgeeb964d"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org9b3bf1c"></a>

### jeff

1.  pod question?


<a id="orgbd21ba3"></a>

## the round method, currently calls it's argument "scale"


<a id="org18316b5"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orga7f5296"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org9c40b3e"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org1350acd"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orge8ccf2e"></a>

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


<a id="org194168d"></a>

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


<a id="org55fddfe"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orga57ef27"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="org264765c"></a>

## the usual links:


<a id="orgba2f059"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgae3c0f4"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org506c77e"></a>

## Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org2c9cda6"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orge6503f3"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgc2ba722"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org1cda009"></a>

## William Michaels


<a id="orge07f4ed"></a>

### <https://unix.stackexchange.com/a/654444>


<a id="org5ff92e4"></a>

### <https://unix.stackexchange.com/a/655217>


<a id="org27d7da5"></a>

### <https://unix.stackexchange.com/a/655944>


<a id="org023e755"></a>

### <https://unix.stackexchange.com/a/658564>


<a id="orgcc1db1c"></a>

### <https://unix.stackexchange.com/a/658618>


<a id="org256ca0d"></a>

### <https://unix.stackexchange.com/a/658666>


<a id="org3c45c39"></a>

### <https://unix.stackexchange.com/a/658703>


<a id="org3394b9d"></a>

### <https://unix.stackexchange.com/a/658716>


<a id="orgaa41299"></a>

### <https://unix.stackexchange.com/a/664929>


<a id="orgb4e4d22"></a>

## Bruce Gray promises an anti-Haskell spiel in the future&#x2026;
