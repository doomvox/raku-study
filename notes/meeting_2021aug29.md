- [meeting notes August 29, 2021](#org0017afb)
  - [hidden agenda](#org7374f65)
    - [david christensen](#org9354886)
    - [jeff](#orge7483ed)
  - [the round method, currently calls it's argument "scale"](#orgb611e2a)
    - [the argument to round might be called "nearest"](#orgf40656d)
    - [lowest common ancestor with raku classes](#org8455cab)
  - [multiple dispatch](#org3839c00)
    - [standard complaint](#org9cdc465)
    - [using multi-dispatch for "dualmap"](#org82c88ae)
    - [dualmap status](#org421a91b)
  - [the maybe method (dot question mark operator: ".?")](#org96254c3)
    - [Safe call operator](#orgf0b6286)
  - [the usual links:](#org25394f1)
    - [meeting notes](#orga5a63ee)
    - [code examples:](#orgcae760d)
  - [Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgf7763c9)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgaba7343)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org302fb67)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orge271d1c)
  - [William Michaels](#orgd6414a7)
    - [<https://unix.stackexchange.com/a/654444>](#orgd4d60bd)
    - [<https://unix.stackexchange.com/a/655217>](#orgb0978a3)
    - [<https://unix.stackexchange.com/a/655944>](#org655aff1)
    - [<https://unix.stackexchange.com/a/658564>](#org4d15d60)
    - [<https://unix.stackexchange.com/a/658618>](#org5b52bfa)
    - [<https://unix.stackexchange.com/a/658666>](#org53cfae3)
    - [<https://unix.stackexchange.com/a/658703>](#orga199ef8)
    - [<https://unix.stackexchange.com/a/658716>](#org254f269)
    - [<https://unix.stackexchange.com/a/664929>](#orgbbdf043)


<a id="org0017afb"></a>

# meeting notes August 29, 2021


<a id="org7374f65"></a>

## hidden agenda


<a id="org9354886"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="orge7483ed"></a>

### jeff

1.  pod question?


<a id="orgb611e2a"></a>

## the round method, currently calls it's argument "scale"


<a id="orgf40656d"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org8455cab"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org3839c00"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org9cdc465"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org82c88ae"></a>

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


<a id="org421a91b"></a>

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


<a id="org96254c3"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgf0b6286"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="org25394f1"></a>

## the usual links:


<a id="orga5a63ee"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgcae760d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgf7763c9"></a>

## Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgaba7343"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org302fb67"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orge271d1c"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgd6414a7"></a>

## William Michaels


<a id="orgd4d60bd"></a>

### <https://unix.stackexchange.com/a/654444>


<a id="orgb0978a3"></a>

### <https://unix.stackexchange.com/a/655217>


<a id="org655aff1"></a>

### <https://unix.stackexchange.com/a/655944>


<a id="org4d15d60"></a>

### <https://unix.stackexchange.com/a/658564>


<a id="org5b52bfa"></a>

### <https://unix.stackexchange.com/a/658618>


<a id="org53cfae3"></a>

### <https://unix.stackexchange.com/a/658666>


<a id="orga199ef8"></a>

### <https://unix.stackexchange.com/a/658703>


<a id="org254f269"></a>

### <https://unix.stackexchange.com/a/658716>


<a id="orgbbdf043"></a>

### <https://unix.stackexchange.com/a/664929>
