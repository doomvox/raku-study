- [meeting notes August 15, 2021](#org473dc2f)
  - [callbacks](#org298302e)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#org9b529cd)
    - [misc sub-topics:](#org65da879)
  - [.round arguments, whining about the docs](#org61d5269)
    - [a case where I feel confused by the "signature" approach, despite knowing better](#org79cb8f9)
    - [badly needs code examples.](#org547304d)
    - [naming of "scale" seems strange, hard to improve:](#orga63ed1c)
  - [Data::Dualmap, first release](#org35897db)
    - [should handle all built-in datatypes](#org35ad176)
    - [has most features of my perl5 Data::Math](#orga689d15)
  - [data classes](#org6cc5956)
    - [custom classes as data containers (from June 20, 2021)](#org6b33d6a)
  - [twigils considered weird](#org3c54ded)
    - [Raku makes sigils an invariant part of a name.](#org2e6f481)
    - [Raku now has twigils](#org7480438)
  - [david christensen expounds on erlang compared to raku and perl](#org7f07eed)
    - ["representational polymorphic" &#x2013; larry wall](#org463a210)
  - [question about bruce gray's "reading files can't be this simple"](#org625c2f7)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgc18244f)
    - [<https://conf.raku.org/talk/158>](#orgb69760a)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#org7ec2327)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgbb4848a)
  - [the usual links:](#orgb8aaf23)
    - [meeting notes](#org84f744d)
    - [code examples:](#orgda7dde9)
  - [fun with raku on freebsd (bruce gray)](#org33b560b)


<a id="org473dc2f"></a>

# meeting notes August 15, 2021


<a id="org298302e"></a>

## callbacks


<a id="org9b529cd"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

1.  bruce gray likes "code blocks" despite the potential ambiguities

    1.  "callbacks" refers to how they're used

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="org65da879"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org61d5269"></a>

## .round arguments, whining about the docs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org79cb8f9"></a>

### a case where I feel confused by the "signature" approach, despite knowing better

1.  signatures are how things are defined, not how they're to be used


<a id="org547304d"></a>

### badly needs code examples.


<a id="orga63ed1c"></a>

### naming of "scale" seems strange, hard to improve:

1.  "place" isn't right, .round isn't limited to powers of ten

2.  I think "nearest" might work:  you "round off to the nearest"


<a id="org35897db"></a>

## Data::Dualmap, first release


<a id="org35ad176"></a>

### should handle all built-in datatypes


<a id="orga689d15"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org6cc5956"></a>

## data classes


<a id="org6b33d6a"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org3c54ded"></a>

## twigils considered weird


<a id="org2e6f481"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="org7480438"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org7f07eed"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org463a210"></a>

### "representational polymorphic" &#x2013; larry wall


<a id="org625c2f7"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgc18244f"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="orgb69760a"></a>

### <https://conf.raku.org/talk/158>


<a id="org7ec2327"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgbb4848a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="orgb8aaf23"></a>

## the usual links:


<a id="org84f744d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="orgda7dde9"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>


<a id="org33b560b"></a>

## fun with raku on freebsd (bruce gray)

<https://www.freshports.org/lang/rakudo/> <https://cgit.freebsd.org/ports/commit/?id=a80c31a5dda807dcedb2391dc3e2c6f578f8ce3d>
