- [meeting notes August 15, 2021](#org2056f04)
  - [callbacks](#orgd6a377f)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org7eee324)
    - [misc sub-topics:](#org92d962d)
  - [twigils considered weird](#org3cf8a53)
    - [Raku makes sigils an invariant part of a name.](#orge33551e)
    - [Raku now has twigils](#org6b0dffb)
  - [.round arguments, whining about the docs](#org65b4e7b)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgbc5112a)
    - [badly needs code examples.](#orgf789086)
    - [naming of "scale" seems strange, hard to improve:](#org438d8fd)
  - [Data::Dualmap, near first release](#org52f4738)
    - [should handle all built-in datatypes](#orga402ec7)
    - [has most features of my perl5 Data::Math](#org417657c)
    - [open question whether it would be better to generalize further](#orgf169109)
  - [data classes](#orgf83f86e)
    - [custom classes as data containers (from June 20, 2021)](#org11e355e)
  - [david christensen expounds on erlang compared to raku and perl](#org537a55a)
    - ["representational polymorphic" &#x2013; larry wall](#orgd97d4b0)
  - [question about bruce gray's "reading files can't be this simple"](#org92edb63)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org1171743)
    - [<https://conf.raku.org/talk/158>](#orge37ca63)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgb52a1af)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgd4c2e39)
  - [the usual links:](#org43b7b27)
    - [meeting notes](#org24da3af)
    - [code examples:](#org08ca562)
  - [fun with raku on freebsd (bruce gray)](#orgb2037ed)


<a id="org2056f04"></a>

# meeting notes August 15, 2021


<a id="orgd6a377f"></a>

## callbacks


<a id="org7eee324"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund", verbs turned into nouns

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org92d962d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org3cf8a53"></a>

## twigils considered weird


<a id="orge33551e"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org6b0dffb"></a>

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


<a id="org65b4e7b"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgbc5112a"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgf789086"></a>

### badly needs code examples.


<a id="org438d8fd"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org52f4738"></a>

## Data::Dualmap, near first release


<a id="orga402ec7"></a>

### should handle all built-in datatypes


<a id="org417657c"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgf169109"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgf83f86e"></a>

## data classes


<a id="org11e355e"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org537a55a"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgd97d4b0"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org92edb63"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org1171743"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orge37ca63"></a>

### <https://conf.raku.org/talk/158>


<a id="orgb52a1af"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgd4c2e39"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org43b7b27"></a>

## the usual links:


<a id="org24da3af"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org08ca562"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgb2037ed"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
