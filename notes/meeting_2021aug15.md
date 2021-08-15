- [meeting notes August 15, 2021](#org9e5dba1)
  - [callbacks](#org18f4bb5)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orge38d3eb)
    - [misc sub-topics:](#org63b6e0b)
  - [.round arguments](#org6bab69d)
  - [Data::Dualmap, first release](#org99435c3)
    - [should handle all built-in datatypes](#org335c904)
    - [has most features of my perl5 Data::Math](#org9e3c56d)
  - [data classes](#orgc8150dc)
    - [custom classes as data containers (from June 20, 2021)](#org44fd3e7)
  - [twigils considered weird](#org257026b)
    - [Raku makes sigils an invariant part of a name.](#orgf98aa11)
    - [Raku now has twigils](#org2ad1a6a)
  - [david christensen expounds on erlang compared to raku and perl](#org1833181)
  - [question about bruce gray's "reading files can't be this simple"](#orgde9d056)
    - [](#org1b46f8d)


<a id="org9e5dba1"></a>

# meeting notes August 15, 2021


<a id="org18f4bb5"></a>

## callbacks


<a id="orge38d3eb"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org63b6e0b"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org6bab69d"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org99435c3"></a>

## Data::Dualmap, first release


<a id="org335c904"></a>

### should handle all built-in datatypes


<a id="org9e3c56d"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgc8150dc"></a>

## data classes


<a id="org44fd3e7"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org257026b"></a>

## twigils considered weird


<a id="orgf98aa11"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org2ad1a6a"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org1833181"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgde9d056"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org1b46f8d"></a>

###
