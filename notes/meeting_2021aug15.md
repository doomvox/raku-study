- [meeting notes August 15, 2021](#orgfbf35cd)
  - [callbacks](#org31282cb)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgb2ddfec)
    - [misc sub-topics:](#orgf7b066b)
  - [.round arguments, whining about the docs](#orga1781fc)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orge0b9abb)
    - [badly needs code examples.](#orgea8bb34)
    - [naming of "scale" seems strange, hard to improve:](#org6965f1d)
  - [Data::Dualmap, near first release](#orgc67637d)
    - [should handle all built-in datatypes](#org566e1f2)
    - [has most features of my perl5 Data::Math](#org95e6537)
    - [some discussion of whether it would be better to generalize further](#orgfba9279)
  - [data classes](#orge755a3b)
    - [custom classes as data containers (from June 20, 2021)](#org71fa13f)
  - [twigils considered weird](#org65dc6fd)
    - [Raku makes sigils an invariant part of a name.](#orgab32dc9)
    - [Raku now has twigils](#orgf54085d)
  - [david christensen expounds on erlang compared to raku and perl](#org4eca758)
    - ["representational polymorphic" &#x2013; larry wall](#org8c10a55)
  - [question about bruce gray's "reading files can't be this simple"](#org4d1562d)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org0556dc5)
    - [<https://conf.raku.org/talk/158>](#orge3fb70b)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org7c5e836)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org884148c)
  - [the usual links:](#orge61ca72)
    - [meeting notes](#org4ef6d66)
    - [code examples:](#org957ad74)
  - [fun with raku on freebsd (bruce gray)](#orge0896bf)


<a id="orgfbf35cd"></a>

# meeting notes August 15, 2021


<a id="org31282cb"></a>

## callbacks


<a id="orgb2ddfec"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgf7b066b"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orga1781fc"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orge0b9abb"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgea8bb34"></a>

### badly needs code examples.


<a id="org6965f1d"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgc67637d"></a>

## Data::Dualmap, near first release


<a id="org566e1f2"></a>

### should handle all built-in datatypes


<a id="org95e6537"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)


<a id="orgfba9279"></a>

### some discussion of whether it would be better to generalize further

1.  dualmap suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orge755a3b"></a>

## data classes


<a id="org71fa13f"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org65dc6fd"></a>

## twigils considered weird


<a id="orgab32dc9"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgf54085d"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org4eca758"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org8c10a55"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org4d1562d"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org0556dc5"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orge3fb70b"></a>

### <https://conf.raku.org/talk/158>


<a id="org7c5e836"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org884148c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orge61ca72"></a>

## the usual links:


<a id="org4ef6d66"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org957ad74"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orge0896bf"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
