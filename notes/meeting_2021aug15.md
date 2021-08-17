- [meeting notes August 15, 2021](#org9d79cfb)
  - [callbacks](#org45631d7)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orga079479)
    - [misc sub-topics:](#org45f1d2e)
  - [.round arguments, whining about the docs](#orgbdd4d38)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgfff9f7d)
    - [badly needs code examples.](#org26e08fc)
    - [naming of "scale" seems strange, hard to improve:](#orgfa0ed13)
  - [Data::Dualmap, near first release](#orgcb445cb)
    - [should handle all built-in datatypes](#org3d063aa)
    - [has most features of my perl5 Data::Math](#orgb32d872)
    - [open question whether it would be better to generalize further](#org7ffa8a0)
  - [data classes](#orgdc4735f)
    - [custom classes as data containers (from June 20, 2021)](#org3f87951)
  - [twigils considered weird](#orgbf9266d)
    - [Raku makes sigils an invariant part of a name.](#org80ec9f9)
    - [Raku now has twigils](#org386f0d5)
  - [david christensen expounds on erlang compared to raku and perl](#org323ed66)
    - ["representational polymorphic" &#x2013; larry wall](#org5a42c31)
  - [question about bruce gray's "reading files can't be this simple"](#org961a744)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgfe3d925)
    - [<https://conf.raku.org/talk/158>](#org5d5cf5b)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgf7a3087)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org981a07d)
  - [the usual links:](#org39be9f0)
    - [meeting notes](#org864d167)
    - [code examples:](#org04661e9)
  - [fun with raku on freebsd (bruce gray)](#orgfb1a924)


<a id="org9d79cfb"></a>

# meeting notes August 15, 2021


<a id="org45631d7"></a>

## callbacks


<a id="orga079479"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org45f1d2e"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgbdd4d38"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgfff9f7d"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org26e08fc"></a>

### badly needs code examples.


<a id="orgfa0ed13"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgcb445cb"></a>

## Data::Dualmap, near first release


<a id="org3d063aa"></a>

### should handle all built-in datatypes


<a id="orgb32d872"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org7ffa8a0"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgdc4735f"></a>

## data classes


<a id="org3f87951"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgbf9266d"></a>

## twigils considered weird


<a id="org80ec9f9"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org386f0d5"></a>

### Raku now has twigils

1.  they can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!hidden;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);
    
    4.  placeholder vars
    
        { $<sup>a</sup> eq $<sup>b</sup> || $a ?? "$a|$b" }


<a id="org323ed66"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org5a42c31"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org961a744"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgfe3d925"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org5d5cf5b"></a>

### <https://conf.raku.org/talk/158>


<a id="orgf7a3087"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org981a07d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org39be9f0"></a>

## the usual links:


<a id="org864d167"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org04661e9"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgfb1a924"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
