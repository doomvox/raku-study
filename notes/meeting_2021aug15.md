- [meeting notes August 15, 2021](#org919b37a)
  - [callbacks](#org1bb709b)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org23b1c7c)
    - [misc sub-topics:](#org67358e7)
  - [.round arguments, whining about the docs](#orgbcaa7ed)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org96e7f46)
    - [badly needs code examples.](#org0b6ca10)
    - [naming of "scale" seems strange, hard to improve:](#org292ef20)
  - [Data::Dualmap, near first release](#org4ea54e4)
    - [should handle all built-in datatypes](#org01a2e06)
    - [has most features of my perl5 Data::Math](#org9616a93)
    - [open question whether it would be better to generalize further](#org9c08a8d)
  - [data classes](#org10955f2)
    - [custom classes as data containers (from June 20, 2021)](#org8c20866)
  - [twigils considered weird](#orgd44641a)
    - [Raku makes sigils an invariant part of a name.](#orgaa8c724)
    - [Raku now has twigils](#org63892f6)
  - [david christensen expounds on erlang compared to raku and perl](#org544f575)
    - ["representational polymorphic" &#x2013; larry wall](#orgd7d164e)
  - [question about bruce gray's "reading files can't be this simple"](#orge939b64)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org238f4f2)
    - [<https://conf.raku.org/talk/158>](#orgfd69ff9)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org093d66f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orga242ed1)
  - [the usual links:](#org9ce90a7)
    - [meeting notes](#org3851b60)
    - [code examples:](#org88f5902)
  - [fun with raku on freebsd (bruce gray)](#org9e9c232)


<a id="org919b37a"></a>

# meeting notes August 15, 2021


<a id="org1bb709b"></a>

## callbacks


<a id="org23b1c7c"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org67358e7"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgbcaa7ed"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org96e7f46"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org0b6ca10"></a>

### badly needs code examples.


<a id="org292ef20"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org4ea54e4"></a>

## Data::Dualmap, near first release


<a id="org01a2e06"></a>

### should handle all built-in datatypes


<a id="org9616a93"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org9c08a8d"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org10955f2"></a>

## data classes


<a id="org8c20866"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd44641a"></a>

## twigils considered weird


<a id="orgaa8c724"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org63892f6"></a>

### Raku now has twigils

1.  they can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!hidden;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);
    
    4.  placeholder vars
    
        1.  okay:
        
            { $<sup>a</sup> eq $<sup>b</sup> || \(^a ?? "\)<sup>a</sup>|$<sup>b</sup>" }
        
        2.  not okay:
        
            if( $<sup>a</sup> eq $<sup>b</sup> ) { \(^a } else {"\)<sup>a</sup>|$<sup>b</sup>}
        
        3.  better:
        
            if( $<sup>a</sup> eq $<sup>b</sup> ) { $a } else {"$a|$b}


<a id="org544f575"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgd7d164e"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orge939b64"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org238f4f2"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgfd69ff9"></a>

### <https://conf.raku.org/talk/158>


<a id="org093d66f"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orga242ed1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org9ce90a7"></a>

## the usual links:


<a id="org3851b60"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org88f5902"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org9e9c232"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
