- [meeting notes August 15, 2021](#org305851a)
  - [callbacks](#org01ec5c7)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orge4023e3)
    - [misc sub-topics:](#orga6d174d)
  - [.round arguments](#orga28fa15)
  - [Data::Dualmap, first release](#org35b2579)
    - [should handle all built-in datatypes](#org300088c)
    - [has most features of my perl5 Data::Math](#org23c821a)
  - [data classes](#orgf58cb29)
    - [custom classes as data containers (from June 20, 2021)](#org9df2aa6)
  - [twigils considered weird](#orgc777a73)
    - [Raku makes sigils an invariant part of a name.](#orgcd1d836)
    - [Raku now has twigils](#orgc6bde27)
  - [david christensen expounds on erlang compared to raku and perl](#org45f74ed)


<a id="org305851a"></a>

# meeting notes August 15, 2021


<a id="org01ec5c7"></a>

## callbacks


<a id="orge4023e3"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orga6d174d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orga28fa15"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org35b2579"></a>

## Data::Dualmap, first release


<a id="org300088c"></a>

### should handle all built-in datatypes


<a id="org23c821a"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgf58cb29"></a>

## data classes


<a id="org9df2aa6"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgc777a73"></a>

## twigils considered weird


<a id="orgcd1d836"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgc6bde27"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org45f74ed"></a>

## david christensen expounds on erlang compared to raku and perl
