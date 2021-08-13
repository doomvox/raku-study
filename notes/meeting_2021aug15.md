- [meeting notes August 15, 2021](#orgc0fe7e2)
  - [callbacks](#orgb827eff)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgaeab606)
    - [misc sub-topics:](#orga37eb3a)
  - [.round arguments](#orgf500ba7)
  - [Data::Dualmap, first release](#org678be71)
    - [should handle all built-in datatypes](#orgedca00c)
    - [has most features of my perl5 Data::Math](#org7e420a6)


<a id="orgc0fe7e2"></a>

# meeting notes August 15, 2021


<a id="orgb827eff"></a>

## callbacks


<a id="orgaeab606"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orga37eb3a"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgf500ba7"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org678be71"></a>

## Data::Dualmap, first release


<a id="orgedca00c"></a>

### should handle all built-in datatypes


<a id="org7e420a6"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)
