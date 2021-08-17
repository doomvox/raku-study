- [meeting notes August 15, 2021](#org80c22da)
  - [callbacks](#org3992215)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgb5d987b)
    - [misc sub-topics:](#org211e748)
  - [twigils considered weird](#org66f6e6a)
    - [Raku makes sigils an invariant part of a name.](#org9053600)
    - [Raku now has twigils](#org7476c13)
  - [.round arguments, whining about the docs](#orga2cdbd4)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgd1a7245)
    - [badly needs code examples.](#orgb9d4043)
    - [naming of "scale" seems strange, hard to improve:](#org4465f68)
  - [Data::Dualmap, near first release](#org256af97)
    - [should handle all built-in datatypes](#org7a1234d)
    - [has most features of my perl5 Data::Math](#orgb2f0e8b)
    - [open question whether it would be better to generalize further](#org95c687e)
  - [data classes](#org542da89)
    - [custom classes as data containers (from June 20, 2021)](#org402c633)
  - [david christensen expounds on erlang compared to raku and perl](#orge036d88)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org65aaf4b)
  - [question about bruce gray's "reading files can't be this simple"](#org74f5216)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgf7967e2)
    - [<https://conf.raku.org/talk/158>](#org2d423e8)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org328f9cd)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org356a665)
  - [fun with raku on freebsd (bruce gray)](#org30d8892)
  - [the usual links:](#org754895d)
    - [meeting notes](#org17d86c2)
    - [code examples:](#orge2101ee)
  - [some bits from the chat window:](#org18963fa)
    - [william michels brings up ghidra](#org1fdf179)


<a id="org80c22da"></a>

# meeting notes August 15, 2021


<a id="org3992215"></a>

## callbacks


<a id="orgb5d987b"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org211e748"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org66f6e6a"></a>

## twigils considered weird


<a id="org9053600"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org7476c13"></a>

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


<a id="orga2cdbd4"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgd1a7245"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgb9d4043"></a>

### badly needs code examples.


<a id="org4465f68"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org256af97"></a>

## Data::Dualmap, near first release


<a id="org7a1234d"></a>

### should handle all built-in datatypes


<a id="orgb2f0e8b"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org95c687e"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org542da89"></a>

## data classes


<a id="org402c633"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge036d88"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org65aaf4b"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org74f5216"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgf7967e2"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org2d423e8"></a>

### <https://conf.raku.org/talk/158>


<a id="org328f9cd"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org356a665"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org30d8892"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org754895d"></a>

## the usual links:


<a id="org17d86c2"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orge2101ee"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org18963fa"></a>

## some bits from the chat window:


<a id="org1fdf179"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
