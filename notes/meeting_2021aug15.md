- [meeting notes August 15, 2021](#org4bd4b61)
  - [callbacks](#orgd5f50d4)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org1fd8ba6)
    - [misc sub-topics:](#org2380f0a)
  - [.round arguments](#org73d134b)
  - [Data::Dualmap, first release](#orgd37a3a0)
    - [should handle all built-in datatypes](#orgda9c095)
    - [has most features of my perl5 Data::Math](#orge53c828)
  - [data classes](#org0bd2b39)
    - [custom classes as data containers (from June 20, 2021)](#orgb17f893)
  - [twigils considered weird](#org6ab087b)
    - [Raku makes sigils an invariant part of a name.](#orgcd609c9)
    - [Raku now has twigils](#orgb955e41)
  - [david christensen expounds on erlang compared to raku and perl](#org3f3e991)
  - [question about bruce gray's "reading files can't be this simple"](#orgd5a17dd)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org9c1c183)
    - [<https://conf.raku.org/talk/158>](#org4ad932b)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org31b0147)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgd25ac6e)
- [meeting notes](#orgf623767)
  - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>](#orgcc932e9)
- [code examples:](#orga6ce165)
  - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>](#org9de1d6d)


<a id="org4bd4b61"></a>

# meeting notes August 15, 2021


<a id="orgd5f50d4"></a>

## callbacks


<a id="org1fd8ba6"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org2380f0a"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org73d134b"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgd37a3a0"></a>

## Data::Dualmap, first release


<a id="orgda9c095"></a>

### should handle all built-in datatypes


<a id="orge53c828"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org0bd2b39"></a>

## data classes


<a id="orgb17f893"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org6ab087b"></a>

## twigils considered weird


<a id="orgcd609c9"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgb955e41"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org3f3e991"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgd5a17dd"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org9c1c183"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org4ad932b"></a>

### <https://conf.raku.org/talk/158>


<a id="org31b0147"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgd25ac6e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgf623767"></a>

# meeting notes


<a id="orgcc932e9"></a>

## <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orga6ce165"></a>

# code examples:


<a id="org9de1d6d"></a>

## <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>
