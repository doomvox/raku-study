- [meeting notes August 29, 2021](#org29add0a)
  - [david christensen](#orgaff4ca0)
  - [the method .round, currently calls it's argument "scale"](#org52a8f8f)
    - [that might be called "nearest"](#orged9b0df)
  - [lowest common ancestor with raku classes](#org20daebb)
    - [example code](#orgb97b7d2)
  - [multiple dispatch](#orgbb814e4)
    - [my standard complaint](#org7d31ec3)
    - [using multi-dispatch for "dualmap"](#org5a74080)
    - [dualmap status](#org1486424)
  - [the maybe method (dot question mark operator: ".?")](#org50cd251)
    - [documentation: Safe call operator](#orgf749a53)
    - [avoids need to check if .can](#orgea8703e)
    - [(from a jonathan worthington code example)](#org6bf0403)
    - [bruce gray argues it's to short-circuit long chains](#org13b7175)
  - [the usual links:](#org09d8818)
    - [meeting notes](#orge9e2f76)
    - [code examples:](#org13aa09c)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgafda8c4)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org6f9274d)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org5d8d688)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org3204889)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgdc50430)
  - [william michaels](#orgdd381ea)
    - [answers shell questions with raku](#org65c1f77)
    - [if you approve some of these, you might upvote:](#org854504b)
  - [the future:](#org963b2f9)
    - [next meeting: September 12th, 2021](#org4c76fa1)
    - [Bruce Gray promises an anti-Haskell spiel](#org194e49a)
    - [jeff](#org206be1b)


<a id="org29add0a"></a>

# meeting notes August 29, 2021


<a id="orgaff4ca0"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org52a8f8f"></a>

## the method .round, currently calls it's argument "scale"


<a id="orged9b0df"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org20daebb"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgb97b7d2"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgbb814e4"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org7d31ec3"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org5a74080"></a>

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


<a id="org1486424"></a>

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


<a id="org50cd251"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgf749a53"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgea8703e"></a>

### avoids need to check if .can


<a id="org6bf0403"></a>

### (from a jonathan worthington code example)


<a id="org13b7175"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org09d8818"></a>

## the usual links:


<a id="orge9e2f76"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org13aa09c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgafda8c4"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org6f9274d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org5d8d688"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org3204889"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgdc50430"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgdd381ea"></a>

## william michaels


<a id="org65c1f77"></a>

### answers shell questions with raku


<a id="org854504b"></a>

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


<a id="org963b2f9"></a>

## the future:


<a id="org4c76fa1"></a>

### next meeting: September 12th, 2021


<a id="org194e49a"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org206be1b"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
