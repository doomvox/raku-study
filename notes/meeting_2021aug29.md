- [meeting notes August 29, 2021](#orge67c263)
  - [hidden agenda](#orgbf7e477)
    - [david christensen](#org189cda4)
  - [before I forget](#org1cc8c7c)
    - [the argument to round might be called "nearest"](#orgb03d5ef)
  - [multiple dispatch](#orge1d84cd)
    - [standard complaint](#org207e8af)
    - [using multi-dispatch for "dualmap"](#org306c964)
    - [dualmap status](#orgf65b275)
  - [the maybe method (dot question mark operator: ".?")](#org1d4fb7b)
    - [Safe call operator](#org7add813)
  - [the usual links:](#org95b9dec)
    - [meeting notes](#org8d74749)
    - [code examples:](#orgfa0c7dd)


<a id="orge67c263"></a>

# meeting notes August 29, 2021


<a id="orgbf7e477"></a>

## hidden agenda


<a id="org189cda4"></a>

### david christensen

1.  general perl5 code to walk a structure recursively


<a id="org1cc8c7c"></a>

## before I forget


<a id="orgb03d5ef"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="orge1d84cd"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org207e8af"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org306c964"></a>

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
    
        1.  but the "is default" feature helpsg


<a id="orgf65b275"></a>

### dualmap status

1.  did a rewrite

    1.  dualmap is now more like deepmap
    
        1.  needs a code block as argument
        
        2.  acts on any value of any type
    
    2.  dualmap-numerics
    
        1.  clone of my perl5 project Data::Math
        
            1.  presumes you're working on numeric leaf nodes
            
            2.  allows strings for operations ('+', '\*', '-', '/')
            
            3.  default string handler does what **I** mean,
            
                1.  via OOP interface can use code block instead
    
    3.  still may need more thought for Raku
    
        1.  maybe: any number of code blocks associated with arbitrary types
        
            1.  do **this** with a leaf node that looks like **that**
        
        2.  consider the case of set operations


<a id="org1d4fb7b"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org7add813"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)


<a id="org95b9dec"></a>

## the usual links:


<a id="org8d74749"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgfa0c7dd"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>
