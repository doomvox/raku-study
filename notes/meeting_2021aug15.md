- [meeting notes August 15, 2021](#orgf13c688)
  - [callbacks](#org743b6ad)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgfdc7788)
  - [placeholder variables with callback/code blocks](#org7b40fa4)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org79d7079)
    - [hang-up with placeholders in if/else sub-blocks](#org9b7114a)
  - [twigils considered weird](#org07c1529)
    - [Raku makes sigils an invariant part of a name.](#org3eaa098)
    - [Raku now has twigils](#orgccd91cf)
  - [.round arguments, whining about the docs](#org188bf59)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgfcfe23b)
    - [badly needs code examples.](#org02c2e2c)
    - [naming of "scale" seems strange, hard to improve:](#org602bbd8)
  - [Data::Dualmap, near first release](#org9e232f9)
    - [should handle all built-in datatypes](#org1d55e78)
    - [has most features of my perl5 Data::Math](#orga5846d8)
    - [open question whether it would be better to generalize further](#org095da2e)
  - [data classes](#org22ffdca)
    - [custom classes as data containers (from June 20, 2021)](#org6dcff13)
  - [david christensen expounds on erlang compared to raku and perl](#orgf5e4405)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org7254c72)
  - [question about bruce gray's "reading files can't be this simple"](#orge5008bc)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org686452e)
    - [<https://conf.raku.org/talk/158>](#orgb345c20)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgf89a634)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgd9a6701)
  - [fun with raku on freebsd (bruce gray)](#orgcbe10f8)
  - [the usual links:](#org964e7ef)
    - [meeting notes](#orgcb8a3e3)
    - [code examples:](#org27e42c9)
  - [some bits from the chat window:](#orga8fd582)
    - [william michels brings up ghidra](#orgb4831f0)


<a id="orgf13c688"></a>

# meeting notes August 15, 2021


<a id="org743b6ad"></a>

## callbacks


<a id="orgfdc7788"></a>

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


<a id="org7b40fa4"></a>

## placeholder variables with callback/code blocks


<a id="org79d7079"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org9b7114a"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change ("condom converion" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org07c1529"></a>

## twigils considered weird


<a id="org3eaa098"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgccd91cf"></a>

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


<a id="org188bf59"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgfcfe23b"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org02c2e2c"></a>

### badly needs code examples.


<a id="org602bbd8"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org9e232f9"></a>

## Data::Dualmap, near first release


<a id="org1d55e78"></a>

### should handle all built-in datatypes


<a id="orga5846d8"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org095da2e"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org22ffdca"></a>

## data classes


<a id="org6dcff13"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf5e4405"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org7254c72"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="orge5008bc"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org686452e"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgb345c20"></a>

### <https://conf.raku.org/talk/158>


<a id="orgf89a634"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgd9a6701"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgcbe10f8"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org964e7ef"></a>

## the usual links:


<a id="orgcb8a3e3"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org27e42c9"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orga8fd582"></a>

## some bits from the chat window:


<a id="orgb4831f0"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
