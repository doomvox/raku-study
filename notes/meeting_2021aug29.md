- [meeting notes August 29, 2021](#org60428e5)
  - [hidden agenda](#org9045b7c)
    - [](#orgf6c4dca)
  - [before I forget](#orgba77f78)
    - [the argument to round might be called "nearest"](#orga421e1e)
  - [multiple dispatch](#org24755cf)
    - [standard complaint](#orgfb54985)
    - [using multi-dispatch for "dualmap"](#orgae67dec)
    - [dualmap status](#org92ed443)
  - [the maybe method (dot question mark operator: ".?")](#orgc40bfa4)
    - [WTF?](#org08f2f8e)


<a id="org60428e5"></a>

# meeting notes August 29, 2021


<a id="org9045b7c"></a>

## hidden agenda


<a id="orgf6c4dca"></a>

### 


<a id="orgba77f78"></a>

## before I forget


<a id="orga421e1e"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org24755cf"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgfb54985"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgae67dec"></a>

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


<a id="org92ed443"></a>

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


<a id="orgc40bfa4"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org08f2f8e"></a>

### WTF?

1.  jonathan worthington code example
