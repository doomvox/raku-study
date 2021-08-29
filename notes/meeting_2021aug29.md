- [meeting notes August 29, 2021](#org8347f26)
  - [hidden agenda](#orgab7e893)
    - [](#orgac38220)
  - [before I forget](#org96fe8d7)
    - [the argument to round might be called "nearest"](#orgcfa638b)
  - [multiple dispatch](#org9d3696c)
    - [standard complaint](#org1e7c811)
  - [the maybe method](#org7fc1586)


<a id="org8347f26"></a>

# meeting notes August 29, 2021


<a id="orgab7e893"></a>

## hidden agenda


<a id="orgac38220"></a>

### 


<a id="org96fe8d7"></a>

## before I forget


<a id="orgcfa638b"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org9d3696c"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org1e7c811"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org7fc1586"></a>

## the maybe method

```perl6
my $result = $obj.?method($arg, $arg);
```
