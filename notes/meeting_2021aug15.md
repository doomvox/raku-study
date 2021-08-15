- [meeting notes August 15, 2021](#org0ea2ba7)
  - [callbacks](#orga940413)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org6cc714f)
    - [misc sub-topics:](#orgcd86f1d)
  - [.round arguments](#org2cd372b)
  - [Data::Dualmap, first release](#orgaaaffb3)
    - [should handle all built-in datatypes](#org4e88e96)
    - [has most features of my perl5 Data::Math](#orgd2d4193)
  - [data classes](#orgd5e3b43)
    - [custom classes as data containers (from June 20, 2021)](#org240d5d2)
  - [twigils considered weird](#org4c1c4b1)
    - [Raku makes sigils an invariant part of a name.](#orgf7aebbe)
    - [Raku now has twigils](#org364fe80)
  - [david christensen expounds on erlang compared to raku and perl](#org19bde97)
  - [question about bruce grey's "reading files can't be this simple"](#org10b6c6a)
    - [](#orga53e72f)


<a id="org0ea2ba7"></a>

# meeting notes August 15, 2021


<a id="orga940413"></a>

## callbacks


<a id="org6cc714f"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgcd86f1d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org2cd372b"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgaaaffb3"></a>

## Data::Dualmap, first release


<a id="org4e88e96"></a>

### should handle all built-in datatypes


<a id="orgd2d4193"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgd5e3b43"></a>

## data classes


<a id="org240d5d2"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4c1c4b1"></a>

## twigils considered weird


<a id="orgf7aebbe"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org364fe80"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org19bde97"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org10b6c6a"></a>

## question about bruce grey's "reading files can't be this simple"


<a id="orga53e72f"></a>

###
