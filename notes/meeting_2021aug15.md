- [meeting notes August 15, 2021](#org8c345b4)
  - [callbacks](#orgff8dc04)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgfb71dc9)
    - [misc sub-topics:](#org2eb0c28)
  - [.round arguments](#org47b6ab7)
  - [Data::Dualmap, first release](#org904a51e)
    - [should handle all built-in datatypes](#org38057ba)
    - [has most features of my perl5 Data::Math](#org8f9871f)
  - [data classes](#org9d93e49)
    - [custom classes as data containers (from June 20, 2021)](#orgb2b3731)
  - [twigils considered weird](#org438488f)
    - [Raku makes sigils an invariant part of a name.](#org9fc71da)
    - [Raku now has twigils](#orge5a2821)
  - [david christensen expounds on erlang compared to raku and perl](#orgc5de496)
  - [question about bruce gray's "reading files can't be this simple"](#orga1ecfa7)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org6e66964)
    - [<https://conf.raku.org/talk/158>](#org17fc6d6)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgaf2b24f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/bruce_gray_io_lines_etc.raku>](#org2daefb1)


<a id="org8c345b4"></a>

# meeting notes August 15, 2021


<a id="orgff8dc04"></a>

## callbacks


<a id="orgfb71dc9"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org2eb0c28"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org47b6ab7"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org904a51e"></a>

## Data::Dualmap, first release


<a id="org38057ba"></a>

### should handle all built-in datatypes


<a id="org8f9871f"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org9d93e49"></a>

## data classes


<a id="orgb2b3731"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org438488f"></a>

## twigils considered weird


<a id="org9fc71da"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orge5a2821"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgc5de496"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orga1ecfa7"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org6e66964"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org17fc6d6"></a>

### <https://conf.raku.org/talk/158>


<a id="orgaf2b24f"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org2daefb1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/bruce_gray_io_lines_etc.raku>
