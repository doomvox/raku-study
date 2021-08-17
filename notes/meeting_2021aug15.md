- [meeting notes August 15, 2021](#orgc8669ca)
  - [callbacks](#org0feaf2f)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org406e7c3)
  - [placeholder variables with callback/code blocks](#org0b781b8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org4c19405)
    - [hang-up with placeholders in if/else sub-blocks](#org4b78ec8)
  - [twigils considered weird](#org9e9d2e0)
    - [Raku makes sigils an invariant part of a name.](#org80b0ba2)
    - [Raku now has twigils](#org85d92ed)
  - [.round arguments (more whining about the docs)](#orgdc3a53d)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org2b7b02d)
    - [badly needs code examples.](#orgfbd642c)
    - [naming of "scale" seems strange, but hard to improve:](#org29e7da3)
  - [Data::Dualmap, near first release](#orgb650f35)
    - [should handle all built-in datatypes](#org1747332)
    - [has most features of my perl5 Data::Math](#org17fc162)
    - [open question whether it would be better to generalize further](#org5b7cc9a)
  - [data classes](#orgad20319)
    - [custom classes as data containers (from June 20, 2021)](#org8201760)
  - [david christensen expounds on erlang compared to raku and perl](#org37b9dc4)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org7942326)
  - [question about bruce gray's "reading files can't be this simple"](#org53def96)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgbdba650)
    - [<https://conf.raku.org/talk/158>](#orgd449aef)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgf434c59)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org3c5de27)
  - [fun with raku on freebsd (bruce gray)](#org130be3f)
  - [the usual links:](#org46d2596)
    - [meeting notes](#org6265587)
    - [code examples:](#org719b62f)
  - [some bits from the chat window:](#orgae58bf9)
    - [william michels brings up ghidra](#orgc34a21d)


<a id="orgc8669ca"></a>

# meeting notes August 15, 2021


<a id="org0feaf2f"></a>

## callbacks


<a id="org406e7c3"></a>

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


<a id="org0b781b8"></a>

## placeholder variables with callback/code blocks


<a id="org4c19405"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org4b78ec8"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org9e9d2e0"></a>

## twigils considered weird


<a id="org80b0ba2"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org85d92ed"></a>

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


<a id="orgdc3a53d"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org2b7b02d"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="orgfbd642c"></a>

### badly needs code examples.


<a id="org29e7da3"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgb650f35"></a>

## Data::Dualmap, near first release


<a id="org1747332"></a>

### should handle all built-in datatypes


<a id="org17fc162"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org5b7cc9a"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgad20319"></a>

## data classes


<a id="org8201760"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org37b9dc4"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org7942326"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="org53def96"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgbdba650"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgd449aef"></a>

### <https://conf.raku.org/talk/158>


<a id="orgf434c59"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org3c5de27"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org130be3f"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org46d2596"></a>

## the usual links:


<a id="org6265587"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org719b62f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgae58bf9"></a>

## some bits from the chat window:


<a id="orgc34a21d"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
