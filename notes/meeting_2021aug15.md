- [meeting notes August 15, 2021](#org66904ad)
  - [callbacks](#org8ccc31b)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org47cb0cf)
  - [placeholder variables with callback/code blocks](#org486d32d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>](#org32df813)
    - [hang-up with placeholders in if/else sub-blocks](#org0246fb0)
  - [twigils considered weird](#org0639665)
    - [Raku makes sigils an invariant part of a name.](#org3740943)
    - [Raku now has twigils](#orge3bc381)
  - [.round arguments (more whining about the docs)](#org1591cac)
    - [a case where I feel confused by the "signature" approach in the docs (despite knowing better)](#org967154d)
    - [badly needs code examples.](#orgb7849b2)
    - [naming of "scale" seems strange, but hard to improve:](#org14edec2)
  - [Data::Dualmap, near first release](#org6c88cda)
    - [should handle all built-in datatypes](#orgc515296)
    - [has most features of my perl5 Data::Math](#org8ab19e4)
    - [open question whether it would be better to generalize further](#orgb852dd4)
  - [data classes](#org3e855b4)
    - [custom classes as data containers (from June 20, 2021)](#org4cadf64)
  - [david christensen expounds on erlang compared to raku and perl](#org053952c)
    - [larry wall talk abour raku at Erlang with Joe Armstrong](#org7c084a8)
  - [question about bruce gray's "reading files can't be this simple"](#orge5c4467)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org294bbd4)
    - [<https://conf.raku.org/talk/158>](#orga208fe8)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgbd2aae0)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org9ecc5e7)
  - [fun with raku on freebsd (bruce gray)](#orgd8d5bad)
    - [<https://www.freshports.org/lang/rakudo/>](#orgbd6a916)
    - [<https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>](#orga3b9ae1)
    - [he could use a freebsd expert to consult with](#org6fcd1c7)
  - [the usual links:](#org0cdf6d4)
    - [meeting notes](#orgf6271f3)
    - [code examples:](#org32ecccb)
  - [from the chat window:](#orgb9b2bd2)
    - [william michels mentions ghidra](#org85da518)


<a id="org66904ad"></a>

# meeting notes August 15, 2021


<a id="org8ccc31b"></a>

## callbacks


<a id="org47cb0cf"></a>

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


<a id="org486d32d"></a>

## placeholder variables with callback/code blocks


<a id="org32df813"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org0246fb0"></a>

### hang-up with placeholders in if/else sub-blocks

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku>

2.  error messaging weak (sounds like it's pointing elsewhere, need to check line numbers)

3.  code examples in the docs are sketchy

    1.  I think the standard idiom needs to change to the "condom convention" mentioned above
    
        1.  <https://github.com/rakudo/rakudo/issues/4490>


<a id="org0639665"></a>

## twigils considered weird


<a id="org3740943"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orge3bc381"></a>

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


<a id="org1591cac"></a>

## .round arguments (more whining about the docs)

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org967154d"></a>

### a case where I feel confused by the "signature" approach in the docs (despite knowing better)

1.  signatures are how things are defined, not how they're to be used


<a id="orgb7849b2"></a>

### badly needs code examples.


<a id="org14edec2"></a>

### naming of "scale" seems strange, but hard to improve:

1.  "place" isn't right: .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org6c88cda"></a>

## Data::Dualmap, near first release


<a id="orgc515296"></a>

### should handle all built-in datatypes


<a id="org8ab19e4"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) needed to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in skip case also
        
            1.  had an intermittant test failure: presumably an unpredicitable key ordering effect


<a id="orgb852dd4"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org3e855b4"></a>

## data classes


<a id="org4cadf64"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org053952c"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org7c084a8"></a>

### larry wall talk abour raku at Erlang with Joe Armstrong

<https://www.youtube.com/watch?v=SpH9BTMZKXc>

1.  "representational polymorphic"


<a id="orge5c4467"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org294bbd4"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orga208fe8"></a>

### <https://conf.raku.org/talk/158>


<a id="orgbd2aae0"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org9ecc5e7"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgd8d5bad"></a>

## fun with raku on freebsd (bruce gray)


<a id="orgbd6a916"></a>

### <https://www.freshports.org/lang/rakudo/>


<a id="orga3b9ae1"></a>

### <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>


<a id="org6fcd1c7"></a>

### he could use a freebsd expert to consult with


<a id="org0cdf6d4"></a>

## the usual links:


<a id="orgf6271f3"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org32ecccb"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgb9b2bd2"></a>

## from the chat window:


<a id="org85da518"></a>

### william michels mentions ghidra

1.  a reverse engineering tool from the nsa

2.  <https://www.nsa.gov/resources/everyone/ghidra/>
