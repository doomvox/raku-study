- [meeting notes August 15, 2021](#org661e015)
  - [callbacks](#org1018b96)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgd8ffc1b)
    - [misc sub-topics:](#org2fbc135)
  - [.round arguments, whining about the docs](#org19022c8)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org25b6dd7)
    - [badly needs code examples.](#org4455564)
    - [naming of "scale" seems strange, hard to improve:](#org1e32136)
  - [Data::Dualmap, near first release](#org3a5b82c)
    - [should handle all built-in datatypes](#org07c6f94)
    - [has most features of my perl5 Data::Math](#orgc63f7a4)
    - [open question whether it would be better to generalize further](#orgc93d555)
  - [data classes](#orgf17de45)
    - [custom classes as data containers (from June 20, 2021)](#org580f5c7)
  - [twigils considered weird](#orgbf4fdd5)
    - [Raku makes sigils an invariant part of a name.](#org691fa7d)
    - [Raku now has twigils](#org91924fd)
  - [david christensen expounds on erlang compared to raku and perl](#orgf570868)
    - ["representational polymorphic" &#x2013; larry wall](#org74419f0)
  - [question about bruce gray's "reading files can't be this simple"](#orgfe5199e)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgfc0ac96)
    - [<https://conf.raku.org/talk/158>](#org98608a5)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org10297a9)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org83bfa34)
  - [the usual links:](#orga232a40)
    - [meeting notes](#orgbc4bb8c)
    - [code examples:](#org3c43830)
  - [fun with raku on freebsd (bruce gray)](#orgef308a2)


<a id="org661e015"></a>

# meeting notes August 15, 2021


<a id="org1018b96"></a>

## callbacks


<a id="orgd8ffc1b"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org2fbc135"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org19022c8"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org25b6dd7"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org4455564"></a>

### badly needs code examples.


<a id="org1e32136"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org3a5b82c"></a>

## Data::Dualmap, near first release


<a id="org07c6f94"></a>

### should handle all built-in datatypes


<a id="orgc63f7a4"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgc93d555"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgf17de45"></a>

## data classes


<a id="org580f5c7"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgbf4fdd5"></a>

## twigils considered weird


<a id="org691fa7d"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org91924fd"></a>

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


<a id="orgf570868"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org74419f0"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgfe5199e"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgfc0ac96"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org98608a5"></a>

### <https://conf.raku.org/talk/158>


<a id="org10297a9"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org83bfa34"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orga232a40"></a>

## the usual links:


<a id="orgbc4bb8c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org3c43830"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgef308a2"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
