- [meeting notes August 15, 2021](#org66c1c1e)
  - [callbacks](#orgeb8acc6)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org3f2f309)
    - [misc sub-topics:](#org1baaf89)
  - [.round arguments](#org78b4f42)
  - [Data::Dualmap, first release](#orgbca4e4e)
    - [should handle all built-in datatypes](#org152af09)
    - [has most features of my perl5 Data::Math](#orgd5fd6cc)
  - [data classes](#orgb638bb3)
    - [custom classes as data containers (from June 20, 2021)](#orga6e4e89)


<a id="org66c1c1e"></a>

# meeting notes August 15, 2021


<a id="orgeb8acc6"></a>

## callbacks


<a id="org3f2f309"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org1baaf89"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org78b4f42"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgbca4e4e"></a>

## Data::Dualmap, first release


<a id="org152af09"></a>

### should handle all built-in datatypes


<a id="orgd5fd6cc"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgb638bb3"></a>

## data classes


<a id="orga6e4e89"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>
