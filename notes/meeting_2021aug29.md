- [meeting notes August 29, 2021](#org3b968e9)
  - [david christensen](#orga10c177)
  - [the method .round, currently calls it's argument "scale"](#org3990dbe)
    - [that might be called "nearest"](#orgcb2ed70)
  - [lowest common ancestor with raku classes](#org3191e4a)
    - [example code](#orgb3ffc29)
  - [multiple dispatch](#orge648e2e)
    - [my standard complaint](#org6b5a66a)
    - [using multi-dispatch for "dualmap"](#org67ad2dd)
    - [dualmap status](#org70f1582)
  - [the maybe method (dot question mark operator: ".?")](#org1214abc)
    - [documentation: Safe call operator](#orgbe5f03b)
    - [avoids need to check if .can](#orgba90e7d)
    - [(from a jonathan worthington code example)](#orgeec5aff)
    - [bruce gray argues it's to short-circuit long chains](#org542d5a2)
  - [the usual links:](#org6d8d52e)
    - [meeting notes](#orgbf112b8)
    - [code examples:](#orgdde5a11)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org7debb29)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgcaeb6d7)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org6b562af)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orgf9201af)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org27c2666)
  - [william michaels](#orga3efd1f)
    - [answers shell questions with raku](#orgb7676d0)
    - [if you approve some of these, you might upvote:](#org32caa06)
  - [the future:](#org0246813)
    - [next meeting: September 12th, 2021](#org87922f9)
    - [Bruce Gray promises an anti-Haskell spiel](#orgb007827)
    - [jeff](#org3c6e0ae)


<a id="org3b968e9"></a>

# meeting notes August 29, 2021


<a id="orga10c177"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org3990dbe"></a>

## the method .round, currently calls it's argument "scale"


<a id="orgcb2ed70"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org3191e4a"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgb3ffc29"></a>

### example code

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_1.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_2.raku> <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29/lca_so_3.raku>


<a id="orge648e2e"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org6b5a66a"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org67ad2dd"></a>

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


<a id="org70f1582"></a>

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


<a id="org1214abc"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
#
# an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgbe5f03b"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="orgba90e7d"></a>

### avoids need to check if .can


<a id="orgeec5aff"></a>

### (from a jonathan worthington code example)


<a id="org542d5a2"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org6d8d52e"></a>

## the usual links:


<a id="orgbf112b8"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgdde5a11"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org7debb29"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgcaeb6d7"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org6b562af"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="orgf9201af"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org27c2666"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orga3efd1f"></a>

## william michaels


<a id="orgb7676d0"></a>

### answers shell questions with raku


<a id="org32caa06"></a>

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


<a id="org0246813"></a>

## the future:


<a id="org87922f9"></a>

### next meeting: September 12th, 2021


<a id="orgb007827"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org3c6e0ae"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
