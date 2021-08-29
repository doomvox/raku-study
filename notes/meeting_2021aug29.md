- [meeting notes August 29, 2021](#org2140c0f)
  - [hidden agenda](#org9f17db6)
    - [](#org9eb839e)
  - [before I forget](#org215779f)
    - [the argument to round might be called "nearest"](#org52bd5d0)
  - [multiple dispatch](#org98b2b18)
    - [standard complaint](#org243ffc1)
    - [using multi-dispatch for "dualmap"](#org9c10d82)
    - [dualmap status](#org3b6ff12)
  - [the maybe method (dot question mark operator: ".?")](#org38975c9)
    - [jonathan worhthington mentions this (WTF)](#org136c56d)


<a id="org2140c0f"></a>

# meeting notes August 29, 2021


<a id="org9f17db6"></a>

## hidden agenda


<a id="org9eb839e"></a>

### 


<a id="org215779f"></a>

## before I forget


<a id="org52bd5d0"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org98b2b18"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org243ffc1"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org9c10d82"></a>

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


<a id="org3b6ff12"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is more like deepmap
    
        1.  needs a code block as argument
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')
            
            3.  default string handler does what **I** mean,
            
                1.  via OOP interface can use code block instead


<a id="org38975c9"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org136c56d"></a>

### jonathan worhthington mentions this (WTF)
