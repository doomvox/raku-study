- [meeting notes August 15, 2021](#org4f35f09)
  - [callbacks](#orgbb53d9a)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgbc65852)
    - [misc sub-topics:](#orgfa69b45)
  - [.round arguments, whining about the docs](#orgf914bd2)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org95a8ed8)
    - [](#org5a56afd)
    - [badly needs code examples.](#org7d4bcd1)
    - [naming of "scale" seems strange, hard to improve:](#orgd6b43ee)
  - [Data::Dualmap, first release](#org03fc29b)
    - [should handle all built-in datatypes](#orge073c23)
    - [has most features of my perl5 Data::Math](#orgbb3abef)
  - [data classes](#org8a39846)
    - [custom classes as data containers (from June 20, 2021)](#org3780934)
  - [twigils considered weird](#orgaabd763)
    - [Raku makes sigils an invariant part of a name.](#org3b3588e)
    - [Raku now has twigils](#orgb862b26)
  - [david christensen expounds on erlang compared to raku and perl](#orgcd8c003)
    - ["representational polymorphic" &#x2013; larry wall](#org87c15f5)
  - [question about bruce gray's "reading files can't be this simple"](#org4749626)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org05542a5)
    - [<https://conf.raku.org/talk/158>](#org14953af)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgf81c5ba)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org4afa843)
  - [the usual links:](#org70d88da)
    - [meeting notes](#org914b4ed)
    - [code examples:](#org010ab58)
  - [fun with raku on freebsd (bruce gray)](#org871798d)


<a id="org4f35f09"></a>

# meeting notes August 15, 2021


<a id="orgbb53d9a"></a>

## callbacks


<a id="orgbc65852"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgfa69b45"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgf914bd2"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org95a8ed8"></a>

### a case where I feel confused by the "signature" approach, despite knowing better


<a id="org5a56afd"></a>

### 


<a id="org7d4bcd1"></a>

### badly needs code examples.


<a id="orgd6b43ee"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org03fc29b"></a>

## Data::Dualmap, first release


<a id="orge073c23"></a>

### should handle all built-in datatypes


<a id="orgbb3abef"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org8a39846"></a>

## data classes


<a id="org3780934"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgaabd763"></a>

## twigils considered weird


<a id="org3b3588e"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgb862b26"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgcd8c003"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org87c15f5"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org4749626"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org05542a5"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org14953af"></a>

### <https://conf.raku.org/talk/158>


<a id="orgf81c5ba"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org4afa843"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org70d88da"></a>

## the usual links:


<a id="org914b4ed"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org010ab58"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org871798d"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
