- [meeting notes August 15, 2021](#org0b73753)
  - [callbacks](#org2e17b8c)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org14acab1)
    - [misc sub-topics:](#org9db231d)
  - [.round arguments](#org1b90e3d)
  - [Data::Dualmap, first release](#org9a61105)
    - [should handle all built-in datatypes](#orga5c1ff3)
    - [has most features of my perl5 Data::Math](#orgab49304)
  - [data classes](#org8f00181)
    - [custom classes as data containers (from June 20, 2021)](#org7593169)
  - [twigils considered weird](#org132cd22)
    - [Raku makes sigils an invariant part of a name.](#orgd678452)
    - [Raku now has twigils](#org7a9d911)
  - [david christensen expounds on erlang compared to raku and perl](#org46e2397)
  - [question about bruce grey](#orgb299575)


<a id="org0b73753"></a>

# meeting notes August 15, 2021


<a id="org2e17b8c"></a>

## callbacks


<a id="org14acab1"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org9db231d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org1b90e3d"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org9a61105"></a>

## Data::Dualmap, first release


<a id="orga5c1ff3"></a>

### should handle all built-in datatypes


<a id="orgab49304"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org8f00181"></a>

## data classes


<a id="org7593169"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org132cd22"></a>

## twigils considered weird


<a id="orgd678452"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org7a9d911"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org46e2397"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgb299575"></a>

## question about bruce grey
