- [meeting notes August 29, 2021](#org20d02a0)
  - [hidden agenda](#org82aac01)
    - [](#org726f27f)
  - [before I forget](#orgc296617)
    - [the argument to round might be called "nearest"](#org0df5ad2)
  - [multiple dispatch](#org7972586)
    - [standard complaint](#orgaf9ca73)
    - [using multi-dispatch for "dualmap"](#orgeffc17f)
    - [dualmap status](#orgb45a44e)
  - [the maybe method (dot question mark operator: ".?")](#org8873f71)
    - [jonathan worhthington mentions this (WTF)](#org02674e8)


<a id="org20d02a0"></a>

# meeting notes August 29, 2021


<a id="org82aac01"></a>

## hidden agenda


<a id="org726f27f"></a>

### 


<a id="orgc296617"></a>

## before I forget


<a id="org0df5ad2"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org7972586"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgaf9ca73"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgeffc17f"></a>

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


<a id="orgb45a44e"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is more like deepmap
    
        1.  needs a code block as argument
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')


<a id="org8873f71"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org02674e8"></a>

### jonathan worhthington mentions this (WTF)
