- [meeting notes August 15, 2021](#org2adaea0)
  - [callbacks](#orgd03f61e)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org95fdf0c)
  - [placeholder variables with callback/code blocks](#org00b3b64)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#orga6742e9)
    - [hang-up with placeholders in if/else sub-blocks](#orgf3ff75e)
  - [twigils considered weird](#orgcb19903)
    - [Raku makes sigils an invariant part of a name.](#orga28cd7c)
    - [Raku now has twigils](#org300ed8f)
  - [.round arguments (more whining about the docs)](#org186aa48)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org757dec8)
    - [badly needs code examples.](#org07f64e1)
    - [naming of "scale" seems strange, but hard to improve:](#org1b283e4)
  - [Data::Dualmap, near first release](#orgdde0ac2)
    - [should handle all built-in datatypes](#orgfa638d0)
    - [has most features of my perl5 Data::Math](#org5f12841)
    - [open question whether it would be better to generalize further](#org9ae191c)
  - [data classes](#org89b3487)
    - [custom classes as data containers (from June 20, 2021)](#org0604318)
  - [david christensen expounds on erlang compared to raku and perl](#orgd9d8906)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#orgacc7769)
  - [question about bruce gray's "reading files can't be this simple"](#org076d7fd)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org66c7655)
    - [<https://conf.raku.org/talk/158>](#org98f67d2)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org6e5ea4a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org6ef0b5f)
  - [fun with raku on freebsd (bruce gray)](#org45695d3)
    - [<https://www.freshports.org/lang/rakudo/>](#orgbe98ca7)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org1388490)
    - [he could use a freebsd expert to consult with](#org7907d74)
  - [the usual links:](#orgce95223)
    - [meeting notes](#org623ec55)
    - [code examples:](#org90a4880)
  - [from the chat window:](#org4024a3d)
    - [william michels mentions ghidra](#org0de7ee1)


<a id="org2adaea0"></a>

# meeting notes August 15, 2021


<a id="orgd03f61e"></a>

## callbacks


<a id="org95fdf0c"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes term "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  misc sub-topics:

    1.  sigils: $code vs &code
    
    2.  sub vs block
    
        1.  subs can use return
    
    3.  placeholder vars idiom
    
        1.  use the hat just once (the condom convention)
        
            1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10090.html>


<a id="org00b3b64"></a>

## placeholder variables with callback/code blocks


<a id="orga6742e9"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgf3ff75e"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="orgcb19903"></a>

## twigils considered weird


<a id="orga28cd7c"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org300ed8f"></a>

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


<a id="org186aa48"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org757dec8"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org07f64e1"></a>

### badly needs code examples.


<a id="org1b283e4"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgdde0ac2"></a>

## Data::Dualmap, near first release


<a id="orgfa638d0"></a>

### should handle all built-in datatypes


<a id="org5f12841"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) needed to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in skip case also
        
            1.  had an intermittant test failure: presumably an unpredicitable key ordering effect


<a id="org9ae191c"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org89b3487"></a>

## data classes


<a id="org0604318"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd9d8906"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgacc7769"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org076d7fd"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org66c7655"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org98f67d2"></a>

### <https://conf.raku.org/talk/158>


<a id="org6e5ea4a"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org6ef0b5f"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org45695d3"></a>

## fun with raku on freebsd (bruce gray)


<a id="orgbe98ca7"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org1388490"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org7907d74"></a>

### he could use a freebsd expert to consult with


<a id="orgce95223"></a>

## the usual links:


<a id="org623ec55"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org90a4880"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org4024a3d"></a>

## from the chat window:


<a id="org0de7ee1"></a>

### william michels mentions ghidra

1.  a reverse engineering tool from the nsa

2.  <https://www.nsa.gov/resources/everyone/ghidra/>
