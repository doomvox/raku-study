- [meeting notes August 29, 2021](#org8c8c2ff)
  - [david christensen](#org4566797)
  - [the method .round, currently calls it's argument "scale"](#org59f3e1d)
    - [that might be called "nearest"](#org79d501c)
  - [lowest common ancestor with raku classes](#org73f52e2)
    - [example code](#org29dc036)
  - [multiple dispatch and types](#orgac8cf65)
    - [my standard complaint](#org92f542d)
    - [using multi-dispatch for "dualmap"](#org7d008e9)
    - [dualmap status](#orga798291)
  - [the maybe method (dot question mark operator: ".?")](#org1726d22)
    - [documentation: Safe call operator](#orgc6d1284)
    - [avoids need to check if .can](#org2da2d73)
    - [(from a jonathan worthington code example)](#org7aa6bfa)
    - [bruce gray argues it's to short-circuit long chains](#org8b8525a)
  - [the usual links:](#orga910b8c)
    - [meeting notes](#org0e7022d)
    - [code examples:](#orgb40dc1b)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org24b3a0c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org2e5e61e)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org1848f86)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgd41007c)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org0d72716)
  - [william michaels](#orgeb3971d)
    - [answers shell questions with raku](#orgd663d94)
    - [if you approve some of these, you might upvote:](#org0a552c1)
  - [the future:](#orge002aea)
    - [next meeting: September 12th, 2021](#org2a0a260)
    - [Bruce Gray promises an anti-Haskell spiel](#orga6d3d63)
    - [jeff](#orgff12187)


<a id="org8c8c2ff"></a>

# meeting notes August 29, 2021


<a id="org4566797"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org59f3e1d"></a>

## the method .round, currently calls it's argument "scale"


<a id="org79d501c"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org73f52e2"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org29dc036"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orgac8cf65"></a>

## multiple dispatch and types

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org92f542d"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org7d008e9"></a>

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
    
        1.  but the "is default" feature helps


<a id="orga798291"></a>

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


<a id="org1726d22"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgc6d1284"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org2da2d73"></a>

### avoids need to check if .can


<a id="org7aa6bfa"></a>

### (from a jonathan worthington code example)


<a id="org8b8525a"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orga910b8c"></a>

## the usual links:


<a id="org0e7022d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgb40dc1b"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org24b3a0c"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org2e5e61e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org1848f86"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgd41007c"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org0d72716"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgeb3971d"></a>

## william michaels


<a id="orgd663d94"></a>

### answers shell questions with raku


<a id="org0a552c1"></a>

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


<a id="orge002aea"></a>

## the future:


<a id="org2a0a260"></a>

### next meeting: September 12th, 2021


<a id="orga6d3d63"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="orgff12187"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
