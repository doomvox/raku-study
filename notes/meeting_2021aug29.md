- [meeting notes August 29, 2021](#org47e3b03)
  - [hidden agenda](#org480e3bf)
    - [david christensen](#orgb2c39ce)
    - [jeff](#orgb319957)
  - [before I forget](#orgecdd8f4)
    - [the argument to round might be called "nearest"](#org36b86fe)
    - [lowest common ancestor with raku classes](#org1faec06)
  - [multiple dispatch](#org7282b1c)
    - [standard complaint](#orga02daf3)
    - [using multi-dispatch for "dualmap"](#orgf5ca720)
    - [dualmap status](#orgcbd03ff)
  - [the maybe method (dot question mark operator: ".?")](#orgf4cd177)
    - [Safe call operator](#org1fb0933)
  - [the usual links:](#org09dd947)
    - [meeting notes](#org7a25163)
    - [code examples:](#orgb3a9206)


<a id="org47e3b03"></a>

# meeting notes August 29, 2021


<a id="org480e3bf"></a>

## hidden agenda


<a id="orgb2c39ce"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  network


<a id="orgb319957"></a>

### jeff

1.  pod question?


<a id="orgecdd8f4"></a>

## before I forget


<a id="org36b86fe"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org1faec06"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org7282b1c"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orga02daf3"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="orgf5ca720"></a>

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


<a id="orgcbd03ff"></a>

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


<a id="orgf4cd177"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org1fb0933"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)


<a id="org09dd947"></a>

## the usual links:


<a id="org7a25163"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="orgb3a9206"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>
