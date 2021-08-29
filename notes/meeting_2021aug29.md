- [meeting notes August 29, 2021](#org29b8baa)
  - [hidden agenda](#orgb7017cb)
    - [](#org56fbc31)
  - [before I forget](#org5a436a7)
    - [the argument to round might be called "nearest"](#org15ffd50)
  - [multiple dispatch](#org9866abc)
    - [standard complaint](#org26b3966)
    - [using multi-dispatch for "dualmap"](#org7939f03)
  - [the maybe method (dot question mark operator: ".?")](#org8246c05)
    - [jonathan worhthington mentions this (WTF)](#orgbfe9c79)


<a id="org29b8baa"></a>

# meeting notes August 29, 2021


<a id="orgb7017cb"></a>

## hidden agenda


<a id="org56fbc31"></a>

### 


<a id="org5a436a7"></a>

## before I forget


<a id="org15ffd50"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org9866abc"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org26b3966"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org7939f03"></a>

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


<a id="org8246c05"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="orgbfe9c79"></a>

### jonathan worhthington mentions this (WTF)
