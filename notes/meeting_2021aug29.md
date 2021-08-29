- [meeting notes August 29, 2021](#org9783acf)
  - [hidden agenda](#org78979a6)
    - [](#org238d1a0)
  - [before I forget](#orgadda453)
    - [the argument to round might be called "nearest"](#org919e135)
  - [multiple dispatch](#org451caa4)
    - [standard complaint](#orgcfff3d9)
    - [using multi-dispatch for "dualmap"](#org9aefccc)
  - [the maybe method (dot question mark operator: ".?")](#org5db18fa)
    - [jonathan worhthington mentions this (WTF)](#org5514086)


<a id="org9783acf"></a>

# meeting notes August 29, 2021


<a id="org78979a6"></a>

## hidden agenda


<a id="org238d1a0"></a>

### 


<a id="orgadda453"></a>

## before I forget


<a id="org919e135"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org451caa4"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgcfff3d9"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org9aefccc"></a>

### using multi-dispatch for "dualmap"

1.  kind of cool

    1.  implementing this feature in raku took little code:
    
        ```perl6
        my $dmh = Data::Dualmap::Recurse::Numerics.new( 
                  string_handler => 
                     { do if ( $^a eq $^b ) { "Both: $a" } else { "1: $a  2: $b" } } );
        my $result = $dmh.dualmap( '-', $gross, $costs );
        ```


<a id="org5db18fa"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org5514086"></a>

### jonathan worhthington mentions this (WTF)
