- [meeting notes August 29, 2021](#org32570f1)
  - [hidden agenda](#orgf763aaf)
    - [](#orgf6b7643)
  - [before I forget](#org31b4f57)
    - [the argument to round might be called "nearest"](#orgdf3be8e)
  - [multiple dispatch](#org2310434)
    - [standard complaint](#orgd545909)
  - [the maybe method (dot question mark operator: ".?")](#orgc872263)
    - [jonathan worhthington mentions this (WTF)](#org555bb9b)


<a id="org32570f1"></a>

# meeting notes August 29, 2021


<a id="orgf763aaf"></a>

## hidden agenda


<a id="orgf6b7643"></a>

### 


<a id="org31b4f57"></a>

## before I forget


<a id="orgdf3be8e"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org2310434"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgd545909"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgc872263"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org555bb9b"></a>

### jonathan worhthington mentions this (WTF)
