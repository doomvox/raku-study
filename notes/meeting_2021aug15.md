- [meeting notes August 15, 2021](#org2cc6791)
  - [callbacks](#orgf0db9cf)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgfc5169c)
    - [misc sub-topics:](#orgcd7d1bf)
  - [.round arguments, whining about the docs](#orgd32ff1e)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org763b096)
    - [badly needs code examples.](#org7cbc605)
    - [naming of "scale" seems strange, hard to improve:](#orgc950f98)
  - [Data::Dualmap, near first release](#org80379a0)
    - [should handle all built-in datatypes](#orge1e3b07)
    - [has most features of my perl5 Data::Math](#orgdbc84a0)
    - [some discussion of whether it would be better to generalize further](#orgbaf3a1f)
  - [data classes](#org7a2522b)
    - [custom classes as data containers (from June 20, 2021)](#orgd003203)
  - [twigils considered weird](#org9f48a40)
    - [Raku makes sigils an invariant part of a name.](#org8617106)
    - [Raku now has twigils](#orgcb01470)
  - [david christensen expounds on erlang compared to raku and perl](#org7c19c79)
    - ["representational polymorphic" &#x2013; larry wall](#orgaf9b89c)
  - [question about bruce gray's "reading files can't be this simple"](#orgeb7cb6b)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org6a09b59)
    - [<https://conf.raku.org/talk/158>](#org2ba31be)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org453c526)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orge4bf8d2)
  - [the usual links:](#org8a0fca5)
    - [meeting notes](#org8f8442b)
    - [code examples:](#org54c8bae)
  - [fun with raku on freebsd (bruce gray)](#orgc4ed39d)


<a id="org2cc6791"></a>

# meeting notes August 15, 2021


<a id="orgf0db9cf"></a>

## callbacks


<a id="orgfc5169c"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgcd7d1bf"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgd32ff1e"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org763b096"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org7cbc605"></a>

### badly needs code examples.


<a id="orgc950f98"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org80379a0"></a>

## Data::Dualmap, near first release


<a id="orge1e3b07"></a>

### should handle all built-in datatypes


<a id="orgdbc84a0"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgbaf3a1f"></a>

### some discussion of whether it would be better to generalize further

1.  dualmap suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org7a2522b"></a>

## data classes


<a id="orgd003203"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org9f48a40"></a>

## twigils considered weird


<a id="org8617106"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgcb01470"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org7c19c79"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgaf9b89c"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgeb7cb6b"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org6a09b59"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org2ba31be"></a>

### <https://conf.raku.org/talk/158>


<a id="org453c526"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orge4bf8d2"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org8a0fca5"></a>

## the usual links:


<a id="org8f8442b"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org54c8bae"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgc4ed39d"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
