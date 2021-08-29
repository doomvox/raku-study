- [meeting notes August 29, 2021](#org35012e4)
  - [hidden agenda](#org537fd69)
    - [david christensen](#org9d737b8)
    - [jeff](#orga487637)
  - [before I forget](#orgc1d1af4)
    - [the argument to round might be called "nearest"](#org1b55b93)
    - [lowest common ancestor with raku classes](#org295f196)
  - [multiple dispatch](#orge392ec3)
    - [standard complaint](#org42163c1)
    - [using multi-dispatch for "dualmap"](#org9c6c65d)
    - [dualmap status](#orgd15a274)
  - [the maybe method (dot question mark operator: ".?")](#org6abe668)
    - [Safe call operator](#org74a7177)
  - [the usual links:](#orged22906)
    - [meeting notes](#org818be63)
    - [code examples:](#org055ce98)


<a id="org35012e4"></a>

# meeting notes August 29, 2021


<a id="org537fd69"></a>

## hidden agenda


<a id="org9d737b8"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  network&#x2013; unifi on linode

    1.  linode sponsors of perl


<a id="orga487637"></a>

### jeff

1.  pod question?


<a id="orgc1d1af4"></a>

## before I forget


<a id="org1b55b93"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org295f196"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orge392ec3"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="org42163c1"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org9c6c65d"></a>

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


<a id="orgd15a274"></a>

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


<a id="org6abe668"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org74a7177"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)


<a id="orged22906"></a>

## the usual links:


<a id="org818be63"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org055ce98"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>
