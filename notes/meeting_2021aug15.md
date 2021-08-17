- [meeting notes August 15, 2021](#org8565fc6)
  - [callbacks](#org1c4ec7d)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org551ab42)
  - [placeholder variables with callback/code blocks](#orgc5c588e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org2620517)
    - [hang-up with placeholders in if/else sub-blocks](#org7158d66)
  - [twigils considered weird](#org32cfabe)
    - [Raku makes sigils an invariant part of a name.](#orgfc6cb2d)
    - [Raku now has twigils](#org3c98862)
  - [.round arguments, whining about the docs](#org6ee6f32)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org9b7a9f5)
    - [badly needs code examples.](#org7145979)
    - [naming of "scale" seems strange, hard to improve:](#orgb6d4e27)
  - [Data::Dualmap, near first release](#org09f209e)
    - [should handle all built-in datatypes](#orgc129188)
    - [has most features of my perl5 Data::Math](#orgb86f6e6)
    - [open question whether it would be better to generalize further](#orgb88164c)
  - [data classes](#orga35e9e5)
    - [custom classes as data containers (from June 20, 2021)](#org7059f7b)
  - [david christensen expounds on erlang compared to raku and perl](#orgf3f6042)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org7ab1a39)
  - [question about bruce gray's "reading files can't be this simple"](#orgf0fc024)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org6d43ecd)
    - [<https://conf.raku.org/talk/158>](#orga2086b7)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org0f60977)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgfe86284)
  - [fun with raku on freebsd (bruce gray)](#org0eee813)
  - [the usual links:](#orgcd0ca24)
    - [meeting notes](#org13fa316)
    - [code examples:](#orgc8a3269)
  - [some bits from the chat window:](#org3af9898)
    - [william michels brings up ghidra](#orgaa5a372)


<a id="org8565fc6"></a>

# meeting notes August 15, 2021


<a id="org1c4ec7d"></a>

## callbacks


<a id="org551ab42"></a>

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


<a id="orgc5c588e"></a>

## placeholder variables with callback/code blocks


<a id="org2620517"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org7158d66"></a>

### hang-up with placeholders in if/else sub-blocks

<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

1.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

2.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change ("condom converion" mentioned above


<a id="org32cfabe"></a>

## twigils considered weird


<a id="orgfc6cb2d"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org3c98862"></a>

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


<a id="org6ee6f32"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org9b7a9f5"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org7145979"></a>

### badly needs code examples.


<a id="orgb6d4e27"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org09f209e"></a>

## Data::Dualmap, near first release


<a id="orgc129188"></a>

### should handle all built-in datatypes


<a id="orgb86f6e6"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgb88164c"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orga35e9e5"></a>

## data classes


<a id="org7059f7b"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf3f6042"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org7ab1a39"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="orgf0fc024"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org6d43ecd"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orga2086b7"></a>

### <https://conf.raku.org/talk/158>


<a id="org0f60977"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgfe86284"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org0eee813"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgcd0ca24"></a>

## the usual links:


<a id="org13fa316"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgc8a3269"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org3af9898"></a>

## some bits from the chat window:


<a id="orgaa5a372"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
