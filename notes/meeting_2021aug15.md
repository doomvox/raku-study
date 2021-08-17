- [meeting notes August 15, 2021](#org342e885)
  - [callbacks](#orgba7ead5)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgd941b8d)
    - [misc sub-topics:](#org498e129)
  - [twigils considered weird](#org646f7e2)
    - [Raku makes sigils an invariant part of a name.](#org9f9769a)
    - [Raku now has twigils](#orgc350823)
  - [.round arguments, whining about the docs](#orgf2cf71f)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org3c9992d)
    - [badly needs code examples.](#orgdc46069)
    - [naming of "scale" seems strange, hard to improve:](#orga0f09a4)
  - [Data::Dualmap, near first release](#org993571b)
    - [should handle all built-in datatypes](#org4470456)
    - [has most features of my perl5 Data::Math](#org1625e12)
    - [open question whether it would be better to generalize further](#orgc7e3fef)
  - [data classes](#org1f53f55)
    - [custom classes as data containers (from June 20, 2021)](#orgb1457d9)
  - [david christensen expounds on erlang compared to raku and perl](#org32d91e2)
    - ["representational polymorphic" &#x2013; larry wall](#org65ab9fd)
  - [question about bruce gray's "reading files can't be this simple"](#orgdcd4705)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgb2a7774)
    - [<https://conf.raku.org/talk/158>](#org00bbdef)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgcad48b4)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org4b5823a)
  - [the usual links:](#org7402925)
    - [meeting notes](#orgb011b72)
    - [code examples:](#org4c2fcb6)
  - [fun with raku on freebsd (bruce gray)](#orged5dad9)


<a id="org342e885"></a>

# meeting notes August 15, 2021


<a id="orgba7ead5"></a>

## callbacks


<a id="orgd941b8d"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org498e129"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org646f7e2"></a>

## twigils considered weird


<a id="org9f9769a"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgc350823"></a>

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


<a id="orgf2cf71f"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org3c9992d"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgdc46069"></a>

### badly needs code examples.


<a id="orga0f09a4"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org993571b"></a>

## Data::Dualmap, near first release


<a id="org4470456"></a>

### should handle all built-in datatypes


<a id="org1625e12"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgc7e3fef"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org1f53f55"></a>

## data classes


<a id="orgb1457d9"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org32d91e2"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org65ab9fd"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgdcd4705"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgb2a7774"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org00bbdef"></a>

### <https://conf.raku.org/talk/158>


<a id="orgcad48b4"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org4b5823a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org7402925"></a>

## the usual links:


<a id="orgb011b72"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org4c2fcb6"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orged5dad9"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
