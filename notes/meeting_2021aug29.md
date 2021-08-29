- [meeting notes August 29, 2021](#org016dfd8)
  - [hidden agenda](#org81cb61c)
    - [](#org0049a41)
  - [before I forget](#orgfae6d00)
    - [the argument to round might be called "nearest"](#org5fc6517)
  - [multiple dispatch](#orgf05168c)
    - [standard complaint](#orga18213e)
    - [using multi-dispatch for "dualmap"](#org6822314)
  - [the maybe method (dot question mark operator: ".?")](#org90b5cb1)
    - [jonathan worhthington mentions this (WTF)](#orga51c1e2)


<a id="org016dfd8"></a>

# meeting notes August 29, 2021


<a id="org81cb61c"></a>

## hidden agenda


<a id="org0049a41"></a>

### 


<a id="orgfae6d00"></a>

## before I forget


<a id="org5fc6517"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orgf05168c"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orga18213e"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org6822314"></a>

### using multi-dispatch for "dualmap"

1.  kind of cool

    1.  implementing this feature in raku took little code:
    
        ```perl6
        my $dmh = Data::Dualmap::Recurse::Numerics.new( 
                  string_handler => 
                     { do if ( $^a eq $^b ) { "Both: $a" } else { "1: $a  2: $b" } } );
        my $result = $dmh.dualmap( '-', $gross, $costs );
        ```


<a id="org90b5cb1"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="orga51c1e2"></a>

### jonathan worhthington mentions this (WTF)
