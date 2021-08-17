- [meeting notes August 15, 2021](#org8640620)
  - [callbacks](#org9e4a998)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgf8e199c)
  - [placeholder variables with callback/code blocks](#orge22ee61)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#orge1568da)
    - [hang-up with placeholders in if/else sub-blocks](#orgce7328a)
  - [twigils considered weird](#org6497585)
    - [Raku makes sigils an invariant part of a name.](#org98a8403)
    - [Raku now has twigils](#org101ed98)
  - [.round arguments, whining about the docs](#org3e2bdbc)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org2974127)
    - [badly needs code examples.](#orga50091a)
    - [naming of "scale" seems strange, hard to improve:](#org4a2934d)
  - [Data::Dualmap, near first release](#org177c90e)
    - [should handle all built-in datatypes](#orgacbff02)
    - [has most features of my perl5 Data::Math](#orgd6d2b37)
    - [open question whether it would be better to generalize further](#org15068f8)
  - [data classes](#org36c18b4)
    - [custom classes as data containers (from June 20, 2021)](#org014f840)
  - [david christensen expounds on erlang compared to raku and perl](#org275351c)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org609d032)
  - [question about bruce gray's "reading files can't be this simple"](#org984b833)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgae3c7ca)
    - [<https://conf.raku.org/talk/158>](#orgfd695e4)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgfcc5c23)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org0b3d6ec)
  - [fun with raku on freebsd (bruce gray)](#org58a26cb)
  - [the usual links:](#org5701269)
    - [meeting notes](#org965fc83)
    - [code examples:](#orgcf2567e)
  - [some bits from the chat window:](#org58e108b)
    - [william michels brings up ghidra](#org4114034)


<a id="org8640620"></a>

# meeting notes August 15, 2021


<a id="org9e4a998"></a>

## callbacks


<a id="orgf8e199c"></a>

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


<a id="orge22ee61"></a>

## placeholder variables with callback/code blocks


<a id="orge1568da"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgce7328a"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org6497585"></a>

## twigils considered weird


<a id="org98a8403"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org101ed98"></a>

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


<a id="org3e2bdbc"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org2974127"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orga50091a"></a>

### badly needs code examples.


<a id="org4a2934d"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org177c90e"></a>

## Data::Dualmap, near first release


<a id="orgacbff02"></a>

### should handle all built-in datatypes


<a id="orgd6d2b37"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org15068f8"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org36c18b4"></a>

## data classes


<a id="org014f840"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org275351c"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org609d032"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org984b833"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgae3c7ca"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgfd695e4"></a>

### <https://conf.raku.org/talk/158>


<a id="orgfcc5c23"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org0b3d6ec"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org58a26cb"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org5701269"></a>

## the usual links:


<a id="org965fc83"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgcf2567e"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org58e108b"></a>

## some bits from the chat window:


<a id="org4114034"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
