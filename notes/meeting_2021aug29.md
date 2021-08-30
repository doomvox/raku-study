- [meeting notes August 29, 2021](#org62f3c51)
  - [david christensen](#orgc76b963)
  - [the round method, currently calls it's argument "scale"](#org58cac09)
    - [the argument to round might be called "nearest"](#org8165257)
    - [lowest common ancestor with raku classes](#org9c96233)
  - [multiple dispatch](#orgd5c1471)
    - [standard complaint](#org1cd0596)
    - [using multi-dispatch for "dualmap"](#org4e25428)
    - [dualmap status](#org63834f9)
  - [the maybe method (dot question mark operator: ".?")](#org4fbb74d)
    - [Safe call operator](#org37e3aeb)
  - [the usual links:](#org2b2f8b1)
    - [meeting notes](#org1893ef0)
    - [code examples:](#org6a8e222)
  - [Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org42de951)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge389730)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org12935f4)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org250a5fb)
  - [William Michaels](#org4289ed6)
    - [<https://unix.stackexchange.com/a/654444>](#org9898ee9)
    - [<https://unix.stackexchange.com/a/655217>](#orgaa6087b)
    - [<https://unix.stackexchange.com/a/655944>](#orgbbc9f69)
    - [<https://unix.stackexchange.com/a/658564>](#orgb5aa566)
    - [<https://unix.stackexchange.com/a/658618>](#orgb88bccf)
    - [<https://unix.stackexchange.com/a/658666>](#orge3e3ad2)
    - [<https://unix.stackexchange.com/a/658703>](#org1e55d54)
    - [<https://unix.stackexchange.com/a/658716>](#org0ab01cd)
    - [<https://unix.stackexchange.com/a/664929>](#org8fe6fe7)
  - [the future:](#orga3fc867)
    - [next meeting: September 12th, 2021](#org704bde3)
    - [Bruce Gray promises an anti-Haskell spiel](#org1dbdcdd)
    - [jeff](#orgf1ce0e9)


<a id="org62f3c51"></a>

# meeting notes August 29, 2021


<a id="orgc76b963"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org58cac09"></a>

## the round method, currently calls it's argument "scale"


<a id="org8165257"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org9c96233"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgd5c1471"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org1cd0596"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org4e25428"></a>

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


<a id="org63834f9"></a>

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


<a id="org4fbb74d"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org37e3aeb"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="org2b2f8b1"></a>

## the usual links:


<a id="org1893ef0"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org6a8e222"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org42de951"></a>

## Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orge389730"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org12935f4"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org250a5fb"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org4289ed6"></a>

## William Michaels


<a id="org9898ee9"></a>

### <https://unix.stackexchange.com/a/654444>


<a id="orgaa6087b"></a>

### <https://unix.stackexchange.com/a/655217>


<a id="orgbbc9f69"></a>

### <https://unix.stackexchange.com/a/655944>


<a id="orgb5aa566"></a>

### <https://unix.stackexchange.com/a/658564>


<a id="orgb88bccf"></a>

### <https://unix.stackexchange.com/a/658618>


<a id="orge3e3ad2"></a>

### <https://unix.stackexchange.com/a/658666>


<a id="org1e55d54"></a>

### <https://unix.stackexchange.com/a/658703>


<a id="org0ab01cd"></a>

### <https://unix.stackexchange.com/a/658716>


<a id="org8fe6fe7"></a>

### <https://unix.stackexchange.com/a/664929>


<a id="orga3fc867"></a>

## the future:


<a id="org704bde3"></a>

### next meeting: September 12th, 2021


<a id="org1dbdcdd"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgf1ce0e9"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
