- [meeting notes August 15, 2021](#org36049ad)
  - [callbacks](#org8606678)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org3f0888c)
  - [placeholder variables with callback/code blocks](#orgc5dbe33)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org93048e1)
    - [hang-up with placeholders in if/else sub-blocks](#org609211b)
  - [twigils considered weird](#orgfac53fb)
    - [Raku makes sigils an invariant part of a name.](#org83e4a03)
    - [Raku now has twigils](#org1c31924)
  - [.round arguments (more whining about the docs)](#org02b5fa9)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org2e23e9d)
    - [badly needs code examples.](#orgeece074)
    - [naming of "scale" seems strange, hard to improve:](#orgb3fbff8)
  - [Data::Dualmap, near first release](#org94d741c)
    - [should handle all built-in datatypes](#org5c604bd)
    - [has most features of my perl5 Data::Math](#org67faa9f)
    - [open question whether it would be better to generalize further](#org9c648e4)
  - [data classes](#org0998eaf)
    - [custom classes as data containers (from June 20, 2021)](#orgcc51558)
  - [david christensen expounds on erlang compared to raku and perl](#org156aad6)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orgca6fa01)
  - [question about bruce gray's "reading files can't be this simple"](#org81eb675)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org2e2d4d7)
    - [<https://conf.raku.org/talk/158>](#org08d656f)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org375e9f9)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgd961faf)
  - [fun with raku on freebsd (bruce gray)](#org62e8495)
  - [the usual links:](#org1b5cd39)
    - [meeting notes](#org83357b7)
    - [code examples:](#org2d0b34d)
  - [some bits from the chat window:](#org2cdffa7)
    - [william michels brings up ghidra](#org86ede3c)


<a id="org36049ad"></a>

# meeting notes August 15, 2021


<a id="org8606678"></a>

## callbacks


<a id="org3f0888c"></a>

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


<a id="orgc5dbe33"></a>

## placeholder variables with callback/code blocks


<a id="org93048e1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org609211b"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="orgfac53fb"></a>

## twigils considered weird


<a id="org83e4a03"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org1c31924"></a>

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


<a id="org02b5fa9"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org2e23e9d"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgeece074"></a>

### badly needs code examples.


<a id="orgb3fbff8"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org94d741c"></a>

## Data::Dualmap, near first release


<a id="org5c604bd"></a>

### should handle all built-in datatypes


<a id="org67faa9f"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org9c648e4"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org0998eaf"></a>

## data classes


<a id="orgcc51558"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org156aad6"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgca6fa01"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org81eb675"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org2e2d4d7"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org08d656f"></a>

### <https://conf.raku.org/talk/158>


<a id="org375e9f9"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgd961faf"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org62e8495"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org1b5cd39"></a>

## the usual links:


<a id="org83357b7"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org2d0b34d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org2cdffa7"></a>

## some bits from the chat window:


<a id="org86ede3c"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
