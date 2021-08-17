- [meeting notes August 15, 2021](#orgbe07300)
  - [callbacks](#org0e6eef5)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgc601630)
    - [misc sub-topics:](#org0dd1ae8)
  - [twigils considered weird](#org6a60fed)
    - [Raku makes sigils an invariant part of a name.](#org0befb0f)
    - [Raku now has twigils](#org76a1c66)
  - [.round arguments, whining about the docs](#orgf8c356b)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org3b85d69)
    - [badly needs code examples.](#org4f79113)
    - [naming of "scale" seems strange, hard to improve:](#orgf7ea219)
  - [Data::Dualmap, near first release](#org9278772)
    - [should handle all built-in datatypes](#org1d4091f)
    - [has most features of my perl5 Data::Math](#orgf87c261)
    - [open question whether it would be better to generalize further](#orgb45595f)
  - [data classes](#orgcd8100e)
    - [custom classes as data containers (from June 20, 2021)](#org51cee99)
  - [david christensen expounds on erlang compared to raku and perl](#org0fd9982)
    - ["representational polymorphic" &#x2013; larry wall](#orgd1f62b2)
  - [question about bruce gray's "reading files can't be this simple"](#orgffd1b0c)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org7b62c71)
    - [<https://conf.raku.org/talk/158>](#org6f5a83a)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orge70b322)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org3ca290b)
  - [fun with raku on freebsd (bruce gray)](#orge8d9a39)
  - [the usual links:](#orgf6a163f)
    - [meeting notes](#orgf80e975)
    - [code examples:](#org78149f8)
  - [some bits from the chat window:](#org348b1b1)
    - [william michels brings up ghidra](#org045b3f0)


<a id="orgbe07300"></a>

# meeting notes August 15, 2021


<a id="org0e6eef5"></a>

## callbacks


<a id="orgc601630"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org0dd1ae8"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org6a60fed"></a>

## twigils considered weird


<a id="org0befb0f"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org76a1c66"></a>

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


<a id="orgf8c356b"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org3b85d69"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org4f79113"></a>

### badly needs code examples.


<a id="orgf7ea219"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org9278772"></a>

## Data::Dualmap, near first release


<a id="org1d4091f"></a>

### should handle all built-in datatypes


<a id="orgf87c261"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgb45595f"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgcd8100e"></a>

## data classes


<a id="org51cee99"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org0fd9982"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgd1f62b2"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgffd1b0c"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org7b62c71"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org6f5a83a"></a>

### <https://conf.raku.org/talk/158>


<a id="orge70b322"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org3ca290b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orge8d9a39"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgf6a163f"></a>

## the usual links:


<a id="orgf80e975"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org78149f8"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org348b1b1"></a>

## some bits from the chat window:


<a id="org045b3f0"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
