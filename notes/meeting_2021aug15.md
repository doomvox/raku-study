- [meeting notes August 15, 2021](#org23acff6)
  - [callbacks](#org5676883)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org68d3c47)
  - [placeholder variables with callback/code blocks](#org0ced55f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org47d8fed)
    - [hang-up with placeholders in if/else sub-blocks](#orgc0f5d03)
  - [twigils considered weird](#org6ceef39)
    - [Raku makes sigils an invariant part of a name.](#orgc785fe2)
    - [Raku now has twigils](#orgc2c5a9b)
  - [.round arguments (more whining about the docs)](#org7f13222)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#orgb246a9d)
    - [badly needs code examples.](#org9176b2c)
    - [naming of "scale" seems strange, but hard to improve:](#org02a7a9f)
  - [Data::Dualmap, near first release](#org96efc13)
    - [should handle all built-in datatypes](#orgdf4c8cd)
    - [has most features of my perl5 Data::Math](#orgd73cb7e)
    - [open question whether it would be better to generalize further](#org91b142a)
  - [data classes](#org0c180ea)
    - [custom classes as data containers (from June 20, 2021)](#orgf477f7a)
  - [david christensen expounds on erlang compared to raku and perl](#org4a46fb7)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org542c857)
  - [question about bruce gray's "reading files can't be this simple"](#orgc3a35e1)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org1fd7817)
    - [<https://conf.raku.org/talk/158>](#orgf905647)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org980031a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org841f337)
  - [fun with raku on freebsd (bruce gray)](#orgd79f705)
    - [<https://www.freshports.org/lang/rakudo/>](#orga74d346)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#org86a6c98)
    - [he could use a freebsd expert to consult with](#org13dc103)
  - [the usual links:](#org52674e9)
    - [meeting notes](#org83c1ce9)
    - [code examples:](#orga25bb9a)
  - [some bits from the chat window:](#org64c534f)
    - [william michels brings up ghidra](#orgbfb3388)


<a id="org23acff6"></a>

# meeting notes August 15, 2021


<a id="org5676883"></a>

## callbacks


<a id="org68d3c47"></a>

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


<a id="org0ced55f"></a>

## placeholder variables with callback/code blocks


<a id="org47d8fed"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgc0f5d03"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org6ceef39"></a>

## twigils considered weird


<a id="orgc785fe2"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgc2c5a9b"></a>

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


<a id="org7f13222"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgb246a9d"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org9176b2c"></a>

### badly needs code examples.


<a id="org02a7a9f"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org96efc13"></a>

## Data::Dualmap, near first release


<a id="orgdf4c8cd"></a>

### should handle all built-in datatypes


<a id="orgd73cb7e"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org91b142a"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org0c180ea"></a>

## data classes


<a id="orgf477f7a"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4a46fb7"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org542c857"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="orgc3a35e1"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org1fd7817"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgf905647"></a>

### <https://conf.raku.org/talk/158>


<a id="org980031a"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org841f337"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgd79f705"></a>

## fun with raku on freebsd (bruce gray)


<a id="orga74d346"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="org86a6c98"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org13dc103"></a>

### he could use a freebsd expert to consult with


<a id="org52674e9"></a>

## the usual links:


<a id="org83c1ce9"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orga25bb9a"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org64c534f"></a>

## some bits from the chat window:


<a id="orgbfb3388"></a>

### william michels brings up ghidra

1.  <https://www.nsa.gov/resources/everyone/ghidra/>
