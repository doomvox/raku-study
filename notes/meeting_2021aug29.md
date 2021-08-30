- [meeting notes August 29, 2021](#orgc7c80de)
  - [david christensen](#orgf82423c)
  - [the method .round, currently calls it's argument "scale"](#org5f44297)
    - [that might be called "nearest"](#org276630f)
  - [lowest common ancestor with raku classes](#org0f6289d)
  - [multiple dispatch](#orgc20a205)
    - [my standard complaint](#orgbd18c82)
    - [using multi-dispatch for "dualmap"](#orgf6a0f08)
    - [dualmap status](#orgc1fd5f6)
  - [the maybe method (dot question mark operator: ".?")](#orgbe49c75)
    - [documentation: Safe call operator](#org4bada9b)
    - [avoids need to check if .can](#org5ce03d7)
    - [(from a jonathan worthington code example)](#org84420e1)
    - [bruce gray argues it's to short-circuit long chains](#org4e8fbfb)
  - [the usual links:](#orga7f4eca)
    - [meeting notes](#org6b8347f)
    - [code examples:](#org20d841c)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org42f49db)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org94509ec)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgf7801ff)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org4955fd6)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgdc6de2f)
  - [william michaels](#orgaff9059)
    - [answers shell questions with raku](#orgcd32aca)
    - [if you approve some of these, you might upvote:](#orgac41860)
  - [the future:](#org2a6ec9f)
    - [next meeting: September 12th, 2021](#orga38250e)
    - [Bruce Gray promises an anti-Haskell spiel](#org76dea64)
    - [jeff](#org2921dc1)


<a id="orgc7c80de"></a>

# meeting notes August 29, 2021


<a id="orgf82423c"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="org5f44297"></a>

## the method .round, currently calls it's argument "scale"


<a id="org276630f"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org0f6289d"></a>

## lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgc20a205"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgbd18c82"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgf6a0f08"></a>

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


<a id="orgc1fd5f6"></a>

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


<a id="orgbe49c75"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org4bada9b"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org5ce03d7"></a>

### avoids need to check if .can


<a id="org84420e1"></a>

### (from a jonathan worthington code example)


<a id="org4e8fbfb"></a>

### bruce gray argues it's to short-circuit long chains


<a id="orga7f4eca"></a>

## the usual links:


<a id="org6b8347f"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org20d841c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org42f49db"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org94509ec"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgf7801ff"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org4955fd6"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgdc6de2f"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgaff9059"></a>

## william michaels


<a id="orgcd32aca"></a>

### answers shell questions with raku


<a id="orgac41860"></a>

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


<a id="org2a6ec9f"></a>

## the future:


<a id="orga38250e"></a>

### next meeting: September 12th, 2021


<a id="org76dea64"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org2921dc1"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
