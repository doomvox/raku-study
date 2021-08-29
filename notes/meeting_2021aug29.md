- [meeting notes August 29, 2021](#org1b224ea)
  - [hidden agenda](#orgd8ae5aa)
    - [](#orgc5da0ef)
  - [before I forget](#org65b30dc)
    - [the argument to round might be called "nearest"](#org3ad2f88)
  - [multiple dispatch](#org844a261)
    - [standard complaint](#org214a162)
    - [using multi-dispatch for "dualmap"](#org269d1f3)
    - [dualmap status](#org0db324b)
  - [the maybe method (dot question mark operator: ".?")](#orgf4798d0)
    - [Safe call operator](#orgcc8b4d6)
    - [WTF?](#org6a6b4de)


<a id="org1b224ea"></a>

# meeting notes August 29, 2021


<a id="orgd8ae5aa"></a>

## hidden agenda


<a id="orgc5da0ef"></a>

### 


<a id="org65b30dc"></a>

## before I forget


<a id="org3ad2f88"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org844a261"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org214a162"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org269d1f3"></a>

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


<a id="org0db324b"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is more like deepmap
    
        1.  needs a code block as argument
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')
            
            3.  default string handler does what **I** mean,
            
                1.  via OOP interface can use code block instead


<a id="orgf4798d0"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="orgcc8b4d6"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?


<a id="org6a6b4de"></a>

### WTF?

1.  from a jonathan worthington code example
