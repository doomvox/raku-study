- [meeting notes August 15, 2021](#org8a8110d)
  - [callbacks](#orgd4feafb)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org5dfdcb2)
    - [misc sub-topics:](#org17f0f11)
  - [.round arguments](#orgf91146c)
  - [Data::Dualmap, first release](#org66d3bce)
    - [should handle all built-in datatypes](#org8529c4f)
    - [has most features of my perl5 Data::Math](#org429aa82)
  - [data classes](#org3aa9cc1)
    - [custom classes as data containers (from June 20, 2021)](#orgb3003e1)
  - [twigils considered weird](#orgc56a284)
    - [Raku makes sigils an invariant part of a name.](#orga742cb0)
    - [Raku now has twigils](#orgb8a3852)
  - [david christensen expounds on erlang compared to raku and perl](#orgc4384f2)
  - [question about bruce gray's "reading files can't be this simple"](#org7dc27c1)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgce61dcc)
    - [<https://conf.raku.org/talk/158>](#org788cdee)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orga708b1e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/bruce_gray_io_lines_etc.raku>](#org1c20c9a)


<a id="org8a8110d"></a>

# meeting notes August 15, 2021


<a id="orgd4feafb"></a>

## callbacks


<a id="org5dfdcb2"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org17f0f11"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgf91146c"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org66d3bce"></a>

## Data::Dualmap, first release


<a id="org8529c4f"></a>

### should handle all built-in datatypes


<a id="org429aa82"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org3aa9cc1"></a>

## data classes


<a id="orgb3003e1"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgc56a284"></a>

## twigils considered weird


<a id="orga742cb0"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgb8a3852"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgc4384f2"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org7dc27c1"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgce61dcc"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org788cdee"></a>

### <https://conf.raku.org/talk/158>


<a id="orga708b1e"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org1c20c9a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/bruce_gray_io_lines_etc.raku>
