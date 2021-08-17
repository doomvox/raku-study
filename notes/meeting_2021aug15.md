- [meeting notes August 15, 2021](#org62e3076)
  - [callbacks](#org93f2a38)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org617c22e)
  - [placeholder variables with callback/code blocks](#orga7011f8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org5d8ee26)
    - [hang-up with placeholders in if/else sub-blocks](#orgc085062)
  - [twigils considered weird](#org2dd98f5)
    - [Raku makes sigils an invariant part of a name.](#orgca33707)
    - [Raku now has twigils](#orga6f4d81)
  - [.round arguments, whining about the docs](#org70050e0)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org07f2707)
    - [badly needs code examples.](#orge6d06f1)
    - [naming of "scale" seems strange, hard to improve:](#org82733ea)
  - [Data::Dualmap, near first release](#org4812742)
    - [should handle all built-in datatypes](#orgc43757d)
    - [has most features of my perl5 Data::Math](#org98b3c05)
    - [open question whether it would be better to generalize further](#org5bedc6d)
  - [data classes](#org196a1e2)
    - [custom classes as data containers (from June 20, 2021)](#org76e3352)
  - [david christensen expounds on erlang compared to raku and perl](#orgdf75a6f)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org982f61d)
  - [question about bruce gray's "reading files can't be this simple"](#org98ff852)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org1197cbf)
    - [<https://conf.raku.org/talk/158>](#org259fffc)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgc77cd68)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org2ecd63a)
  - [fun with raku on freebsd (bruce gray)](#org031d326)
  - [the usual links:](#org5d68ae5)
    - [meeting notes](#org685a8b2)
    - [code examples:](#orgd21febf)
  - [some bits from the chat window:](#orgd2ffa59)
    - [william michels brings up ghidra](#org7395154)


<a id="org62e3076"></a>

# meeting notes August 15, 2021


<a id="org93f2a38"></a>

## callbacks


<a id="org617c22e"></a>

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


<a id="orga7011f8"></a>

## placeholder variables with callback/code blocks


<a id="org5d8ee26"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgc085062"></a>

### hang-up with placeholders in if/else sub-blocks

1.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

2.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change ("condom converion" mentioned above


<a id="org2dd98f5"></a>

## twigils considered weird


<a id="orgca33707"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orga6f4d81"></a>

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


<a id="org70050e0"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org07f2707"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orge6d06f1"></a>

### badly needs code examples.


<a id="org82733ea"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org4812742"></a>

## Data::Dualmap, near first release


<a id="orgc43757d"></a>

### should handle all built-in datatypes


<a id="org98b3c05"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org5bedc6d"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org196a1e2"></a>

## data classes


<a id="org76e3352"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgdf75a6f"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org982f61d"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org98ff852"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org1197cbf"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org259fffc"></a>

### <https://conf.raku.org/talk/158>


<a id="orgc77cd68"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org2ecd63a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org031d326"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org5d68ae5"></a>

## the usual links:


<a id="org685a8b2"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgd21febf"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgd2ffa59"></a>

## some bits from the chat window:


<a id="org7395154"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
