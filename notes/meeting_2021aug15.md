- [meeting notes August 15, 2021](#orgf55370d)
  - [callbacks](#orgf548ed4)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org352bc9e)
  - [placeholder variables with callback/code blocks](#org09dd4a5)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org7c4f0b8)
    - [hang-up with placeholders in if/else sub-blocks](#org2399db4)
  - [twigils considered weird](#org236144b)
    - [Raku makes sigils an invariant part of a name.](#org9b80537)
    - [Raku now has twigils](#org0e25385)
  - [.round arguments (more whining about the docs)](#orge7fb37b)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org6e39223)
    - [badly needs code examples.](#org5d9e2ff)
    - [naming of "scale" seems strange, but hard to improve:](#orgdefc507)
  - [Data::Dualmap, near first release](#orgc4eac53)
    - [should handle all built-in datatypes](#orgfb5c055)
    - [has most features of my perl5 Data::Math](#org6cf27ef)
    - [open question whether it would be better to generalize further](#org42da186)
  - [data classes](#orgb37aa17)
    - [custom classes as data containers (from June 20, 2021)](#orga236821)
  - [david christensen expounds on erlang compared to raku and perl](#orgf13f99e)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org7736329)
  - [question about bruce gray's "reading files can't be this simple"](#org445a7b4)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org6105a61)
    - [<https://conf.raku.org/talk/158>](#orgd221306)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org7905895)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgea9b85d)
  - [fun with raku on freebsd (bruce gray)](#org8077d56)
    - [<https://www.freshports.org/lang/rakudo/>](#orgd6d3d03)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org0b1fd50)
    - [he could use a freebsd expert to consult with](#orga30723a)
  - [the usual links:](#org54ed090)
    - [meeting notes](#org3c7a909)
    - [code examples:](#orgbfc7911)
  - [from the chat window:](#org31efb49)
    - [william michels brings up ghidra](#org53f9a7f)


<a id="orgf55370d"></a>

# meeting notes August 15, 2021


<a id="orgf548ed4"></a>

## callbacks


<a id="org352bc9e"></a>

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


<a id="org09dd4a5"></a>

## placeholder variables with callback/code blocks


<a id="org7c4f0b8"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org2399db4"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org236144b"></a>

## twigils considered weird


<a id="org9b80537"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org0e25385"></a>

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


<a id="orge7fb37b"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org6e39223"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org5d9e2ff"></a>

### badly needs code examples.


<a id="orgdefc507"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgc4eac53"></a>

## Data::Dualmap, near first release


<a id="orgfb5c055"></a>

### should handle all built-in datatypes


<a id="org6cf27ef"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org42da186"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgb37aa17"></a>

## data classes


<a id="orga236821"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf13f99e"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org7736329"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org445a7b4"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org6105a61"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgd221306"></a>

### <https://conf.raku.org/talk/158>


<a id="org7905895"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgea9b85d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org8077d56"></a>

## fun with raku on freebsd (bruce gray)


<a id="orgd6d3d03"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org0b1fd50"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orga30723a"></a>

### he could use a freebsd expert to consult with


<a id="org54ed090"></a>

## the usual links:


<a id="org3c7a909"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgbfc7911"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org31efb49"></a>

## from the chat window:


<a id="org53f9a7f"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
