- [meeting notes August 15, 2021](#org03f0be5)
  - [callbacks](#orgc221ee2)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org42e3257)
  - [placeholder variables with callback/code blocks](#orgec2a703)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org33e2200)
    - [hang-up with placeholders in if/else sub-blocks](#org1cd6229)
  - [twigils considered weird](#org8cabe77)
    - [Raku makes sigils an invariant part of a name.](#org8047319)
    - [Raku now has twigils](#org3290a22)
  - [.round arguments (more whining about the docs)](#orgcdbf0f2)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgea75f1a)
    - [badly needs code examples.](#org57f1966)
    - [naming of "scale" seems strange, hard to improve:](#orgcc37fa7)
  - [Data::Dualmap, near first release](#orgb7a1d69)
    - [should handle all built-in datatypes](#orge0e03a2)
    - [has most features of my perl5 Data::Math](#orge19029b)
    - [open question whether it would be better to generalize further](#org3e4a192)
  - [data classes](#org843661c)
    - [custom classes as data containers (from June 20, 2021)](#org97779dc)
  - [david christensen expounds on erlang compared to raku and perl](#orgd38287e)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org646ede9)
  - [question about bruce gray's "reading files can't be this simple"](#org3cd7a31)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org5788a82)
    - [<https://conf.raku.org/talk/158>](#orgd43eae9)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orge8b6351)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgaf3aea5)
  - [fun with raku on freebsd (bruce gray)](#org178dee4)
  - [the usual links:](#org6b05f7a)
    - [meeting notes](#org6a16b41)
    - [code examples:](#org9cef07f)
  - [some bits from the chat window:](#org8f36536)
    - [william michels brings up ghidra](#orga899cf3)


<a id="org03f0be5"></a>

# meeting notes August 15, 2021


<a id="orgc221ee2"></a>

## callbacks


<a id="org42e3257"></a>

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


<a id="orgec2a703"></a>

## placeholder variables with callback/code blocks


<a id="org33e2200"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org1cd6229"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org8cabe77"></a>

## twigils considered weird


<a id="org8047319"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org3290a22"></a>

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


<a id="orgcdbf0f2"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgea75f1a"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org57f1966"></a>

### badly needs code examples.


<a id="orgcc37fa7"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgb7a1d69"></a>

## Data::Dualmap, near first release


<a id="orge0e03a2"></a>

### should handle all built-in datatypes


<a id="orge19029b"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org3e4a192"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org843661c"></a>

## data classes


<a id="org97779dc"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd38287e"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org646ede9"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org3cd7a31"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org5788a82"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgd43eae9"></a>

### <https://conf.raku.org/talk/158>


<a id="orge8b6351"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgaf3aea5"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org178dee4"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org6b05f7a"></a>

## the usual links:


<a id="org6a16b41"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org9cef07f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org8f36536"></a>

## some bits from the chat window:


<a id="orga899cf3"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
