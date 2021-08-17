- [meeting notes August 15, 2021](#orgf96f258)
  - [callbacks](#org456506a)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org2c298da)
  - [placeholder variables with callback/code blocks](#orgef5dc05)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#orgbd02f2b)
    - [hang-up with placeholders in if/else sub-blocks](#orgb120b15)
  - [twigils considered weird](#orgaef0854)
    - [Raku makes sigils an invariant part of a name.](#orgf6b6679)
    - [Raku now has twigils](#org55b1862)
  - [.round arguments (more whining about the docs)](#orgf41085d)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org4ac4d9c)
    - [badly needs code examples.](#orge25550c)
    - [naming of "scale" seems strange, but hard to improve:](#org3e1678b)
  - [Data::Dualmap, near first release](#org8a7e551)
    - [should handle all built-in datatypes](#org921b5fd)
    - [has most features of my perl5 Data::Math](#org91fdd1d)
    - [open question whether it would be better to generalize further](#org479d608)
  - [data classes](#org55317a0)
    - [custom classes as data containers (from June 20, 2021)](#orgd27fd63)
  - [david christensen expounds on erlang compared to raku and perl](#orgabe6f0e)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org98b8622)
  - [question about bruce gray's "reading files can't be this simple"](#org0de78d8)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org3547a7c)
    - [<https://conf.raku.org/talk/158>](#org636ebe0)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orge72e18b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org1692fd0)
  - [fun with raku on freebsd (bruce gray)](#orgb6bf5da)
    - [<https://www.freshports.org/lang/rakudo/>](#org1ca3f97)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org04e47fa)
    - [he could use a freebsd expert to consult with](#orgf92c165)
  - [the usual links:](#org9692f6c)
    - [meeting notes](#orgf0de074)
    - [code examples:](#org7122095)
  - [from the chat window:](#orgff7f0b3)
    - [william michels mentions ghidra](#org0b14848)


<a id="orgf96f258"></a>

# meeting notes August 15, 2021


<a id="org456506a"></a>

## callbacks


<a id="org2c298da"></a>

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


<a id="orgef5dc05"></a>

## placeholder variables with callback/code blocks


<a id="orgbd02f2b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgb120b15"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="orgaef0854"></a>

## twigils considered weird


<a id="orgf6b6679"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org55b1862"></a>

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


<a id="orgf41085d"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org4ac4d9c"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orge25550c"></a>

### badly needs code examples.


<a id="org3e1678b"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org8a7e551"></a>

## Data::Dualmap, near first release


<a id="org921b5fd"></a>

### should handle all built-in datatypes


<a id="org91fdd1d"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org479d608"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org55317a0"></a>

## data classes


<a id="orgd27fd63"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgabe6f0e"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org98b8622"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org0de78d8"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org3547a7c"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org636ebe0"></a>

### <https://conf.raku.org/talk/158>


<a id="orge72e18b"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org1692fd0"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgb6bf5da"></a>

## fun with raku on freebsd (bruce gray)


<a id="org1ca3f97"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org04e47fa"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgf92c165"></a>

### he could use a freebsd expert to consult with


<a id="org9692f6c"></a>

## the usual links:


<a id="orgf0de074"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org7122095"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgff7f0b3"></a>

## from the chat window:


<a id="org0b14848"></a>

### william michels mentions ghidra

1.  a reverse engineering tool from the nsa

2.  <https://www.nsa.gov/resources/everyone/ghidra/>
