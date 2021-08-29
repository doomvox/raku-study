- [meeting notes August 29, 2021](#orgb117370)
  - [hidden agenda](#org81c272b)
    - [](#orgc558b54)
  - [before I forget](#orgecc8438)
    - [the argument to round might be called "nearest"](#org6e997e4)
  - [multiple dispatch](#org9846326)
    - [standard complaint](#org097db0e)
    - [using multi-dispatch for "dualmap"](#org142913d)
  - [the maybe method (dot question mark operator: ".?")](#org17639c4)
    - [jonathan worhthington mentions this (WTF)](#org90bf2b3)


<a id="orgb117370"></a>

# meeting notes August 29, 2021


<a id="org81c272b"></a>

## hidden agenda


<a id="orgc558b54"></a>

### 


<a id="orgecc8438"></a>

## before I forget


<a id="org6e997e4"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org9846326"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org097db0e"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org142913d"></a>

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


<a id="org17639c4"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org90bf2b3"></a>

### jonathan worhthington mentions this (WTF)
