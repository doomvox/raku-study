- [meeting notes August 15, 2021](#org4a2fdd8)
  - [callbacks](#org2382c53)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org41e3345)
    - [misc sub-topics:](#org97136c9)
  - [.round arguments](#org70bbf57)
  - [Data::Dualmap, first release](#orgbb94895)
    - [should handle all built-in datatypes](#orgacfdc19)
    - [has most features of my perl5 Data::Math](#orge16d693)
  - [data classes](#org0cd3de1)
    - [custom classes as data containers (from June 20, 2021)](#orgfd4e5d6)
  - [twigils considered weird](#org19189f9)
    - [Raku makes sigils an invariant part of a name.](#org1b6c8d2)
    - [Raku now has twigils](#orgd747e6c)
  - [david christensen expounds on erlang compared to raku and perl](#orgaad8a59)
  - [question about bruce gray's "reading files can't be this simple"](#orgcc886e2)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgaf69ce8)
    - [<https://conf.raku.org/talk/158>](#orgcac8abc)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgaf2ce27)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org2752291)
  - [the usual links:](#org45b9af3)
    - [meeting notes](#orgd5013aa)
    - [code examples:](#orgb0801f2)
  - [fun with raku on freebsd (bruce gray)](#org95b1990)


<a id="org4a2fdd8"></a>

# meeting notes August 15, 2021


<a id="org2382c53"></a>

## callbacks


<a id="org41e3345"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org97136c9"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org70bbf57"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgbb94895"></a>

## Data::Dualmap, first release


<a id="orgacfdc19"></a>

### should handle all built-in datatypes


<a id="orge16d693"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org0cd3de1"></a>

## data classes


<a id="orgfd4e5d6"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org19189f9"></a>

## twigils considered weird


<a id="org1b6c8d2"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgd747e6c"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgaad8a59"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgcc886e2"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgaf69ce8"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgcac8abc"></a>

### <https://conf.raku.org/talk/158>


<a id="orgaf2ce27"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org2752291"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org45b9af3"></a>

## the usual links:


<a id="orgd5013aa"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgb0801f2"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org95b1990"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
