- [meeting notes August 15, 2021](#org2531cc5)
  - [callbacks](#org076caec)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgcc8438e)
    - [misc sub-topics:](#org57cf0a9)
  - [.round arguments](#org80a2134)
  - [Data::Dualmap, first release](#orgc97449f)
    - [should handle all built-in datatypes](#org4f376a5)
    - [has most features of my perl5 Data::Math](#org8b1e1f0)
  - [data classes](#org9bb35d6)
    - [custom classes as data containers (from June 20, 2021)](#org55af2dc)
  - [twigils considered weird](#org6acf337)
    - [Raku makes sigils an invariant part of a name.](#org8cfc4e5)
    - [Raku now has twigils](#org1efd028)
  - [david christensen expounds on erlang compared to raku and perl](#orge0a4158)
  - [question about bruce gray's "reading files can't be this simple"](#org88c1ba2)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orga95ffe9)
    - [<https://conf.raku.org/talk/158>](#org3dc3f97)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orga37de20)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org047c539)


<a id="org2531cc5"></a>

# meeting notes August 15, 2021


<a id="org076caec"></a>

## callbacks


<a id="orgcc8438e"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org57cf0a9"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org80a2134"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgc97449f"></a>

## Data::Dualmap, first release


<a id="org4f376a5"></a>

### should handle all built-in datatypes


<a id="org8b1e1f0"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org9bb35d6"></a>

## data classes


<a id="org55af2dc"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org6acf337"></a>

## twigils considered weird


<a id="org8cfc4e5"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org1efd028"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orge0a4158"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org88c1ba2"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orga95ffe9"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org3dc3f97"></a>

### <https://conf.raku.org/talk/158>


<a id="orga37de20"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org047c539"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>
