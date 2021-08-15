- [meeting notes August 15, 2021](#org41a3a87)
  - [callbacks](#orgb7f3c02)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgdf0d28d)
    - [misc sub-topics:](#orgfce431d)
  - [.round arguments](#org8306664)
  - [Data::Dualmap, first release](#org765597f)
    - [should handle all built-in datatypes](#org08d6dd6)
    - [has most features of my perl5 Data::Math](#org1858794)
  - [data classes](#org769c930)
    - [custom classes as data containers (from June 20, 2021)](#orgaf58160)
  - [twigils considered weird](#org6443255)
    - [Raku makes sigils an invariant part of a name.](#org1265d6b)
    - [Raku now has twigils](#org0ff9968)
  - [david christensen expounds on erlang compared to raku and perl](#org3000768)


<a id="org41a3a87"></a>

# meeting notes August 15, 2021


<a id="orgb7f3c02"></a>

## callbacks


<a id="orgdf0d28d"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgfce431d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org8306664"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org765597f"></a>

## Data::Dualmap, first release


<a id="org08d6dd6"></a>

### should handle all built-in datatypes


<a id="org1858794"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org769c930"></a>

## data classes


<a id="orgaf58160"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org6443255"></a>

## twigils considered weird


<a id="org1265d6b"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org0ff9968"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org3000768"></a>

## david christensen expounds on erlang compared to raku and perl
