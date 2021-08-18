- [meeting notes August 15, 2021](#org85a138a)
  - [callbacks](#org72011e6)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org03ad86d)
  - [placeholder variables with callback/code blocks](#orgdcc525e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org7f8ef88)
    - [hang-up with placeholders in if/else sub-blocks](#org473834b)
  - [twigils considered weird](#org201d7b1)
    - [Raku makes sigils an invariant part of a name.](#orgea9be35)
    - [Raku now has twigils](#org2ff909a)
  - [.round arguments (more whining about the docs)](#org95a15f1)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org91cb9b0)
    - [badly needs code examples.](#org569983c)
    - [naming of "scale" seems strange, but hard to improve:](#orgd4570e6)
  - [Data::Dualmap, near first release](#orga5a7fae)
    - [should handle all built-in datatypes](#orge98abdb)
    - [has most features of my perl5 Data::Math](#org71f9b99)
    - [open question whether it would be better to generalize further](#orgd032f40)
  - [data classes](#orgf99ca21)
    - [custom classes as data containers (from June 20, 2021)](#org2551caa)
  - [david christensen expounds on erlang compared to raku and perl](#orgcddcedb)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org78ba971)
  - [question about bruce gray's "reading files can't be this simple"](#org5588962)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org1605f94)
    - [<https://conf.raku.org/talk/158>](#orga713fb8)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgdc0ef68)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org39bbc80)
  - [fun with raku on freebsd (bruce gray)](#orgea724b2)
    - [<https://www.freshports.org/lang/rakudo/>](#org80c830f)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org946b42e)
    - [he could use a freebsd expert to consult with](#orgeb38b7f)
  - [the usual links:](#org61e48c8)
    - [meeting notes](#orgf163656)
    - [code examples:](#org32c96e6)
  - [from the chat window:](#org2646642)
    - [william michels mentions ghidra](#org17feed7)


<a id="org85a138a"></a>

# meeting notes August 15, 2021


<a id="org72011e6"></a>

## callbacks


<a id="org03ad86d"></a>

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


<a id="orgdcc525e"></a>

## placeholder variables with callback/code blocks


<a id="org7f8ef88"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org473834b"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org201d7b1"></a>

## twigils considered weird


<a id="orgea9be35"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org2ff909a"></a>

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


<a id="org95a15f1"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org91cb9b0"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org569983c"></a>

### badly needs code examples.


<a id="orgd4570e6"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orga5a7fae"></a>

## Data::Dualmap, near first release


<a id="orge98abdb"></a>

### should handle all built-in datatypes


<a id="org71f9b99"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) needed to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in skip case also
        
            1.  had an intermittant test failure: presumably an unpredicitable key ordering effect


<a id="orgd032f40"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgf99ca21"></a>

## data classes


<a id="org2551caa"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgcddcedb"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org78ba971"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org5588962"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org1605f94"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orga713fb8"></a>

### <https://conf.raku.org/talk/158>


<a id="orgdc0ef68"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org39bbc80"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgea724b2"></a>

## fun with raku on freebsd (bruce gray)


<a id="org80c830f"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org946b42e"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgeb38b7f"></a>

### he could use a freebsd expert to consult with


<a id="org61e48c8"></a>

## the usual links:


<a id="orgf163656"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org32c96e6"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org2646642"></a>

## from the chat window:


<a id="org17feed7"></a>

### william michels mentions ghidra

1.  a reverse engineering tool from the nsa

2.  <https://www.nsa.gov/resources/everyone/ghidra/>
