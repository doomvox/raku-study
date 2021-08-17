- [meeting notes August 15, 2021](#org0434601)
  - [callbacks](#org654d59e)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org9948c41)
  - [placeholder variables with callback/code blocks](#org57b0c4f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org6226521)
    - [hang-up with placeholders in if/else sub-blocks](#org52c2559)
  - [twigils considered weird](#org7b1573b)
    - [Raku makes sigils an invariant part of a name.](#org8b1544b)
    - [Raku now has twigils](#orge8e173d)
  - [.round arguments, whining about the docs](#org1939dbc)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgfe494c7)
    - [badly needs code examples.](#org05734e2)
    - [naming of "scale" seems strange, hard to improve:](#org3e377d0)
  - [Data::Dualmap, near first release](#orgebbcb48)
    - [should handle all built-in datatypes](#org2563f8c)
    - [has most features of my perl5 Data::Math](#org54a2a9b)
    - [open question whether it would be better to generalize further](#org0720ff5)
  - [data classes](#org9d8d894)
    - [custom classes as data containers (from June 20, 2021)](#orga8bc80d)
  - [david christensen expounds on erlang compared to raku and perl](#orgeeaffd1)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orgf0af52c)
  - [question about bruce gray's "reading files can't be this simple"](#org6285fff)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org5518393)
    - [<https://conf.raku.org/talk/158>](#org45bbc85)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgccfe6f0)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org305b11d)
  - [fun with raku on freebsd (bruce gray)](#org0ae00e4)
  - [the usual links:](#org2415a5c)
    - [meeting notes](#org48941b9)
    - [code examples:](#org1a5f1f6)
  - [some bits from the chat window:](#org64b0897)
    - [william michels brings up ghidra](#org061a969)


<a id="org0434601"></a>

# meeting notes August 15, 2021


<a id="org654d59e"></a>

## callbacks


<a id="org9948c41"></a>

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


<a id="org57b0c4f"></a>

## placeholder variables with callback/code blocks


<a id="org6226521"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org52c2559"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change ("condom converion" mentioned above


<a id="org7b1573b"></a>

## twigils considered weird


<a id="org8b1544b"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orge8e173d"></a>

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


<a id="org1939dbc"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgfe494c7"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org05734e2"></a>

### badly needs code examples.


<a id="org3e377d0"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgebbcb48"></a>

## Data::Dualmap, near first release


<a id="org2563f8c"></a>

### should handle all built-in datatypes


<a id="org54a2a9b"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org0720ff5"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org9d8d894"></a>

## data classes


<a id="orga8bc80d"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgeeaffd1"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgf0af52c"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org6285fff"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org5518393"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org45bbc85"></a>

### <https://conf.raku.org/talk/158>


<a id="orgccfe6f0"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org305b11d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org0ae00e4"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org2415a5c"></a>

## the usual links:


<a id="org48941b9"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org1a5f1f6"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org64b0897"></a>

## some bits from the chat window:


<a id="org061a969"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
