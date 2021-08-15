- [meeting notes August 15, 2021](#org5cb9981)
  - [callbacks](#org5b1b664)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org38fe396)
    - [misc sub-topics:](#orgbf6fa4d)
  - [.round arguments](#orgccc4289)
  - [Data::Dualmap, first release](#org212fddf)
    - [should handle all built-in datatypes](#org28e8bd4)
    - [has most features of my perl5 Data::Math](#org1bdd19e)
  - [data classes](#org99f447d)
    - [custom classes as data containers (from June 20, 2021)](#org6acc033)
  - [twigils considered weird](#orgc6c6d92)
    - [Raku makes sigils an invariant part of a name.](#org645535c)
    - [Raku now has twigils](#orgfc50728)
  - [david christensen expounds on erlang compared to raku and perl](#orgc98d549)
  - [question about bruce gray's "reading files can't be this simple"](#org8fc2635)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org440e090)
    - [<https://conf.raku.org/talk/158>](#orgcde5d00)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orga5f4920)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#org9fca3af)
  - [the usual links:](#orgabcd81d)
    - [meeting notes](#org2438f87)
    - [code examples:](#org4e24f8d)
  - [fun with raku on freebsd (bruce gray)](#org324eeb7)


<a id="org5cb9981"></a>

# meeting notes August 15, 2021


<a id="org5b1b664"></a>

## callbacks


<a id="org38fe396"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orgbf6fa4d"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgccc4289"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org212fddf"></a>

## Data::Dualmap, first release


<a id="org28e8bd4"></a>

### should handle all built-in datatypes


<a id="org1bdd19e"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org99f447d"></a>

## data classes


<a id="org6acc033"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgc6c6d92"></a>

## twigils considered weird


<a id="org645535c"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgfc50728"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="orgc98d549"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org8fc2635"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org440e090"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgcde5d00"></a>

### <https://conf.raku.org/talk/158>


<a id="orga5f4920"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="org9fca3af"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgabcd81d"></a>

## the usual links:


<a id="org2438f87"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org4e24f8d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org324eeb7"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
