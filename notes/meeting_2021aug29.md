- [meeting notes August 29, 2021](#orgb9ae658)
  - [hidden agenda](#org9fee8de)
    - [](#org2c333c8)
  - [before I forget](#org3903859)
    - [the argument to round might be called "nearest"](#org8fc62ac)
  - [multiple dispatch](#orgab3e9fa)
    - [standard complaint](#org637b42c)
    - [using multi-dispatch for "dualmap"](#org8ab1a29)
    - [dualmap status](#org1466e32)
  - [the maybe method (dot question mark operator: ".?")](#org2ccc9d2)
    - [Safe call operator](#org3e3fdc9)
    - [WTF?](#orge274398)


<a id="orgb9ae658"></a>

# meeting notes August 29, 2021


<a id="org9fee8de"></a>

## hidden agenda


<a id="org2c333c8"></a>

### 


<a id="org3903859"></a>

## before I forget


<a id="org8fc62ac"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orgab3e9fa"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org637b42c"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scienctist
    
    3.  unverified claims about human cognitive abilities abound


<a id="org8ab1a29"></a>

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


<a id="org1466e32"></a>

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
    
    3.  still may need more thought for Raku
    
        1.  maybe: any number of code blocks associated with arbitrary types


<a id="org2ccc9d2"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org3e3fdc9"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can


<a id="orge274398"></a>

### WTF?

1.  from a jonathan worthington code example
