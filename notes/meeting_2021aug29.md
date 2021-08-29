- [meeting notes August 29, 2021](#org0e27a37)
  - [hidden agenda](#org7543139)
    - [](#org7b12aec)
  - [before I forget](#org10c6e6b)
    - [the argument to round might be called "nearest"](#org2a162e1)
  - [multiple dispatch](#org53a4c94)
    - [standard complaint](#org4028856)
    - [using multi-dispatch for "dualmap"](#org3209027)
    - [dualmap status](#org3955fd7)
  - [the maybe method (dot question mark operator: ".?")](#orgb552270)
    - [Safe call operator](#org22eeac5)
    - [WTF?](#orga0857b3)


<a id="org0e27a37"></a>

# meeting notes August 29, 2021


<a id="org7543139"></a>

## hidden agenda


<a id="org7b12aec"></a>

### 


<a id="org10c6e6b"></a>

## before I forget


<a id="org2a162e1"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org53a4c94"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org4028856"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org3209027"></a>

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


<a id="org3955fd7"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is now more like deepmap
    
        1.  needs a code block as argument
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')
            
            3.  default string handler does what **I** mean,
            
                1.  via OOP interface can use code block instead
    
    3.  still may need more thought for Raku
    
        1.  maybe: any number of code blocks associated with arbitrary types
        
            1.  do **this** with a leaf node that looks like **that**


<a id="orgb552270"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org22eeac5"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can


<a id="orga0857b3"></a>

### WTF?

1.  from a jonathan worthington code example
