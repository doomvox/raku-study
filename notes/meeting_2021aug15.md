- [meeting notes August 15, 2021](#orgede6bbe)
  - [callbacks](#org95f8d6b)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org33f4aab)
    - [misc sub-topics:](#org6dfcb57)
  - [.round arguments](#org5ba0eec)
  - [Data::Dualmap, first release](#org57acfcd)
    - [should handle all built-in datatypes](#org0e298a2)
    - [has most features of my perl5 Data::Math](#orgcd3ef6c)
  - [data classes](#orgc9f0195)
    - [custom classes as data containers (from June 20, 2021)](#org96be303)
  - [twigils considered weird](#org1f5fa4b)
    - [Raku makes sigils an invariant part of a name.](#org50e9724)
    - [Raku now has twigils](#org1d6efe1)
  - [david christensen expounds on erlang compared to raku and perl](#orgfd67dea)
    - ["representational polymorphic" &#x2013; larry wall](#org3b2ae5d)
  - [question about bruce gray's "reading files can't be this simple"](#org7d0f997)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org40a845f)
    - [<https://conf.raku.org/talk/158>](#orgf4cc0d1)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org1db85a6)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org106dd44)
  - [the usual links:](#orgfe3f6b5)
    - [meeting notes](#org4c40e0d)
    - [code examples:](#org2e21fac)
  - [fun with raku on freebsd (bruce gray)](#orgb129094)


<a id="orgede6bbe"></a>

# meeting notes August 15, 2021


<a id="org95f8d6b"></a>

## callbacks


<a id="org33f4aab"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org6dfcb57"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org5ba0eec"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org57acfcd"></a>

## Data::Dualmap, first release


<a id="org0e298a2"></a>

### should handle all built-in datatypes


<a id="orgcd3ef6c"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgc9f0195"></a>

## data classes


<a id="org96be303"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org1f5fa4b"></a>

## twigils considered weird


<a id="org50e9724"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org1d6efe1"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgfd67dea"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org3b2ae5d"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org7d0f997"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org40a845f"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgf4cc0d1"></a>

### <https://conf.raku.org/talk/158>


<a id="org1db85a6"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org106dd44"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgfe3f6b5"></a>

## the usual links:


<a id="org4c40e0d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org2e21fac"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orgb129094"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
