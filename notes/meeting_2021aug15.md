- [meeting notes August 15, 2021](#org111f13b)
  - [callbacks](#org96fed37)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgc38d329)
    - [misc sub-topics:](#org0e9a245)
  - [.round arguments](#org8ae4986)
  - [Data::Dualmap, first release](#orgd2f7f94)
    - [should handle all built-in datatypes](#orga6809eb)
    - [has most features of my perl5 Data::Math](#org2abfd82)
  - [data classes](#orgb9d61e5)
    - [custom classes as data containers (from June 20, 2021)](#org8b48c3c)
  - [twigils considered weird](#orga0534f0)
    - [Raku makes sigils an invariant part of a name.](#org2f11460)
    - [Raku now has twigils](#org8c75966)
  - [david christensen expounds on erlang compared to raku and perl](#org2e359e4)
  - [question about bruce gray's "reading files can't be this simple"](#orge27c5ef)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#org3277acb)
    - [<https://conf.raku.org/talk/158>](#orga0b84c8)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orgd214855)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgc1912e9)
- [meeting notes](#orgfbd67a9)
  - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>](#org022922c)
- [code examples:](#org8c448b3)
  - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>](#org8d9966c)


<a id="org111f13b"></a>

# meeting notes August 15, 2021


<a id="org96fed37"></a>

## callbacks


<a id="orgc38d329"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org0e9a245"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org8ae4986"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="orgd2f7f94"></a>

## Data::Dualmap, first release


<a id="orga6809eb"></a>

### should handle all built-in datatypes


<a id="org2abfd82"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="orgb9d61e5"></a>

## data classes


<a id="org8b48c3c"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga0534f0"></a>

## twigils considered weird


<a id="org2f11460"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org8c75966"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org2e359e4"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orge27c5ef"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="org3277acb"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orga0b84c8"></a>

### <https://conf.raku.org/talk/158>


<a id="orgd214855"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgc1912e9"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgfbd67a9"></a>

# meeting notes


<a id="org022922c"></a>

## <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org8c448b3"></a>

# code examples:


<a id="org8d9966c"></a>

## <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>
