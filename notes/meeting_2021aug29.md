- [meeting notes August 29, 2021](#orgd5a62bc)
  - [hidden agenda](#orgc037ba1)
    - [david christensen](#org6ef671a)
    - [jeff](#org87500f5)
  - [the round method, currently calls it's argument "scale"](#orgef9fcc1)
    - [the argument to round might be called "nearest"](#orgdd86040)
    - [lowest common ancestor with raku classes](#org832c48f)
  - [multiple dispatch](#org31ad8a4)
    - [standard complaint](#orgdc53d77)
    - [using multi-dispatch for "dualmap"](#org1b1b8d3)
    - [dualmap status](#org1c40499)
  - [the maybe method (dot question mark operator: ".?")](#org0989b38)
    - [Safe call operator](#org52d4039)
  - [the usual links:](#orgc28fab9)
    - [meeting notes](#org3c28efd)
    - [code examples:](#org11b8ace)


<a id="orgd5a62bc"></a>

# meeting notes August 29, 2021


<a id="orgc037ba1"></a>

## hidden agenda


<a id="org6ef671a"></a>

### david christensen

1.  general perl5 code to walk a structure recursively

2.  home network: unifi on linode

    1.  linode: sponsors of perl
    
    2.  unifi controller runs on enginex webserver


<a id="org87500f5"></a>

### jeff

1.  pod question?


<a id="orgef9fcc1"></a>

## the round method, currently calls it's argument "scale"


<a id="orgdd86040"></a>

### the argument to round might be called "nearest"

"round off to the nearest"


<a id="org832c48f"></a>

### lowest common ancestor with raku classes

<https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>


<a id="org31ad8a4"></a>

## multiple dispatch

Larry Wall on Raku:

"We don't actually have types for the benefit of strong typing. That's third place. Second place is we can optimize better. But first place is actually it's there for multiple dispatch."

&#x2013; Erlang & Elixir Factory, 2017

Douglas Crockford:

"But it turns out that strong typing does not eliminate the need for careful testing. And I have found in my work that the sorts of errors that strong type checking finds are not the errors I worry about."

&#x2013; "Javascript: The Good Parts" (2008)


<a id="orgdc53d77"></a>

### standard complaint

1.  we could check whether strong typing helps

    1.  e.g. conduct experiments where teams of programmers compete
    
    2.  but computer "scientists" don't do experiments
    
        1.  not if it means consulting with a social scientists
    
    3.  unverified claims about human cognitive abilities abound


<a id="org1b1b8d3"></a>

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


<a id="org1c40499"></a>

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


<a id="org0989b38"></a>

## the maybe method (dot question mark operator: ".?")

```perl6
my $result = $obj.?method($arg, $arg);

## perhaps an alternate to:

if $obj.can('method') {
   $obj.method( $arg1, $arg2 );
}
```


<a id="org52d4039"></a>

### Safe call operator

1.  "$invocant.?method calls method method on $invocant if it has a method of such name. Otherwise it returns Nil."

2.  <https://docs.raku.org/language/operators#methodop>\_.?

3.  avoids need to check if .can

4.  (from a jonathan worthington code example)


<a id="orgc28fab9"></a>

## the usual links:


<a id="org3c28efd"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug29.md>


<a id="org11b8ace"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug29>
