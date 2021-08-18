- [meeting notes August 15, 2021](#org7c45bac)
  - [callbacks](#org85f747f)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org7ec24e7)
  - [placeholder variables with callback/code blocks](#orgef23b2d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org831968e)
    - [hang-up with placeholders in if/else sub-blocks](#org2120f1e)
  - [twigils considered weird](#org2b0fa8c)
    - [Raku makes sigils an invariant part of a name.](#org68cda3f)
    - [Raku now has twigils](#orgb1bb97f)
  - [.round arguments (more whining about the docs)](#orgd0fe429)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgd249a76)
    - [badly needs code examples.](#org5ba1570)
    - [naming of "scale" seems strange, but hard to improve:](#orged11df7)
  - [Data::Dualmap, near first release](#orgea0f59b)
    - [should handle all built-in datatypes](#org11b5909)
    - [has most features of my perl5 Data::Math](#org62ac9b6)
    - [open question whether it would be better to generalize further](#orgc397d94)
  - [data classes](#org35610e0)
    - [custom classes as data containers (from June 20, 2021)](#org4e30c9a)
  - [david christensen expounds on erlang compared to raku and perl](#orge41995f)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org9ee27ce)
  - [question about bruce gray's "reading files can't be this simple"](#orge2e193a)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org915bafe)
    - [<https://conf.raku.org/talk/158>](#orgc783c9e)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org2e63e81)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org684ce76)
  - [fun with raku on freebsd (bruce gray)](#orge93d024)
    - [<https://www.freshports.org/lang/rakudo/>](#org2af391b)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org833e26d)
    - [he could use a freebsd expert to consult with](#orgd20654e)
  - [the usual links:](#org49199f2)
    - [meeting notes](#org4c03a4f)
    - [code examples:](#org54e7f3d)
  - [from the chat window:](#orgcc14ce5)
    - [william michels mentions ghidra](#org1b863a0)


<a id="org7c45bac"></a>

# meeting notes August 15, 2021


<a id="org85f747f"></a>

## callbacks


<a id="org7ec24e7"></a>

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


<a id="orgef23b2d"></a>

## placeholder variables with callback/code blocks


<a id="org831968e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org2120f1e"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org2b0fa8c"></a>

## twigils considered weird


<a id="org68cda3f"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgb1bb97f"></a>

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


<a id="orgd0fe429"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgd249a76"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org5ba1570"></a>

### badly needs code examples.


<a id="orged11df7"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="orgea0f59b"></a>

## Data::Dualmap, near first release


<a id="org11b5909"></a>

### should handle all built-in datatypes


<a id="org62ac9b6"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) needed to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in skip case also
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgc397d94"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org35610e0"></a>

## data classes


<a id="org4e30c9a"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge41995f"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org9ee27ce"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="orge2e193a"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org915bafe"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgc783c9e"></a>

### <https://conf.raku.org/talk/158>


<a id="org2e63e81"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org684ce76"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orge93d024"></a>

## fun with raku on freebsd (bruce gray)


<a id="org2af391b"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org833e26d"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="orgd20654e"></a>

### he could use a freebsd expert to consult with


<a id="org49199f2"></a>

## the usual links:


<a id="org4c03a4f"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org54e7f3d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgcc14ce5"></a>

## from the chat window:


<a id="org1b863a0"></a>

### william michels mentions ghidra

1.  a reverse engineering tool from the nsa

2.  <https://www.nsa.gov/resources/everyone/ghidra/>
