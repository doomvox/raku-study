- [meeting notes August 15, 2021](#org77e8f10)
  - [callbacks](#org3851c94)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org563c1cf)
    - [misc sub-topics:](#org9cc90ca)
  - [twigils considered weird](#org3a0bcd1)
    - [Raku makes sigils an invariant part of a name.](#org6a170ea)
    - [Raku now has twigils](#org767c2ad)
  - [.round arguments, whining about the docs](#orgc13509c)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orga6ea39a)
    - [badly needs code examples.](#org037d608)
    - [naming of "scale" seems strange, hard to improve:](#orga472ee9)
  - [Data::Dualmap, near first release](#orgffddb7c)
    - [should handle all built-in datatypes](#org32826e3)
    - [has most features of my perl5 Data::Math](#org2a660b6)
    - [open question whether it would be better to generalize further](#orgb27d1b3)
  - [data classes](#org7f475a8)
    - [custom classes as data containers (from June 20, 2021)](#org2b15b97)
  - [david christensen expounds on erlang compared to raku and perl](#org07bac55)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org8d93172)
    - ["representational polymorphic" &#x2013; larry wall](#org9fe3b85)
  - [question about bruce gray's "reading files can't be this simple"](#org6a30e43)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org8688ea3)
    - [<https://conf.raku.org/talk/158>](#org447b96d)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgae0fcae)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org8333498)
  - [fun with raku on freebsd (bruce gray)](#orgc4748c6)
  - [the usual links:](#orgf8e8f1a)
    - [meeting notes](#org2d052ed)
    - [code examples:](#org7533397)
  - [some bits from the chat window:](#org864a012)
    - [william michels brings up ghidra](#org865ae52)


<a id="org77e8f10"></a>

# meeting notes August 15, 2021


<a id="org3851c94"></a>

## callbacks


<a id="org563c1cf"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org9cc90ca"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org3a0bcd1"></a>

## twigils considered weird


<a id="org6a170ea"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org767c2ad"></a>

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


<a id="orgc13509c"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orga6ea39a"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org037d608"></a>

### badly needs code examples.


<a id="orga472ee9"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgffddb7c"></a>

## Data::Dualmap, near first release


<a id="org32826e3"></a>

### should handle all built-in datatypes


<a id="org2a660b6"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgb27d1b3"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org7f475a8"></a>

## data classes


<a id="org2b15b97"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org07bac55"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org8d93172"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>


<a id="org9fe3b85"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org6a30e43"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org8688ea3"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org447b96d"></a>

### <https://conf.raku.org/talk/158>


<a id="orgae0fcae"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org8333498"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgc4748c6"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgf8e8f1a"></a>

## the usual links:


<a id="org2d052ed"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org7533397"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org864a012"></a>

## some bits from the chat window:


<a id="org865ae52"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
