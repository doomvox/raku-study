- [meeting notes August 15, 2021](#org71824a0)
  - [callbacks](#orga92bd3c)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org01959d6)
    - [misc sub-topics:](#orgfbd90aa)
  - [.round arguments, whining about the docs](#orga7b0da5)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgeb8de60)
    - [badly needs code examples.](#org03e787b)
    - [naming of "scale" seems strange, hard to improve:](#orgf9425bd)
  - [Data::Dualmap, near first release](#org6a541a9)
    - [should handle all built-in datatypes](#orge8e83af)
    - [has most features of my perl5 Data::Math](#orgeb38509)
    - [open question whether it would be better to generalize further](#org79a9544)
  - [data classes](#org52302bb)
    - [custom classes as data containers (from June 20, 2021)](#org3a0c017)
  - [twigils considered weird](#org489c31d)
    - [Raku makes sigils an invariant part of a name.](#org4ddffd9)
    - [Raku now has twigils](#org9571c1c)
  - [david christensen expounds on erlang compared to raku and perl](#org57ef941)
    - ["representational polymorphic" &#x2013; larry wall](#orgf4cccd8)
  - [question about bruce gray's "reading files can't be this simple"](#orgcd4a1fd)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org28a67d4)
    - [<https://conf.raku.org/talk/158>](#org2e9ae6f)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org432457a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgb84fcb0)
  - [the usual links:](#org98366ce)
    - [meeting notes](#org8147989)
    - [code examples:](#org6492b4e)
  - [fun with raku on freebsd (bruce gray)](#org71bb4d8)


<a id="org71824a0"></a>

# meeting notes August 15, 2021


<a id="orga92bd3c"></a>

## callbacks


<a id="org01959d6"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgfbd90aa"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orga7b0da5"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgeb8de60"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org03e787b"></a>

### badly needs code examples.


<a id="orgf9425bd"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org6a541a9"></a>

## Data::Dualmap, near first release


<a id="orge8e83af"></a>

### should handle all built-in datatypes


<a id="orgeb38509"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org79a9544"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org52302bb"></a>

## data classes


<a id="org3a0c017"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org489c31d"></a>

## twigils considered weird


<a id="org4ddffd9"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org9571c1c"></a>

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


<a id="org57ef941"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgf4cccd8"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgcd4a1fd"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org28a67d4"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org2e9ae6f"></a>

### <https://conf.raku.org/talk/158>


<a id="org432457a"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgb84fcb0"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org98366ce"></a>

## the usual links:


<a id="org8147989"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org6492b4e"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org71bb4d8"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
