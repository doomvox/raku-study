- [meeting notes August 29, 2021](#orgb1da30f)
  - [hidden agenda](#org7d55c0a)
    - [](#org657c2d9)
  - [before I forget](#org54c5b41)
    - [the argument to round might be called "nearest"](#orgb287069)
  - [multiple dispatch](#org72f75dd)
    - [standard complaint](#orgd1894ac)
    - [using multi-dispatch for "dualmap"](#org7b9926f)
  - [the maybe method (dot question mark operator: ".?")](#org9960226)
    - [jonathan worhthington mentions this (WTF)](#orgc883b7d)


<a id="orgb1da30f"></a>

# meeting notes August 29, 2021


<a id="org7d55c0a"></a>

## hidden agenda


<a id="org657c2d9"></a>

### 


<a id="org54c5b41"></a>

## before I forget


<a id="orgb287069"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org72f75dd"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgd1894ac"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org7b9926f"></a>

### using multi-dispatch for "dualmap"

1.  kind of cool

    1.  
    
        ```perl6
        my $dmh = Data::Dualmap::Recurse::Numerics.new( 
                  string_handler => 
                     { do if ( $^a eq $^b ) { "Both: $a" } else { "1: $a  2: $b" } } );
        my $result = $dmh.dualmap( '-', $gross, $costs );
        ```


<a id="org9960226"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="orgc883b7d"></a>

### jonathan worhthington mentions this (WTF)
