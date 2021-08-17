- [meeting notes August 15, 2021](#orgf64d517)
  - [callbacks](#orge1b421f)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org8ce94cc)
    - [misc sub-topics:](#org0672b15)
  - [.round arguments, whining about the docs](#org2795355)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org5685bb3)
    - [badly needs code examples.](#orgea1f24b)
    - [naming of "scale" seems strange, hard to improve:](#org18c1392)
  - [Data::Dualmap, near first release](#org6e38e16)
    - [should handle all built-in datatypes](#org0fdd5fb)
    - [has most features of my perl5 Data::Math](#org664fef2)
    - [open question whether it would be better to generalize further](#orgb7a3f78)
  - [data classes](#org1ce8061)
    - [custom classes as data containers (from June 20, 2021)](#org767ce77)
  - [twigils considered weird](#org5f374bb)
    - [Raku makes sigils an invariant part of a name.](#org81903d4)
    - [Raku now has twigils](#orgd8c5ea7)
  - [david christensen expounds on erlang compared to raku and perl](#orgc56c85e)
    - ["representational polymorphic" &#x2013; larry wall](#orge1ceb2e)
  - [question about bruce gray's "reading files can't be this simple"](#orgd4d69f1)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgc19de0c)
    - [<https://conf.raku.org/talk/158>](#org8dc3476)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org4062d1c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org7e7ef74)
  - [the usual links:](#org5bd59ff)
    - [meeting notes](#org96e2c97)
    - [code examples:](#org184c1cf)
  - [fun with raku on freebsd (bruce gray)](#orgcc5b430)


<a id="orgf64d517"></a>

# meeting notes August 15, 2021


<a id="orge1b421f"></a>

## callbacks


<a id="org8ce94cc"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org0672b15"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org2795355"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org5685bb3"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgea1f24b"></a>

### badly needs code examples.


<a id="org18c1392"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org6e38e16"></a>

## Data::Dualmap, near first release


<a id="org0fdd5fb"></a>

### should handle all built-in datatypes


<a id="org664fef2"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgb7a3f78"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org1ce8061"></a>

## data classes


<a id="org767ce77"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org5f374bb"></a>

## twigils considered weird


<a id="org81903d4"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgd8c5ea7"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgc56c85e"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orge1ceb2e"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgd4d69f1"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgc19de0c"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org8dc3476"></a>

### <https://conf.raku.org/talk/158>


<a id="org4062d1c"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org7e7ef74"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org5bd59ff"></a>

## the usual links:


<a id="org96e2c97"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org184c1cf"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgcc5b430"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
