- [meeting notes August 15, 2021](#org99c189b)
  - [callbacks](#orgc2c4844)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgbff3778)
    - [misc sub-topics:](#org39d869e)
  - [.round arguments, whining about the docs](#org4ad770b)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org3c828ed)
    - [badly needs code examples.](#org212092e)
    - [naming of "scale" seems strange, hard to improve:](#org660d4e0)
  - [Data::Dualmap, near first release](#org67978d2)
    - [should handle all built-in datatypes](#org37e6fc4)
    - [has most features of my perl5 Data::Math](#org3bd2c9f)
    - [open question whether it would be better to generalize further](#org356f863)
  - [data classes](#org6ccd77e)
    - [custom classes as data containers (from June 20, 2021)](#org96561a4)
  - [twigils considered weird](#org931add0)
    - [Raku makes sigils an invariant part of a name.](#org52b4a3b)
    - [Raku now has twigils](#org778272e)
  - [david christensen expounds on erlang compared to raku and perl](#org04c500c)
    - ["representational polymorphic" &#x2013; larry wall](#org82685d3)
  - [question about bruce gray's "reading files can't be this simple"](#org97d9ef3)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org2d778d0)
    - [<https://conf.raku.org/talk/158>](#orgc93f1d4)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org1d23fc8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org8a97a34)
  - [the usual links:](#org9c2a191)
    - [meeting notes](#org5c18094)
    - [code examples:](#org5d77526)
  - [fun with raku on freebsd (bruce gray)](#orge876058)


<a id="org99c189b"></a>

# meeting notes August 15, 2021


<a id="orgc2c4844"></a>

## callbacks


<a id="orgbff3778"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org39d869e"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org4ad770b"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org3c828ed"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org212092e"></a>

### badly needs code examples.


<a id="org660d4e0"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org67978d2"></a>

## Data::Dualmap, near first release


<a id="org37e6fc4"></a>

### should handle all built-in datatypes


<a id="org3bd2c9f"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org356f863"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org6ccd77e"></a>

## data classes


<a id="org96561a4"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org931add0"></a>

## twigils considered weird


<a id="org52b4a3b"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org778272e"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org04c500c"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org82685d3"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org97d9ef3"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org2d778d0"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgc93f1d4"></a>

### <https://conf.raku.org/talk/158>


<a id="org1d23fc8"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org8a97a34"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org9c2a191"></a>

## the usual links:


<a id="org5c18094"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org5d77526"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orge876058"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
