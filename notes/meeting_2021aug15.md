- [meeting notes August 15, 2021](#orgd95fb25)
  - [callbacks](#orgf6530b4)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orga6fded1)
    - [misc sub-topics:](#org779ab48)
  - [.round arguments, whining about the docs](#org394eeb7)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgb9ee06a)
    - [badly needs code examples.](#org43e3c16)
    - [naming of "scale" seems strange, hard to improve:](#org0c3a695)
  - [Data::Dualmap, near first release](#orga6b3688)
    - [should handle all built-in datatypes](#org07f9e8a)
    - [has most features of my perl5 Data::Math](#org73c6b30)
    - [open question whether it would be better to generalize further](#org24dc8eb)
  - [data classes](#org3d628c7)
    - [custom classes as data containers (from June 20, 2021)](#orgfffaa90)
  - [twigils considered weird](#org2da2469)
    - [Raku makes sigils an invariant part of a name.](#org94b2861)
    - [Raku now has twigils](#org73ea2a4)
  - [david christensen expounds on erlang compared to raku and perl](#orgbee5ce4)
    - ["representational polymorphic" &#x2013; larry wall](#org17601d7)
  - [question about bruce gray's "reading files can't be this simple"](#orgac82bac)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org3959b64)
    - [<https://conf.raku.org/talk/158>](#org562ec60)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgb6ec1a2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org931be8b)
  - [the usual links:](#org4f0a5b2)
    - [meeting notes](#org442133d)
    - [code examples:](#org40082fd)
  - [fun with raku on freebsd (bruce gray)](#orgbb83036)


<a id="orgd95fb25"></a>

# meeting notes August 15, 2021


<a id="orgf6530b4"></a>

## callbacks


<a id="orga6fded1"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org779ab48"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org394eeb7"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgb9ee06a"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org43e3c16"></a>

### badly needs code examples.


<a id="org0c3a695"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orga6b3688"></a>

## Data::Dualmap, near first release


<a id="org07f9e8a"></a>

### should handle all built-in datatypes


<a id="org73c6b30"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org24dc8eb"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org3d628c7"></a>

## data classes


<a id="orgfffaa90"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2da2469"></a>

## twigils considered weird


<a id="org94b2861"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org73ea2a4"></a>

### Raku now has twigils

1.  they can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!hidden;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgbee5ce4"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org17601d7"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgac82bac"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org3959b64"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org562ec60"></a>

### <https://conf.raku.org/talk/158>


<a id="orgb6ec1a2"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org931be8b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org4f0a5b2"></a>

## the usual links:


<a id="org442133d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org40082fd"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgbb83036"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
