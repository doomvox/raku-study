- [meeting notes August 29, 2021](#org62261de)
  - [david christensen](#org9fc364c)
  - [the round method, currently calls it's argument "scale"](#org30337c3)
    - [the argument to round might be called "nearest"](#org831910c)
    - [lowest common ancestor with raku classes](#org1a8bbf4)
  - [multiple dispatch](#orge768d3b)
    - [standard complaint](#orgc6476c7)
    - [using multi-dispatch for "dualmap"](#org407df23)
    - [dualmap status](#orgf5fe850)
  - [the maybe method (dot question mark operator: ".?")](#orgf79afbc)
    - [Safe call operator](#org859e82a)
  - [the usual links:](#orgc246db1)
    - [meeting notes](#orgc155bed)
    - [code examples:](#orge7a1f56)
  - [Bruce Gray: answering the perl weekly challenge in perl and raku](#orga9f4c5c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org1066c88)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgd3df86f)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#org8231291)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#orgdcf80b7)
  - [william michaels](#org5efab1c)
    - [answers shell questions with raku](#orge9d92f9)
    - [if you approve some of these, you might upvote:](#orgadf4277)
  - [the future:](#org83785eb)
    - [next meeting: September 12th, 2021](#org2bec26a)
    - [Bruce Gray promises an anti-Haskell spiel](#orgba9ffa4)
    - [jeff](#org4239eda)


<a id="org62261de"></a>

# meeting notes August 29, 2021


<a id="org9fc364c"></a>

## david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org30337c3"></a>

## the round method, currently calls it's argument "scale"


<a id="org831910c"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org1a8bbf4"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orge768d3b"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgc6476c7"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org407df23"></a>

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


<a id="orgf5fe850"></a>

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


<a id="orgf79afbc"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org859e82a"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="orgc246db1"></a>

## the usual links:


<a id="orgc155bed"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orge7a1f56"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="orga9f4c5c"></a>

## Bruce Gray: answering the perl weekly challenge in perl and raku


<a id="org1066c88"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orgd3df86f"></a>

### <https://github.com/manwar/perlweeklychallenge-club>


<a id="org8231291"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="orgdcf80b7"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="org5efab1c"></a>

## william michaels


<a id="orge9d92f9"></a>

### answers shell questions with raku


<a id="orgadf4277"></a>

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


<a id="org83785eb"></a>

## the future:


<a id="org2bec26a"></a>

### next meeting: September 12th, 2021


<a id="orgba9ffa4"></a>

### Bruce Gray promises an anti-Haskell spiel


<a id="org4239eda"></a>

### jeff

1.  looking for a pod expert (richard hainsworth?)
