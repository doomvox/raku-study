- [meeting notes August 15, 2021](#orgb804270)
  - [callbacks](#orgf4e96c9)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org6f9498c)
    - [misc sub-topics:](#org7cbe4da)
  - [.round arguments](#orgdad12cf)
  - [Data::Dualmap, first release](#org1d7c25f)
    - [should handle all built-in datatypes](#org7958a06)
    - [has most features of my perl5 Data::Math](#org0a262eb)
  - [data classes](#org2185c31)
    - [custom classes as data containers](#org800683c)


<a id="orgb804270"></a>

# meeting notes August 15, 2021


<a id="orgf4e96c9"></a>

## callbacks


<a id="org6f9498c"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org7cbe4da"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgdad12cf"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org1d7c25f"></a>

## Data::Dualmap, first release


<a id="org7958a06"></a>

### should handle all built-in datatypes


<a id="org0a262eb"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org2185c31"></a>

## data classes


<a id="org800683c"></a>

### custom classes as data containers
