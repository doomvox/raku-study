- [meeting notes August 29, 2021](#orga632705)
  - [hidden agenda](#org463efa8)
    - [](#org27cf060)
  - [before I forget](#orga9b6cae)
    - [the argument to round might be called "nearest"](#org4888e2e)
  - [multiple dispatch](#orga64f347)
    - [standard complaint](#orgc60e44b)
    - [using multi-dispatch for "dualmap"](#orgca1a3f1)
  - [the maybe method (dot question mark operator: ".?")](#orga71c695)
    - [jonathan worhthington mentions this (WTF)](#org633ce37)


<a id="orga632705"></a>

# meeting notes August 29, 2021


<a id="org463efa8"></a>

## hidden agenda


<a id="org27cf060"></a>

### 


<a id="orga9b6cae"></a>

## before I forget


<a id="org4888e2e"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orga64f347"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgc60e44b"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgca1a3f1"></a>

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


<a id="orga71c695"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org633ce37"></a>

### jonathan worhthington mentions this (WTF)
