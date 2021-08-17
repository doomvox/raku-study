- [meeting notes August 15, 2021](#org950701b)
  - [callbacks](#org31ef7c1)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgd5beb1b)
  - [placeholder variables with callback/code blocks](#orga356323)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org640b42f)
    - [hang-up with placeholders in if/else sub-blocks](#org524d0a6)
  - [twigils considered weird](#org37c72f3)
    - [Raku makes sigils an invariant part of a name.](#orgb42908a)
    - [Raku now has twigils](#orgf5026a7)
  - [.round arguments, whining about the docs](#org1190479)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgd327213)
    - [badly needs code examples.](#orge05796f)
    - [naming of "scale" seems strange, hard to improve:](#orgd99ea65)
  - [Data::Dualmap, near first release](#org3c67efc)
    - [should handle all built-in datatypes](#orgc0d0f93)
    - [has most features of my perl5 Data::Math](#org8b1c012)
    - [open question whether it would be better to generalize further](#orgdf631d1)
  - [data classes](#org0e668bc)
    - [custom classes as data containers (from June 20, 2021)](#org6fca9e7)
  - [david christensen expounds on erlang compared to raku and perl](#orgf924211)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orga7de554)
  - [question about bruce gray's "reading files can't be this simple"](#org2b5b27e)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgd47d948)
    - [<https://conf.raku.org/talk/158>](#orgd5a8086)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org2601421)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgf5d12bc)
  - [fun with raku on freebsd (bruce gray)](#org9be8a83)
  - [the usual links:](#orgf984238)
    - [meeting notes](#org0d4b6fb)
    - [code examples:](#orgfde5fe4)
  - [some bits from the chat window:](#org6446e4b)
    - [william michels brings up ghidra](#orgd1f5fc0)


<a id="org950701b"></a>

# meeting notes August 15, 2021


<a id="org31ef7c1"></a>

## callbacks


<a id="orgd5beb1b"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  misc sub-topics:

    1.  sigils: $code vs &code
    
    2.  sub vs block
    
        1.  subs can use return
    
    3.  placeholder vars idiom
    
        1.  use the hat just once (the condom convention)
        
            1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10090.html>


<a id="orga356323"></a>

## placeholder variables with callback/code blocks


<a id="org640b42f"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org524d0a6"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org37c72f3"></a>

## twigils considered weird


<a id="orgb42908a"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgf5026a7"></a>

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


<a id="org1190479"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgd327213"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orge05796f"></a>

### badly needs code examples.


<a id="orgd99ea65"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org3c67efc"></a>

## Data::Dualmap, near first release


<a id="orgc0d0f93"></a>

### should handle all built-in datatypes


<a id="org8b1c012"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgdf631d1"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org0e668bc"></a>

## data classes


<a id="org6fca9e7"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf924211"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orga7de554"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org2b5b27e"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgd47d948"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgd5a8086"></a>

### <https://conf.raku.org/talk/158>


<a id="org2601421"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgf5d12bc"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org9be8a83"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgf984238"></a>

## the usual links:


<a id="org0d4b6fb"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgfde5fe4"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org6446e4b"></a>

## some bits from the chat window:


<a id="orgd1f5fc0"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
