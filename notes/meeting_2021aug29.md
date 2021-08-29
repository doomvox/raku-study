- [meeting notes August 29, 2021](#orgda1e9b4)
  - [hidden agenda](#org4a3ae84)
    - [](#org87160ba)
  - [before I forget](#orga18fe24)
    - [the argument to round might be called "nearest"](#org1aa1718)
  - [multiple dispatch](#org3b01b65)
    - [standard complaint](#orgb0b7741)
    - [using multi-dispatch for "dualmap"](#org31106fe)
  - [the maybe method (dot question mark operator: ".?")](#org0ecced2)
    - [jonathan worhthington mentions this (WTF)](#orga1f9044)


<a id="orgda1e9b4"></a>

# meeting notes August 29, 2021


<a id="org4a3ae84"></a>

## hidden agenda


<a id="org87160ba"></a>

### 


<a id="orga18fe24"></a>

## before I forget


<a id="org1aa1718"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org3b01b65"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgb0b7741"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org31106fe"></a>

### using multi-dispatch for "dualmap"

1.  kind of cool

    1.  
    
        ```perl6
        ```


<a id="org0ecced2"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="orga1f9044"></a>

### jonathan worhthington mentions this (WTF)
