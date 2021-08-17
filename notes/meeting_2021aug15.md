- [meeting notes August 15, 2021](#orge2637a0)
  - [callbacks](#orgbba12ce)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgc9f4ae5)
    - [misc sub-topics:](#org4ce2a2d)
  - [.round arguments, whining about the docs](#org1daebc6)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orga66d3eb)
    - [badly needs code examples.](#org1dc832d)
    - [naming of "scale" seems strange, hard to improve:](#orgbc5369d)
  - [Data::Dualmap, near first release](#orgf246387)
    - [should handle all built-in datatypes](#org107abca)
    - [has most features of my perl5 Data::Math](#orgc091e9d)
    - [open question whether it would be better to generalize further](#orga961375)
  - [data classes](#orgd13370f)
    - [custom classes as data containers (from June 20, 2021)](#orgf53c1d0)
  - [twigils considered weird](#org564e983)
    - [Raku makes sigils an invariant part of a name.](#org79573dd)
    - [Raku now has twigils](#orgfd29ef3)
  - [david christensen expounds on erlang compared to raku and perl](#org38c1cd5)
    - ["representational polymorphic" &#x2013; larry wall](#org12c9be8)
  - [question about bruce gray's "reading files can't be this simple"](#orgf62beab)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org660ac19)
    - [<https://conf.raku.org/talk/158>](#org0aa47a2)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org286f434)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgf11c91d)
  - [the usual links:](#org19cfa13)
    - [meeting notes](#orgf26384c)
    - [code examples:](#org286e3de)
  - [fun with raku on freebsd (bruce gray)](#org3203718)


<a id="orge2637a0"></a>

# meeting notes August 15, 2021


<a id="orgbba12ce"></a>

## callbacks


<a id="orgc9f4ae5"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org4ce2a2d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org1daebc6"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orga66d3eb"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org1dc832d"></a>

### badly needs code examples.


<a id="orgbc5369d"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgf246387"></a>

## Data::Dualmap, near first release


<a id="org107abca"></a>

### should handle all built-in datatypes


<a id="orgc091e9d"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orga961375"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgd13370f"></a>

## data classes


<a id="orgf53c1d0"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org564e983"></a>

## twigils considered weird


<a id="org79573dd"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgfd29ef3"></a>

### Raku now has twigils

1.  they can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org38c1cd5"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org12c9be8"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgf62beab"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org660ac19"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org0aa47a2"></a>

### <https://conf.raku.org/talk/158>


<a id="org286f434"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgf11c91d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org19cfa13"></a>

## the usual links:


<a id="orgf26384c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org286e3de"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org3203718"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
