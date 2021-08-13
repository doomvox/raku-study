- [meeting notes August 15, 2021](#org973efc6)
  - [callbacks](#org8f845a2)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgdb84d19)
    - [misc sub-topics:](#org46540d9)
  - [.round arguments](#org96bef8b)
  - [First Data::Dualmap release](#org3e11260)
    - [should handle all built-in datatypes](#orgc82ae8d)
    - [has most features of my perl5 Data::Math](#org5eb4cf2)


<a id="org973efc6"></a>

# meeting notes August 15, 2021


<a id="org8f845a2"></a>

## callbacks


<a id="orgdb84d19"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org46540d9"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org96bef8b"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org3e11260"></a>

## First Data::Dualmap release


<a id="orgc82ae8d"></a>

### should handle all built-in datatypes


<a id="org5eb4cf2"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)
