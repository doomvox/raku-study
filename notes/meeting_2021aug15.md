- [meeting notes August 15, 2021](#orgc959e8f)
  - [callbacks](#org23f8b30)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org59d628f)
  - [placeholder variables with callback/code blocks](#org68d8b1d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#orgc49890d)
    - [hang-up with placeholders in if/else sub-blocks](#org1ccd3d9)
  - [twigils considered weird](#org3821348)
    - [Raku makes sigils an invariant part of a name.](#orgda984d9)
    - [Raku now has twigils](#org67f521b)
  - [.round arguments (more whining about the docs)](#org93fc10f)
    - [a case where I feel confused by the "signature" approach in the docs (despite knowing better)](#org1377530)
    - [badly needs code examples.](#org538c8e3)
    - [naming of "scale" seems strange, but hard to improve:](#orgdf7c27a)
  - [Data::Dualmap, near first release](#orgc8c216d)
    - [should handle all built-in datatypes](#org4aa0e5e)
    - [has most features of my perl5 Data::Math](#orgf68c991)
    - [open question whether it would be better to generalize further](#org53c09cb)
  - [data classes](#org14cad35)
    - [custom classes as data containers (from June 20, 2021)](#org4fbe774)
  - [david christensen expounds on erlang compared to raku and perl](#orgeefff4d)
    - [larry wall talk about raku at Erlang with Joe Armstrong](#orga6f0e76)
  - [question about bruce gray's "reading files can't be this simple"](#org83fab00)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org5d8d09c)
    - [<https://conf.raku.org/talk/158>](#org6504b68)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org5884a1e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org091b82c)
  - [fun with raku on freebsd (bruce gray)](#orgdbf6afd)
    - [<https://www.freshports.org/lang/rakudo/>](#org9153893)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#orgd4e4a0b)
    - [he could use a freebsd expert to consult with](#org17fea0c)
  - [the usual links:](#org92195b1)
    - [meeting notes](#orga2026cd)
    - [code examples:](#org04c56fa)
  - [from the chat window:](#orgc2aff45)
    - [william michels mentions ghidra](#orge1f3706)


<a id="orgc959e8f"></a>

# meeting notes August 15, 2021


<a id="org23f8b30"></a>

## callbacks


<a id="org59d628f"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes term "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  misc sub-topics:

    1.  sigils: $code vs &code
    
    2.  sub vs block
    
        1.  subs can use return
    
    3.  placeholder vars idiom
    
        1.  use the hat just once (the condom convention)
        
            1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10090.html>


<a id="org68d8b1d"></a>

## placeholder variables with callback/code blocks


<a id="orgc49890d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org1ccd3d9"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org3821348"></a>

## twigils considered weird


<a id="orgda984d9"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org67f521b"></a>

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


<a id="org93fc10f"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org1377530"></a>

### a case where I feel confused by the "signature" approach in the docs (despite knowing better)

1.  signatures are how things are defined, not how they're to be used


<a id="org538c8e3"></a>

### badly needs code examples.


<a id="orgdf7c27a"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgc8c216d"></a>

## Data::Dualmap, near first release


<a id="org4aa0e5e"></a>

### should handle all built-in datatypes


<a id="orgf68c991"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) needed to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in skip case also
        
            1.  had an intermittant test failure: presumably an unpredicitable key ordering effect


<a id="org53c09cb"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org14cad35"></a>

## data classes


<a id="org4fbe774"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgeefff4d"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orga6f0e76"></a>

### larry wall talk about raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org83fab00"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org5d8d09c"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org6504b68"></a>

### <https://conf.raku.org/talk/158>


<a id="org5884a1e"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org091b82c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgdbf6afd"></a>

## fun with raku on freebsd (bruce gray)


<a id="org9153893"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="orgd4e4a0b"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org17fea0c"></a>

### he could use a freebsd expert to consult with


<a id="org92195b1"></a>

## the usual links:


<a id="orga2026cd"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org04c56fa"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgc2aff45"></a>

## from the chat window:


<a id="orge1f3706"></a>

### william michels mentions ghidra

1.  a reverse engineering tool from the nsa

2.  <https://www.nsa.gov/resources/everyone/ghidra/>
