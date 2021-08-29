- [meeting notes August 29, 2021](#org37a3041)
  - [hidden agenda](#org64dd4c1)
    - [](#org81ddf96)
  - [before I forget](#org75ed583)
    - [the argument to round might be called "nearest"](#org07ddf16)
  - [multiple dispatch](#orgbc87d5d)
    - [standard complaint](#org3ed74cc)
  - [the maybe method (dot question mark operator: ".?")](#org61cf7b1)
    - [jonathan worhthington mentions this (WTF)](#org1c4cce0)


<a id="org37a3041"></a>

# meeting notes August 29, 2021


<a id="org64dd4c1"></a>

## hidden agenda


<a id="org81ddf96"></a>

### 


<a id="org75ed583"></a>

## before I forget


<a id="org07ddf16"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orgbc87d5d"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org3ed74cc"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org61cf7b1"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org1c4cce0"></a>

### jonathan worhthington mentions this (WTF)
