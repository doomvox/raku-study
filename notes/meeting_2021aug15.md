- [meeting notes August 15, 2021](#orgfeab0de)
  - [callbacks](#org38521aa)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orge7869a3)
    - [misc sub-topics:](#org93cf2f4)
  - [.round arguments](#org091dd09)
  - [Data::Dualmap, first release](#orgc07f9ca)
    - [should handle all built-in datatypes](#org013408e)
    - [has most features of my perl5 Data::Math](#org1a0cb75)
  - [data classes](#org8d1f430)
    - [custom classes as data containers (from June 20, 2021)](#org78d027c)
  - [twigils considered weird](#org06aace7)
    - [Raku makes sigils an invariant part of a name.](#orgd5c1b6c)
    - [Raku now has twigils](#org072ddb5)
  - [david christensen expounds on erlang compared to raku and perl](#org98e48f2)
    - ["representational polymorphic" &#x2013; larry wall](#orgfbffa82)
  - [question about bruce gray's "reading files can't be this simple"](#org54fb6cc)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org616435c)
    - [<https://conf.raku.org/talk/158>](#orgafea720)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgc2d2bd3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgf88a21b)
  - [the usual links:](#orge4ef0d5)
    - [meeting notes](#orge743057)
    - [code examples:](#orga4272ef)
  - [fun with raku on freebsd (bruce gray)](#orge3d4767)


<a id="orgfeab0de"></a>

# meeting notes August 15, 2021


<a id="org38521aa"></a>

## callbacks


<a id="orge7869a3"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org93cf2f4"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org091dd09"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgc07f9ca"></a>

## Data::Dualmap, first release


<a id="org013408e"></a>

### should handle all built-in datatypes


<a id="org1a0cb75"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org8d1f430"></a>

## data classes


<a id="org78d027c"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org06aace7"></a>

## twigils considered weird


<a id="orgd5c1b6c"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org072ddb5"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org98e48f2"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgfbffa82"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org54fb6cc"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org616435c"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgafea720"></a>

### <https://conf.raku.org/talk/158>


<a id="orgc2d2bd3"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgf88a21b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orge4ef0d5"></a>

## the usual links:


<a id="orge743057"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orga4272ef"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="orge3d4767"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
