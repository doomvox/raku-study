- [meeting notes August 15, 2021](#org1cc0712)
  - [callbacks](#org78e9a3d)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org0a5a5dd)
    - [misc sub-topics:](#org5570f89)
  - [twigils considered weird](#org1102a8b)
    - [Raku makes sigils an invariant part of a name.](#orgabe2873)
    - [Raku now has twigils](#org684c03b)
  - [.round arguments, whining about the docs](#orge25e1f4)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org1b15e2c)
    - [badly needs code examples.](#org95e9c79)
    - [naming of "scale" seems strange, hard to improve:](#org2495479)
  - [Data::Dualmap, near first release](#orgfd2f0d6)
    - [should handle all built-in datatypes](#orga13bea3)
    - [has most features of my perl5 Data::Math](#orga5dc5e7)
    - [open question whether it would be better to generalize further](#orgf06d528)
  - [data classes](#org830624e)
    - [custom classes as data containers (from June 20, 2021)](#org4e5d949)
  - [david christensen expounds on erlang compared to raku and perl](#org39522ad)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orgbf8f053)
    - ["representational polymorphic" &#x2013; larry wall](#orgc177e12)
  - [question about bruce gray's "reading files can't be this simple"](#orgce673f8)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgce81ad4)
    - [<https://conf.raku.org/talk/158>](#org09c53c4)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org5042dda)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgc36fd9b)
  - [fun with raku on freebsd (bruce gray)](#org6d93971)
  - [the usual links:](#org41d1c1b)
    - [meeting notes](#org1de95f4)
    - [code examples:](#org468ae28)
  - [some bits from the chat window:](#orgfe70b07)
    - [william michels brings up ghidra](#org6431efb)


<a id="org1cc0712"></a>

# meeting notes August 15, 2021


<a id="org78e9a3d"></a>

## callbacks


<a id="org0a5a5dd"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org5570f89"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org1102a8b"></a>

## twigils considered weird


<a id="orgabe2873"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org684c03b"></a>

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


<a id="orge25e1f4"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org1b15e2c"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org95e9c79"></a>

### badly needs code examples.


<a id="org2495479"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgfd2f0d6"></a>

## Data::Dualmap, near first release


<a id="orga13bea3"></a>

### should handle all built-in datatypes


<a id="orga5dc5e7"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgf06d528"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org830624e"></a>

## data classes


<a id="org4e5d949"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org39522ad"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgbf8f053"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>


<a id="orgc177e12"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgce673f8"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgce81ad4"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org09c53c4"></a>

### <https://conf.raku.org/talk/158>


<a id="org5042dda"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgc36fd9b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org6d93971"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org41d1c1b"></a>

## the usual links:


<a id="org1de95f4"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org468ae28"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgfe70b07"></a>

## some bits from the chat window:


<a id="org6431efb"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
