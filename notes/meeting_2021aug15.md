- [meeting notes August 15, 2021](#org8ab694c)
  - [callbacks](#org69fed62)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org0912a16)
    - [misc sub-topics:](#orgba65478)
  - [.round arguments](#org9f5fc7b)
  - [Data::Dualmap, first release](#org7a20486)
    - [should handle all built-in datatypes](#org569a9fc)
    - [has most features of my perl5 Data::Math](#orgf2edae1)
  - [data classes](#org56363e2)
    - [custom classes as data containers (from June 20, 2021)](#orgeb83111)
  - [twigils considered weird](#orgeb7d019)
    - [Raku makes sigils an invariant part of a name.](#org3accce7)
    - [Raku now has twigils](#orgd6b5ea1)
  - [david christensen expounds on erlang compared to raku and perl](#org6693462)
  - [question about bruce gray's "reading files can't be this simple"](#org495cd4a)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org8556f4a)
    - [<https://conf.raku.org/talk/158>](#orge465609)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org8c69395)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org736011e)
  - [the usual links:](#org2afdf98)
    - [meeting notes](#org7459983)
    - [code examples:](#org31818ee)
  - [fun with raku on freebsd (bruce gray)](#org5013607)


<a id="org8ab694c"></a>

# meeting notes August 15, 2021


<a id="org69fed62"></a>

## callbacks


<a id="org0912a16"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgba65478"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org9f5fc7b"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org7a20486"></a>

## Data::Dualmap, first release


<a id="org569a9fc"></a>

### should handle all built-in datatypes


<a id="orgf2edae1"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org56363e2"></a>

## data classes


<a id="orgeb83111"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgeb7d019"></a>

## twigils considered weird


<a id="org3accce7"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgd6b5ea1"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org6693462"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org495cd4a"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org8556f4a"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orge465609"></a>

### <https://conf.raku.org/talk/158>


<a id="org8c69395"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org736011e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org2afdf98"></a>

## the usual links:


<a id="org7459983"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org31818ee"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org5013607"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
