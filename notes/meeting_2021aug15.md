- [meeting notes August 15, 2021](#org9999e2f)
  - [callbacks](#org26b9841)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org690f684)
  - [placeholder variables with callback/code blocks](#orgefa43fb)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#orged78a36)
    - [hang-up with placeholders in if/else sub-blocks](#org951d5d4)
  - [twigils considered weird](#orgc811a47)
    - [Raku makes sigils an invariant part of a name.](#org3540022)
    - [Raku now has twigils](#org15821a3)
  - [.round arguments (more whining about the docs)](#org2d3056d)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgce9d4f9)
    - [badly needs code examples.](#orgd84a919)
    - [naming of "scale" seems strange, but hard to improve:](#org4e7fa60)
  - [Data::Dualmap, near first release](#orgba5f96c)
    - [should handle all built-in datatypes](#orgfa96f43)
    - [has most features of my perl5 Data::Math](#org8300348)
    - [open question whether it would be better to generalize further](#org101d00c)
  - [data classes](#orgae5e34c)
    - [custom classes as data containers (from June 20, 2021)](#org974f025)
  - [david christensen expounds on erlang compared to raku and perl](#orga5b0423)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org4268d73)
  - [question about bruce gray's "reading files can't be this simple"](#orgfe7df58)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org918ecda)
    - [<https://conf.raku.org/talk/158>](#org769e0e8)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org20ed3d6)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgefd3fa3)
  - [fun with raku on freebsd (bruce gray)](#org5698fb5)
    - [<https://www.freshports.org/lang/rakudo/>](#org1c0ff6e)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org3c9a502)
    - [he could use a freebsd expert to consult with](#orgd38d62e)
  - [the usual links:](#org94a773e)
    - [meeting notes](#org53293da)
    - [code examples:](#org93c3edd)
  - [from the chat window:](#org0fa7426)
    - [william michels mentions ghidra](#orga30a067)


<a id="org9999e2f"></a>

# meeting notes August 15, 2021


<a id="org26b9841"></a>

## callbacks


<a id="org690f684"></a>

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


<a id="orgefa43fb"></a>

## placeholder variables with callback/code blocks


<a id="orged78a36"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org951d5d4"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="orgc811a47"></a>

## twigils considered weird


<a id="org3540022"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org15821a3"></a>

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


<a id="org2d3056d"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgce9d4f9"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgd84a919"></a>

### badly needs code examples.


<a id="org4e7fa60"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgba5f96c"></a>

## Data::Dualmap, near first release


<a id="orgfa96f43"></a>

### should handle all built-in datatypes


<a id="org8300348"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org101d00c"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgae5e34c"></a>

## data classes


<a id="org974f025"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga5b0423"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org4268d73"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="orgfe7df58"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org918ecda"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org769e0e8"></a>

### <https://conf.raku.org/talk/158>


<a id="org20ed3d6"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgefd3fa3"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org5698fb5"></a>

## fun with raku on freebsd (bruce gray)


<a id="org1c0ff6e"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org3c9a502"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgd38d62e"></a>

### he could use a freebsd expert to consult with


<a id="org94a773e"></a>

## the usual links:


<a id="org53293da"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org93c3edd"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org0fa7426"></a>

## from the chat window:


<a id="orga30a067"></a>

### william michels mentions ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
