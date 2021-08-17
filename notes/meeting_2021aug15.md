- [meeting notes August 15, 2021](#orgfdb2d84)
  - [callbacks](#orga0a045b)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgb8a4e61)
    - [misc sub-topics:](#org7c2d59d)
  - [.round arguments](#org7cbd641)
  - [Data::Dualmap, first release](#orgff125af)
    - [should handle all built-in datatypes](#org36f53a0)
    - [has most features of my perl5 Data::Math](#org1a74470)
  - [data classes](#org6dd5128)
    - [custom classes as data containers (from June 20, 2021)](#org98e5b4a)
  - [twigils considered weird](#org5fd9459)
    - [Raku makes sigils an invariant part of a name.](#org1877c16)
    - [Raku now has twigils](#org349c05d)
  - [david christensen expounds on erlang compared to raku and perl](#orgc319938)
    - ["representational polymorphic" &#x2013; larry wall](#org9afa9bd)
  - [question about bruce gray's "reading files can't be this simple"](#org426ece5)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org9c646db)
    - [<https://conf.raku.org/talk/158>](#orgaedf71c)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org0599602)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org018b555)
  - [the usual links:](#org9bf5fc2)
    - [meeting notes](#orgd4fe3a2)
    - [code examples:](#orgd9e0468)
  - [fun with raku on freebsd (bruce gray)](#org7bca4aa)


<a id="orgfdb2d84"></a>

# meeting notes August 15, 2021


<a id="orga0a045b"></a>

## callbacks


<a id="orgb8a4e61"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" is narrow, refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org7c2d59d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org7cbd641"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgff125af"></a>

## Data::Dualmap, first release


<a id="org36f53a0"></a>

### should handle all built-in datatypes


<a id="org1a74470"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org6dd5128"></a>

## data classes


<a id="org98e5b4a"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org5fd9459"></a>

## twigils considered weird


<a id="org1877c16"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org349c05d"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgc319938"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org9afa9bd"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org426ece5"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org9c646db"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgaedf71c"></a>

### <https://conf.raku.org/talk/158>


<a id="org0599602"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org018b555"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org9bf5fc2"></a>

## the usual links:


<a id="orgd4fe3a2"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgd9e0468"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org7bca4aa"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
