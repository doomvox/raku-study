- [meeting notes August 15, 2021](#org848d6ec)
  - [callbacks](#org09dc767)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgf1c1135)
    - [misc sub-topics:](#org42e63a9)
  - [.round arguments](#orgbe87077)
  - [Data::Dualmap, first release](#orgf328547)
    - [should handle all built-in datatypes](#orge4a4012)
    - [has most features of my perl5 Data::Math](#org9cbb042)
  - [data classes](#orgcb9cfa7)
    - [custom classes as data containers (from June 20, 2021)](#org9fbe36d)
  - [twigils considered weird](#org157f540)
    - [Raku makes sigils an invariant part of a name.](#org31caf42)
    - [Raku now has twigils](#orgc43218c)


<a id="org848d6ec"></a>

# meeting notes August 15, 2021


<a id="org09dc767"></a>

## callbacks


<a id="orgf1c1135"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org42e63a9"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgbe87077"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgf328547"></a>

## Data::Dualmap, first release


<a id="orge4a4012"></a>

### should handle all built-in datatypes


<a id="org9cbb042"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgcb9cfa7"></a>

## data classes


<a id="org9fbe36d"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org157f540"></a>

## twigils considered weird


<a id="org31caf42"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgc43218c"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);
