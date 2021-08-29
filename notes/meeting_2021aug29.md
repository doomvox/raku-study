- [meeting notes August 29, 2021](#org6d64be8)
  - [hidden agenda](#org1f34b2e)
    - [](#org8eafc01)
  - [before I forget](#orgb3e7825)
    - [the argument to round might be called "nearest"](#orgd3a9d98)
  - [multiple dispatch](#orge037535)
    - [standard complaint](#org473d6e9)
    - [using multi-dispatch for "dualmap"](#org350be38)
    - [dualmap status](#org0c8de70)
  - [the maybe method (dot question mark operator: ".?")](#org9918f95)
    - [Safe call operator](#org38d0d2d)
    - [WTF?](#orgc96a6b5)


<a id="org6d64be8"></a>

# meeting notes August 29, 2021


<a id="org1f34b2e"></a>

## hidden agenda


<a id="org8eafc01"></a>

### 


<a id="orgb3e7825"></a>

## before I forget


<a id="orgd3a9d98"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orge037535"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org473d6e9"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org350be38"></a>

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


<a id="org0c8de70"></a>

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


<a id="org9918f95"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org38d0d2d"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can


<a id="orgc96a6b5"></a>

### WTF?

1.  from a jonathan worthington code example
