- [meeting notes August 29, 2021](#orgd3710e5)
  - [hidden agenda](#orgf72e013)
    - [](#org70addb3)
  - [before I forget](#org2e68dca)
    - [the argument to round might be called "nearest"](#orga8b907a)
  - [multiple dispatch](#org0a0781d)
    - [standard complaint](#org0368012)
  - [the maybe method (dot question mark operator: ".?")](#org7a7cd34)


<a id="orgd3710e5"></a>

# meeting notes August 29, 2021


<a id="orgf72e013"></a>

## hidden agenda


<a id="org70addb3"></a>

### 


<a id="org2e68dca"></a>

## before I forget


<a id="orga8b907a"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org0a0781d"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org0368012"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org7a7cd34"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```
