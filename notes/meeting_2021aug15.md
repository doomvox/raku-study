- [meeting notes August 15, 2021](#org60fd984)
  - [callbacks](#org94e7907)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org3e43118)
  - [placeholder variables with callback/code blocks](#org518bd7a)
    - [hang-up with placeholders in if/else sub-blocks](#org013e41f)
  - [twigils considered weird](#org9d239ab)
    - [Raku makes sigils an invariant part of a name.](#org2dcf5cf)
    - [Raku now has twigils](#org73e3217)
  - [.round arguments, whining about the docs](#orgb82c07a)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org967bfbd)
    - [badly needs code examples.](#org892eac9)
    - [naming of "scale" seems strange, hard to improve:](#orgd3dee3d)
  - [Data::Dualmap, near first release](#org7bfa725)
    - [should handle all built-in datatypes](#org7a8df47)
    - [has most features of my perl5 Data::Math](#orgdfea182)
    - [open question whether it would be better to generalize further](#org76d5d9d)
  - [data classes](#orge36b6f1)
    - [custom classes as data containers (from June 20, 2021)](#org610f778)
  - [david christensen expounds on erlang compared to raku and perl](#org964fc5e)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orgccb0f9f)
  - [question about bruce gray's "reading files can't be this simple"](#org7f7d2df)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org6d0c4f6)
    - [<https://conf.raku.org/talk/158>](#org85a13df)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org00233e0)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgde3ad27)
  - [fun with raku on freebsd (bruce gray)](#org9e53258)
  - [the usual links:](#org91c54b5)
    - [meeting notes](#orgb349193)
    - [code examples:](#org1dc5d3d)
  - [some bits from the chat window:](#org1e2588c)
    - [william michels brings up ghidra](#org5d2f435)


<a id="org60fd984"></a>

# meeting notes August 15, 2021


<a id="org94e7907"></a>

## callbacks


<a id="org3e43118"></a>

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


<a id="org518bd7a"></a>

## placeholder variables with callback/code blocks


<a id="org013e41f"></a>

### hang-up with placeholders in if/else sub-blocks

1.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

2.  

3.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org9d239ab"></a>

## twigils considered weird


<a id="org2dcf5cf"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org73e3217"></a>

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


<a id="orgb82c07a"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org967bfbd"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org892eac9"></a>

### badly needs code examples.


<a id="orgd3dee3d"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org7bfa725"></a>

## Data::Dualmap, near first release


<a id="org7a8df47"></a>

### should handle all built-in datatypes


<a id="orgdfea182"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org76d5d9d"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orge36b6f1"></a>

## data classes


<a id="org610f778"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org964fc5e"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgccb0f9f"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org7f7d2df"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org6d0c4f6"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org85a13df"></a>

### <https://conf.raku.org/talk/158>


<a id="org00233e0"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgde3ad27"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org9e53258"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org91c54b5"></a>

## the usual links:


<a id="orgb349193"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org1dc5d3d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org1e2588c"></a>

## some bits from the chat window:


<a id="org5d2f435"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
