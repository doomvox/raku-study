- [meeting notes August 29, 2021](#org641c794)
  - [david christensen](#org21802e9)
  - [the round method, currently calls it's argument "scale"](#org506b632)
    - [the argument to round might be called "nearest"](#orgc940b15)
    - [lowest common ancestor with raku classes](#org8d8e6e1)
  - [multiple dispatch](#org7d1f295)
    - [standard complaint](#org2456ba3)
    - [using multi-dispatch for "dualmap"](#org4bd0811)
    - [dualmap status](#org2f6af63)
  - [the maybe method (dot question mark operator: ".?")](#org61d6ada)
    - [Safe call operator (maybe method operator: ".?")](#orga9006e6)
  - [the usual links:](#orgdda2430)
    - [meeting notes](#org4b57545)
    - [code examples:](#org85a2a7b)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#org12cde38)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org5b6c07d)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#org5fa05b6)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org2c734e0)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgaa931db)
  - [william michaels](#org9d1cd82)
    - [answers shell questions with raku](#org87316c0)
    - [if you approve some of these, you might upvote:](#orgd724600)
  - [the future:](#org7be497a)
    - [next meeting: September 12th, 2021](#orge267692)
    - [Bruce Gray promises an anti-Haskell spiel](#org045ac94)
    - [jeff](#org7dc318d)


<a id="org641c794"></a>

# meeting notes August 29, 2021


<a id="org21802e9"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org506b632"></a>

## the round method, currently calls it's argument "scale"


<a id="orgc940b15"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org8d8e6e1"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org7d1f295"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org2456ba3"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org4bd0811"></a>

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


<a id="org2f6af63"></a>

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


<a id="org61d6ada"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orga9006e6"></a>

### Safe call operator (maybe method operator: ".?")

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="orgdda2430"></a>

## the usual links:


<a id="org4b57545"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org85a2a7b"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org12cde38"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org5b6c07d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="org5fa05b6"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org2c734e0"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgaa931db"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org9d1cd82"></a>

## william michaels


<a id="org87316c0"></a>

### answers shell questions with raku


<a id="orgd724600"></a>

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


<a id="org7be497a"></a>

## the future:


<a id="orge267692"></a>

### next meeting: September 12th, 2021


<a id="org045ac94"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org7dc318d"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
