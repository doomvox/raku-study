- [meeting notes August 29, 2021](#org5551b7b)
  - [hidden agenda](#orgce6c84c)
    - [david christensen](#org7989bdc)
    - [jeff](#org31ed2b2)
  - [the round method, currently calls it's argument "scale"](#orgab026b8)
    - [the argument to round might be called "nearest"](#orga134caf)
    - [lowest common ancestor with raku classes](#org95dd402)
  - [multiple dispatch](#orgb6b1b24)
    - [standard complaint](#orgdeb2fe9)
    - [using multi-dispatch for "dualmap"](#org731a81e)
    - [dualmap status](#orgdb828be)
  - [the maybe method (dot question mark operator: ".?")](#orge2a1aab)
    - [Safe call operator](#org92e5cf5)
  - [the usual links:](#org494e8ff)
    - [meeting notes](#org039983e)
    - [code examples:](#org28b399e)


<a id="org5551b7b"></a>

# meeting notes August 29, 2021


<a id="orgce6c84c"></a>

## hidden agenda


<a id="org7989bdc"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org31ed2b2"></a>

### jeff

1.  pod question?


<a id="orgab026b8"></a>

## the round method, currently calls it's argument "scale"


<a id="orga134caf"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org95dd402"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="orgb6b1b24"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgdeb2fe9"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org731a81e"></a>

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


<a id="orgdb828be"></a>

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


<a id="orge2a1aab"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);
```


<a id="org92e5cf5"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)


<a id="org494e8ff"></a>

## the usual links:


<a id="org039983e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org28b399e"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>
