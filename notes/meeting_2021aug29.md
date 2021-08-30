- [meeting notes August 29, 2021](#org7892702)
  - [david christensen](#orga2f7e88)
  - [the method .round, currently calls it's argument "scale"](#orgaa9f19d)
    - [that might be called "nearest"](#org3946464)
    - [lowest common ancestor with raku classes](#org97be0d0)
  - [multiple dispatch](#orgf600f52)
    - [my standard complaint](#org7472b2c)
    - [using multi-dispatch for "dualmap"](#orgabb800e)
    - [dualmap status](#orgc382b4d)
  - [the maybe method (dot question mark operator: ".?")](#orga9ae9b2)
    - [documentation: Safe call operator](#org4b8b2ff)
    - [avoids need to check if .can](#org2687c97)
    - [(from a jonathan worthington code example)](#org9052ad5)
    - [bruce gray argues it's to short-circuit long chains](#org7eb3143)
  - [the usual links:](#org1e0338f)
    - [meeting notes](#orgcaa163d)
    - [code examples:](#org4b4bb03)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orgad5ffc5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#orgfbdbf5f)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org91866a0)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org898b3bf)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org317d1f7)
  - [william michaels](#org8667bad)
    - [answers shell questions with raku](#org845bf82)
    - [if you approve some of these, you might upvote:](#org5d34236)
  - [the future:](#orgdd94e6a)
    - [next meeting: September 12th, 2021](#org49ceb98)
    - [Bruce Gray promises an anti-Haskell spiel](#org151cd40)
    - [jeff](#org1c6a39c)


<a id="org7892702"></a>

# meeting notes August 29, 2021


<a id="orga2f7e88"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.pdf>
        
        2.  <https://github.com/doomvox/raku-study/blob/main/notes/dpchrist-perl-walk/Dpchrist-Perl-walk-flowchart.odg>


<a id="orgaa9f19d"></a>

## the method .round, currently calls it's argument "scale"


<a id="org3946464"></a>

### that might be called "nearest"

"round off to the nearest"


<a id="org97be0d0"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgf600f52"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org7472b2c"></a>

### my standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgabb800e"></a>

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


<a id="orgc382b4d"></a>

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


<a id="orga9ae9b2"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org4b8b2ff"></a>

### documentation: Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org2687c97"></a>

### avoids need to check if .can


<a id="org9052ad5"></a>

### (from a jonathan worthington code example)


<a id="org7eb3143"></a>

### bruce gray argues it's to short-circuit long chains


<a id="org1e0338f"></a>

## the usual links:


<a id="orgcaa163d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org4b4bb03"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orgad5ffc5"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="orgfbdbf5f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org91866a0"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org898b3bf"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org317d1f7"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org8667bad"></a>

## william michaels


<a id="org845bf82"></a>

### answers shell questions with raku


<a id="org5d34236"></a>

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


<a id="orgdd94e6a"></a>

## the future:


<a id="org49ceb98"></a>

### next meeting: September 12th, 2021


<a id="org151cd40"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org1c6a39c"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
