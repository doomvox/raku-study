- [meeting notes August 15, 2021](#org3267974)
  - [callbacks](#org0919862)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgf708c20)
  - [placeholder variables with callback/code blocks](#org1c7c8c7)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org2c0226a)
    - [hang-up with placeholders in if/else sub-blocks](#org77ede2c)
  - [twigils considered weird](#org573b797)
    - [Raku makes sigils an invariant part of a name.](#org41c3c79)
    - [Raku now has twigils](#orgc7ef0c3)
  - [.round arguments (more whining about the docs)](#orgd813aeb)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org7e47487)
    - [badly needs code examples.](#orgd84945a)
    - [naming of "scale" seems strange, but hard to improve:](#org4ff614c)
  - [Data::Dualmap, near first release](#orgda1fbf8)
    - [should handle all built-in datatypes](#org54c7a74)
    - [has most features of my perl5 Data::Math](#org31cc039)
    - [open question whether it would be better to generalize further](#orga211ecd)
  - [data classes](#orgf625008)
    - [custom classes as data containers (from June 20, 2021)](#org79142ac)
  - [david christensen expounds on erlang compared to raku and perl](#org1cc00f9)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orge30e847)
  - [question about bruce gray's "reading files can't be this simple"](#org9cdc959)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgde585af)
    - [<https://conf.raku.org/talk/158>](#org2e2812d)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org5e02c4d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgba111f4)
  - [fun with raku on freebsd (bruce gray)](#org8e64059)
    - [<https://www.freshports.org/lang/rakudo/>](#orgc66ba2d)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org61eb0a1)
    - [could use a freebsd expert to consult with](#org24fc370)
  - [the usual links:](#orga2c168e)
    - [meeting notes](#orgd4f37de)
    - [code examples:](#orgf4356e6)
  - [some bits from the chat window:](#orgd29566e)
    - [william michels brings up ghidra](#org0fde1d0)


<a id="org3267974"></a>

# meeting notes August 15, 2021


<a id="org0919862"></a>

## callbacks


<a id="orgf708c20"></a>

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


<a id="org1c7c8c7"></a>

## placeholder variables with callback/code blocks


<a id="org2c0226a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org77ede2c"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org573b797"></a>

## twigils considered weird


<a id="org41c3c79"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgc7ef0c3"></a>

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


<a id="orgd813aeb"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org7e47487"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgd84945a"></a>

### badly needs code examples.


<a id="org4ff614c"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgda1fbf8"></a>

## Data::Dualmap, near first release


<a id="org54c7a74"></a>

### should handle all built-in datatypes


<a id="org31cc039"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orga211ecd"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgf625008"></a>

## data classes


<a id="org79142ac"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org1cc00f9"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orge30e847"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org9cdc959"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgde585af"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org2e2812d"></a>

### <https://conf.raku.org/talk/158>


<a id="org5e02c4d"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgba111f4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org8e64059"></a>

## fun with raku on freebsd (bruce gray)


<a id="orgc66ba2d"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org61eb0a1"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org24fc370"></a>

### could use a freebsd expert to consult with


<a id="orga2c168e"></a>

## the usual links:


<a id="orgd4f37de"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgf4356e6"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgd29566e"></a>

## some bits from the chat window:


<a id="org0fde1d0"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
