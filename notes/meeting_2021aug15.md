- [meeting notes August 15, 2021](#org6778105)
  - [callbacks](#org6ee23f9)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org88597e8)
    - [misc sub-topics:](#orgc0bdaf3)
  - [twigils considered weird](#org9747ee6)
    - [Raku makes sigils an invariant part of a name.](#org973c738)
    - [Raku now has twigils](#orga07fcac)
  - [.round arguments, whining about the docs](#org89b4086)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org5c7eac7)
    - [badly needs code examples.](#org9dacab8)
    - [naming of "scale" seems strange, hard to improve:](#orgb47b76e)
  - [Data::Dualmap, near first release](#org2971481)
    - [should handle all built-in datatypes](#orgdda2abf)
    - [has most features of my perl5 Data::Math](#orgfbeaf2d)
    - [open question whether it would be better to generalize further](#orgba27486)
  - [data classes](#org898e240)
    - [custom classes as data containers (from June 20, 2021)](#org00fa71c)
  - [david christensen expounds on erlang compared to raku and perl](#orgcd02f2e)
    - ["representational polymorphic" &#x2013; larry wall](#orgce74676)
  - [question about bruce gray's "reading files can't be this simple"](#orgc481200)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orge84da6d)
    - [<https://conf.raku.org/talk/158>](#org771b488)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org0408b97)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org758f120)
  - [the usual links:](#orge499d99)
    - [meeting notes](#orgd87ac45)
    - [code examples:](#orga56f1d6)
  - [fun with raku on freebsd (bruce gray)](#org8d69d98)


<a id="org6778105"></a>

# meeting notes August 15, 2021


<a id="org6ee23f9"></a>

## callbacks


<a id="org88597e8"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used
    
    2.  william michels suggests "gerund": verbs turned into nouns

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgc0bdaf3"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org9747ee6"></a>

## twigils considered weird


<a id="org973c738"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orga07fcac"></a>

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


<a id="org89b4086"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org5c7eac7"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org9dacab8"></a>

### badly needs code examples.


<a id="orgb47b76e"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org2971481"></a>

## Data::Dualmap, near first release


<a id="orgdda2abf"></a>

### should handle all built-in datatypes


<a id="orgfbeaf2d"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="orgba27486"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="org898e240"></a>

## data classes


<a id="org00fa71c"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgcd02f2e"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgce74676"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgc481200"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orge84da6d"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org771b488"></a>

### <https://conf.raku.org/talk/158>


<a id="org0408b97"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org758f120"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orge499d99"></a>

## the usual links:


<a id="orgd87ac45"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orga56f1d6"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org8d69d98"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
