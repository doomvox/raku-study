- [meeting notes August 15, 2021](#orgdb93040)
  - [callbacks](#orga52b8cc)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgcded26f)
    - [misc sub-topics:](#org34aada3)
  - [.round arguments, whining about the docs](#org3ffa404)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org3791e25)
    - [badly needs code examples.](#org7d5f00a)
    - [naming of "scale" seems strange, hard to improve:](#orge203bc6)
  - [Data::Dualmap, near first release](#org00ca793)
    - [should handle all built-in datatypes](#org50ed3bd)
    - [has most features of my perl5 Data::Math](#org57eee74)
    - [open question whether it would be better to generalize further](#org72d9b97)
  - [data classes](#orgdc39f02)
    - [custom classes as data containers (from June 20, 2021)](#org3309cc3)
  - [twigils considered weird](#org764a059)
    - [Raku makes sigils an invariant part of a name.](#orgafe8893)
    - [Raku now has twigils](#orgc623183)
  - [david christensen expounds on erlang compared to raku and perl](#org91b7f3b)
    - ["representational polymorphic" &#x2013; larry wall](#org3b28b94)
  - [question about bruce gray's "reading files can't be this simple"](#org0f7c516)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org50c9b86)
    - [<https://conf.raku.org/talk/158>](#org642ef99)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgc0d0081)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orga842ca6)
  - [the usual links:](#orgfb621d1)
    - [meeting notes](#orgcc70498)
    - [code examples:](#orgac7f542)
  - [fun with raku on freebsd (bruce gray)](#org1ea406f)


<a id="orgdb93040"></a>

# meeting notes August 15, 2021


<a id="orga52b8cc"></a>

## callbacks


<a id="orgcded26f"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org34aada3"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org3ffa404"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org3791e25"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org7d5f00a"></a>

### badly needs code examples.


<a id="orge203bc6"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org00ca793"></a>

## Data::Dualmap, near first release


<a id="org50ed3bd"></a>

### should handle all built-in datatypes


<a id="org57eee74"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org72d9b97"></a>

### open question whether it would be better to generalize further

1.  dualmap suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgdc39f02"></a>

## data classes


<a id="org3309cc3"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org764a059"></a>

## twigils considered weird


<a id="orgafe8893"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgc623183"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org91b7f3b"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org3b28b94"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org0f7c516"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org50c9b86"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org642ef99"></a>

### <https://conf.raku.org/talk/158>


<a id="orgc0d0081"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orga842ca6"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgfb621d1"></a>

## the usual links:


<a id="orgcc70498"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgac7f542"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org1ea406f"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
