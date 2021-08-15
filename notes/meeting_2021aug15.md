- [meeting notes August 15, 2021](#org69b6350)
  - [callbacks](#orgaa5b532)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orge3f0016)
    - [misc sub-topics:](#orgd477382)
  - [.round arguments](#org0f59e03)
  - [Data::Dualmap, first release](#org2a587be)
    - [should handle all built-in datatypes](#orge9fceb4)
    - [has most features of my perl5 Data::Math](#org7e2c174)
  - [data classes](#org667a273)
    - [custom classes as data containers (from June 20, 2021)](#orgde4c277)
  - [twigils considered weird](#orgda356a3)
    - [Raku makes sigils an invariant part of a name.](#org1ba00a2)
    - [Raku now has twigils](#orgf78c78d)


<a id="org69b6350"></a>

# meeting notes August 15, 2021


<a id="orgaa5b532"></a>

## callbacks


<a id="orge3f0016"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgd477382"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org0f59e03"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org2a587be"></a>

## Data::Dualmap, first release


<a id="orge9fceb4"></a>

### should handle all built-in datatypes


<a id="org7e2c174"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org667a273"></a>

## data classes


<a id="orgde4c277"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgda356a3"></a>

## twigils considered weird


<a id="org1ba00a2"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgf78c78d"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);
