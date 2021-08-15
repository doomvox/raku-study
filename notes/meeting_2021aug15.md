- [meeting notes August 15, 2021](#orge1db6e6)
  - [callbacks](#orge77ead0)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org52fae40)
    - [misc sub-topics:](#orgf0861a7)
  - [.round arguments](#org7a88864)
  - [Data::Dualmap, first release](#orgadb818e)
    - [should handle all built-in datatypes](#org1fec1c6)
    - [has most features of my perl5 Data::Math](#orgdb282dd)
  - [data classes](#org1f3bb04)
    - [custom classes as data containers (from June 20, 2021)](#orgcc37f91)
  - [twigils considered weird](#orge61bec8)
    - [Raku makes sigils an invariant part of a name.](#org1f2c2b8)
    - [Raku now has twigils](#org5973d11)
  - [david christensen expounds on erlang compared to raku and perl](#org1e8a863)
  - [question about bruce gray's "reading files can't be this simple"](#org25716ca)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org4f34580)
    - [<https://conf.raku.org/talk/158>](#orgb8d4c8b)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org5709b47)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org285377c)
  - [the usual links:](#org17f1128)
    - [meeting notes](#orgc2688c5)
    - [code examples:](#org2f88592)


<a id="orge1db6e6"></a>

# meeting notes August 15, 2021


<a id="orge77ead0"></a>

## callbacks


<a id="org52fae40"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgf0861a7"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org7a88864"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgadb818e"></a>

## Data::Dualmap, first release


<a id="org1fec1c6"></a>

### should handle all built-in datatypes


<a id="orgdb282dd"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org1f3bb04"></a>

## data classes


<a id="orgcc37f91"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge61bec8"></a>

## twigils considered weird


<a id="org1f2c2b8"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org5973d11"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org1e8a863"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org25716ca"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org4f34580"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgb8d4c8b"></a>

### <https://conf.raku.org/talk/158>


<a id="org5709b47"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org285377c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org17f1128"></a>

## the usual links:


<a id="orgc2688c5"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org2f88592"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>
