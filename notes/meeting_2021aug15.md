- [meeting notes August 15, 2021](#org6593e27)
  - [callbacks](#orgccc695c)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org5656849)
    - [misc sub-topics:](#orgd5af39c)
  - [.round arguments](#org6887eb4)
  - [Data::Dualmap, first release](#orgf0302b4)
    - [should handle all built-in datatypes](#org37bc56d)
    - [has most features of my perl5 Data::Math](#orgc2241c8)
  - [data classes](#orgd0a9f10)
    - [custom classes as data containers (from June 20, 2021)](#org16d3e5f)
  - [twigils considered weird](#org22a1f76)
    - [Raku makes sigils an invariant part of a name.](#orge9d8497)
    - [Raku now has twigils](#orgeabf471)
  - [david christensen expounds on erlang compared to raku and perl](#org6a1598b)
  - [question about bruce gray's "reading files can't be this simple"](#org8e01b27)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org0eb9721)
    - [<https://conf.raku.org/talk/158>](#org6c34d26)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org8d3d718)


<a id="org6593e27"></a>

# meeting notes August 15, 2021


<a id="orgccc695c"></a>

## callbacks


<a id="org5656849"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgd5af39c"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org6887eb4"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgf0302b4"></a>

## Data::Dualmap, first release


<a id="org37bc56d"></a>

### should handle all built-in datatypes


<a id="orgc2241c8"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgd0a9f10"></a>

## data classes


<a id="org16d3e5f"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org22a1f76"></a>

## twigils considered weird


<a id="orge9d8497"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgeabf471"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org6a1598b"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org8e01b27"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org0eb9721"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org6c34d26"></a>

### <https://conf.raku.org/talk/158>


<a id="org8d3d718"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })
