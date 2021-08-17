- [meeting notes August 15, 2021](#org1291054)
  - [callbacks](#org231ec06)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgcc52e56)
    - [misc sub-topics:](#org523edbc)
  - [.round arguments, whining about the docs](#orgbc27d92)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org67d7ac7)
    - [badly needs code examples.](#org5f52fe3)
    - [naming of "scale" seems strange, hard to improve:](#org3518979)
  - [Data::Dualmap, near first release](#org19a9238)
    - [should handle all built-in datatypes](#org5790877)
    - [has most features of my perl5 Data::Math](#orgbfaffa4)
    - [open question whether it would be better to generalize further](#org1e50df7)
  - [data classes](#orgcf724ab)
    - [custom classes as data containers (from June 20, 2021)](#org5eff009)
  - [twigils considered weird](#org0c73399)
    - [Raku makes sigils an invariant part of a name.](#org4149ba3)
    - [Raku now has twigils](#org5818be6)
  - [david christensen expounds on erlang compared to raku and perl](#orgeca6178)
    - ["representational polymorphic" &#x2013; larry wall](#orgaaaad3a)
  - [question about bruce gray's "reading files can't be this simple"](#orgf67fbe8)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org74e018f)
    - [<https://conf.raku.org/talk/158>](#org43d6758)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org82fa125)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org861ebb2)
  - [the usual links:](#org655fe03)
    - [meeting notes](#org16eebf2)
    - [code examples:](#org7a9cfd5)
  - [fun with raku on freebsd (bruce gray)](#org3e743c7)


<a id="org1291054"></a>

# meeting notes August 15, 2021


<a id="org231ec06"></a>

## callbacks


<a id="orgcc52e56"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org523edbc"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgbc27d92"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org67d7ac7"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org5f52fe3"></a>

### badly needs code examples.


<a id="org3518979"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org19a9238"></a>

## Data::Dualmap, near first release


<a id="org5790877"></a>

### should handle all built-in datatypes


<a id="orgbfaffa4"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  implementing skip<sub>keys</sub> patterns

    1.  for funsies, maybe accept junctions (use type Mu)?
    
    2.  last bugs:
    
        1.  (1) need to explicitly pass through when "skipping"
        
        2.  (2) subtle need to do data<sub>qualify</sub> in either case
        
            1.  had an intermittant test failure: unpredicitable key ordering


<a id="org1e50df7"></a>

### open question whether it would be better to generalize further

1.  name "dualmap" suggests it applies a block to all leafs

2.  "It's hard to generalize about generalization, sometimes it's good, sometimes not."


<a id="orgcf724ab"></a>

## data classes


<a id="org5eff009"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org0c73399"></a>

## twigils considered weird


<a id="org4149ba3"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org5818be6"></a>

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


<a id="orgeca6178"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgaaaad3a"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="orgf67fbe8"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org74e018f"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org43d6758"></a>

### <https://conf.raku.org/talk/158>


<a id="org82fa125"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org861ebb2"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org655fe03"></a>

## the usual links:


<a id="org16eebf2"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org7a9cfd5"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org3e743c7"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
