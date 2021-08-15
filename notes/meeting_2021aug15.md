- [meeting notes August 15, 2021](#org14d7efc)
  - [callbacks](#org70dc649)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgd952ba3)
    - [misc sub-topics:](#org7d85913)
  - [.round arguments](#orgc2bcaf2)
  - [Data::Dualmap, first release](#org3d279d1)
    - [should handle all built-in datatypes](#org4fcaf54)
    - [has most features of my perl5 Data::Math](#org0dc6e8e)
  - [data classes](#org9285e77)
    - [custom classes as data containers (from June 20, 2021)](#orgf84cdb0)
  - [twigils considered weird](#org72fccf1)
    - [Raku makes sigils an invariant part of a name.](#org746e121)
    - [Raku now has twigils](#org0bff2d6)
  - [david christensen expounds on erlang compared to raku and perl](#org579c55c)
  - [question about bruce gray's "reading files can't be this simple"](#orgde04b42)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgb00ed3f)
    - [<https://conf.raku.org/talk/158>](#org991dd51)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org5f34194)


<a id="org14d7efc"></a>

# meeting notes August 15, 2021


<a id="org70dc649"></a>

## callbacks


<a id="orgd952ba3"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org7d85913"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="orgc2bcaf2"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org3d279d1"></a>

## Data::Dualmap, first release


<a id="org4fcaf54"></a>

### should handle all built-in datatypes


<a id="org0dc6e8e"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org9285e77"></a>

## data classes


<a id="orgf84cdb0"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org72fccf1"></a>

## twigils considered weird


<a id="org746e121"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org0bff2d6"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org579c55c"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="orgde04b42"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgb00ed3f"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org991dd51"></a>

### <https://conf.raku.org/talk/158>


<a id="org5f34194"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })
