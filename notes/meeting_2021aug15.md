- [meeting notes August 15, 2021](#org696f460)
  - [callbacks](#org61dd911)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org3a66690)
    - [misc sub-topics:](#org0e1260d)
  - [.round arguments, whining about the docs](#org9c8a838)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orge69b7a5)
    - [badly needs code examples.](#org9ec97de)
    - [naming of "scale" seems strange, hard to improve:](#org92851e3)
  - [Data::Dualmap, near first release](#org16c04f0)
    - [should handle all built-in datatypes](#org0813dda)
    - [has most features of my perl5 Data::Math](#org63d51e2)
  - [data classes](#org21f33a3)
    - [custom classes as data containers (from June 20, 2021)](#org85174f6)
  - [twigils considered weird](#org06ed240)
    - [Raku makes sigils an invariant part of a name.](#org210aca3)
    - [Raku now has twigils](#orgfc183e1)
  - [david christensen expounds on erlang compared to raku and perl](#org737c8da)
    - ["representational polymorphic" &#x2013; larry wall](#org8ac9852)
  - [question about bruce gray's "reading files can't be this simple"](#org5ddd69c)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org0859444)
    - [<https://conf.raku.org/talk/158>](#orgf90c142)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgdb10de7)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org5f42ea1)
  - [the usual links:](#orgfae8bd3)
    - [meeting notes](#orgc256d09)
    - [code examples:](#org42ebea1)
  - [fun with raku on freebsd (bruce gray)](#org5955e1a)


<a id="org696f460"></a>

# meeting notes August 15, 2021


<a id="org61dd911"></a>

## callbacks


<a id="org3a66690"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org0e1260d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org9c8a838"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orge69b7a5"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org9ec97de"></a>

### badly needs code examples.


<a id="org92851e3"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org16c04f0"></a>

## Data::Dualmap, near first release


<a id="org0813dda"></a>

### should handle all built-in datatypes


<a id="org63d51e2"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org21f33a3"></a>

## data classes


<a id="org85174f6"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org06ed240"></a>

## twigils considered weird


<a id="org210aca3"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgfc183e1"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org737c8da"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org8ac9852"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org5ddd69c"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org0859444"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgf90c142"></a>

### <https://conf.raku.org/talk/158>


<a id="orgdb10de7"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org5f42ea1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgfae8bd3"></a>

## the usual links:


<a id="orgc256d09"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org42ebea1"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org5955e1a"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
