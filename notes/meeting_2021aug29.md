- [meeting notes August 29, 2021](#org750f871)
  - [hidden agenda](#orgbe0c2b2)
    - [david christensen](#orga7b9457)
    - [jeff](#org232589c)
  - [the round method, currently calls it's argument "scale"](#org3ce0b0b)
    - [the argument to round might be called "nearest"](#orgf68fa3e)
    - [lowest common ancestor with raku classes](#orgecffde3)
  - [multiple dispatch](#org576629a)
    - [standard complaint](#orgd1fdd64)
    - [using multi-dispatch for "dualmap"](#org599ef2f)
    - [dualmap status](#org939e8a5)
  - [the maybe method (dot question mark operator: ".?")](#orgb07e6ce)
    - [Safe call operator](#orgc79fbe0)
  - [the usual links:](#org744ebbb)
    - [meeting notes](#org1659d84)
    - [code examples:](#org9a66779)
  - [Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>](#org3ed10ba)
    - [<https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>](#orge43c36a)
    - [Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>](#org44f5c2c)
    - [<https://github.com/manwar/perlweeklychallenge-club>](#orgeeb02cb)


<a id="org750f871"></a>

# meeting notes August 29, 2021


<a id="orgbe0c2b2"></a>

## hidden agenda


<a id="orga7b9457"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org232589c"></a>

### jeff

1.  pod question?


<a id="org3ce0b0b"></a>

## the round method, currently calls it's argument "scale"


<a id="orgf68fa3e"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orgecffde3"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org576629a"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgd1fdd64"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org599ef2f"></a>

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


<a id="org939e8a5"></a>

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


<a id="orgb07e6ce"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:
if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="orgc79fbe0"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)

5.  bruce gray argues it's to short-circuit long chains


<a id="org744ebbb"></a>

## the usual links:


<a id="org1659d84"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org9a66779"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>


<a id="org3ed10ba"></a>

## Bruce Gray:  <https://theweeklychallenge.org/blog/perl-weekly-challenge-127/>


<a id="orge43c36a"></a>

### <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-127/challenge-127/bruce-gray/perl/ch-1.pl>


<a id="org44f5c2c"></a>

### Design by Contract, "Fast Fail Principle": <https://enterprisecraftsmanship.com/posts/fail-fast-principle/>


<a id="orgeeb02cb"></a>

### <https://github.com/manwar/perlweeklychallenge-club>
