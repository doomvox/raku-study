- [meeting notes August 15, 2021](#orgde8510c)
  - [callbacks](#orgbebe848)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org577b8a7)
    - [misc sub-topics:](#org8a41ca5)
  - [.round arguments](#org15ad111)
  - [Data::Dualmap, first release](#org767eb74)
    - [should handle all built-in datatypes](#orgdb70fd9)
    - [has most features of my perl5 Data::Math](#orgb9ad726)
  - [data classes](#orga7173f3)
    - [custom classes as data containers (from June 20, 2021)](#org2668f2d)
  - [twigils considered weird](#org712ea0b)
    - [Raku makes sigils an invariant part of a name.](#org29750bf)
    - [Raku now has twigils](#org57de9b1)
  - [david christensen expounds on erlang](#orgd9aa879)


<a id="orgde8510c"></a>

# meeting notes August 15, 2021


<a id="orgbebe848"></a>

## callbacks


<a id="org577b8a7"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org8a41ca5"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org15ad111"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org767eb74"></a>

## Data::Dualmap, first release


<a id="orgdb70fd9"></a>

### should handle all built-in datatypes


<a id="orgb9ad726"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orga7173f3"></a>

## data classes


<a id="org2668f2d"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org712ea0b"></a>

## twigils considered weird


<a id="org29750bf"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org57de9b1"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgd9aa879"></a>

## david christensen expounds on erlang
