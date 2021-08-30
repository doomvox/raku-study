- [meeting notes August 29, 2021](#orgf09cb5b)
  - [david christensen](#orgf66cf5f)
  - [the round method, currently calls it's argument "scale"](#orgf4a545d)
    - [the argument to round might be called "nearest"](#orgf3e29b6)
    - [lowest common ancestor with raku classes](#org7fbfd54)
  - [multiple dispatch](#orge5ce65a)
    - [my standard complaint](#orgb7fb56e)
    - [using multi-dispatch for "dualmap"](#org00e9fe7)
    - [dualmap status](#orgcbde821)
  - [the maybe method (dot question mark operator: ".?")](#orgc76ff7c)
    - [documentation: Safe call operator](#org0975202)
    - [avoids need to check if .can](#org722b107)
    - [(from a jonathan worthington code example)](#orgaa63ed7)
    - [bruce gray argues it's to short-circuit long chains](#org8f70250)
  - [the usual links:](#org97e3a94)
    - [meeting notes](#org578779f)
    - [code examples:](#org9767a02)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgd2810c7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgd822158)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org1d24c24)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org968c4ff)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgcba8d33)
  - [william michaels](#orga0c4a2c)
    - [answers shell questions with raku](#org19a3685)
    - [if you approve some of these, you might upvote:](#orgdd16a02)
  - [the future:](#org3a1fa6a)
    - [next meeting: September 12th, 2021](#org528f3a4)
    - [Bruce Gray promises an anti-Haskell spiel](#org2741868)
    - [jeff](#orgf130671)


<a id="orgf09cb5b"></a>

# meeting notes August 29, 2021


<a id="orgf66cf5f"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgf4a545d"></a>

## the round method, currently calls it's argument "scale"


<a id="orgf3e29b6"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org7fbfd54"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orge5ce65a"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgb7fb56e"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org00e9fe7"></a>

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


<a id="orgcbde821"></a>

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


<a id="orgc76ff7c"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org0975202"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org722b107"></a>

### avoids need to check if .can


<a id="orgaa63ed7"></a>

### (from a jonathan worthington code example)


<a id="org8f70250"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org97e3a94"></a>

## the usual links:


<a id="org578779f"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org9767a02"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgd2810c7"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgd822158"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org1d24c24"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org968c4ff"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgcba8d33"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orga0c4a2c"></a>

## william michaels


<a id="org19a3685"></a>

### answers shell questions with raku


<a id="orgdd16a02"></a>

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


<a id="org3a1fa6a"></a>

## the future:


<a id="org528f3a4"></a>

### next meeting: September 12th, 2021


<a id="org2741868"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgf130671"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
