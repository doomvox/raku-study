- [meeting notes August 15, 2021](#orge2acc7d)
  - [callbacks](#org3695a57)
    - [aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs](#orgd881305)
    - [misc sub-topics:](#orged60b49)
  - [.round arguments](#org443ff88)
  - [Data::Dualmap, first release](#org385116b)
    - [should handle all built-in datatypes](#org78154d9)
    - [has most features of my perl5 Data::Math](#orgc9ec14b)
  - [data classes](#org672e32d)
    - [custom classes as data containers (from June 20, 2021)](#org359c156)
  - [twigils considered weird](#orgc839de3)
    - [Raku makes sigils an invariant part of a name.](#org0c2fe97)
    - [Raku now has twigils](#orgd71af06)
  - [david christensen expounds on erlang compared to raku and perl](#org3397412)
  - [question about bruce gray's "reading files can't be this simple"](#org62c664f)
    - [<https://speakerdeck.com/util/reading-files-cant-be-this-simple>](#orgdd7c7f9)
    - [<https://conf.raku.org/talk/158>](#org10bbc60)
    - [.say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })](#orge0ac76d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>](#orgf68f2fc)
  - [the usual links:](#org1a9b9cf)
    - [meeting notes](#org539c57b)
    - [code examples:](#org1db68ad)


<a id="orge2acc7d"></a>

# meeting notes August 15, 2021


<a id="org3695a57"></a>

## callbacks


<a id="orgd881305"></a>

### aka the "anonymous subs" of perl5, lambdas of lisp and other cs nerd langs

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/anonymous_routines_with_placeholder_variables.raku>


<a id="orged60b49"></a>

### misc sub-topics:

1.  sigils: $code vs &code

2.  sub vs block

    1.  subs can use return

3.  placeholder vars idiom

    1.  use the hat just once (the condom convention)


<a id="org443ff88"></a>

## .round arguments

<https://github.com/doomvox/raku-study/tree/main/bin/2021jul11/round_to_nearest_100.raku>


<a id="org385116b"></a>

## Data::Dualmap, first release


<a id="org78154d9"></a>

### should handle all built-in datatypes


<a id="orgc9ec14b"></a>

### has most features of my perl5 Data::Math

1.  custom callbacks, numerics, strings

2.  TODO implement skip<sub>keys</sub> patterns

    1.  for funsies, accept junctions (use type Mu)


<a id="org672e32d"></a>

## data classes


<a id="org359c156"></a>

### custom classes as data containers (from June 20, 2021)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgc839de3"></a>

## twigils considered weird


<a id="org0c2fe97"></a>

### Raku makes sigils an invariant part of a name.

If it's @stuff when you declare it it's still @stuff[3] later


<a id="orgd71af06"></a>

### Raku now has twigils

1.  this can sometimes be used like part of the name, but sometimes not

    1.  internal variables
    
        has @!mess;
    
    2.  variable with accessors
    
        has @.stash;
    
    3.  Using @.stash internally
    
        @!stash = (&#x2026;);


<a id="org3397412"></a>

## david christensen expounds on erlang compared to raku and perl


<a id="org62c664f"></a>

## question about bruce gray's "reading files can't be this simple"


<a id="orgdd7c7f9"></a>

### <https://speakerdeck.com/util/reading-files-cant-be-this-simple>


<a id="org10bbc60"></a>

### <https://conf.raku.org/talk/158>


<a id="orge0ac76d"></a>

### .say for "gigabyte.txt".IO.lines.grep({ last if *^END*; *^a* })


<a id="orgf68f2fc"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/bruce_gray_io_lines_etc.raku>


<a id="org1a9b9cf"></a>

## the usual links:


<a id="org539c57b"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021aug15.md>


<a id="org1db68ad"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021aug15>
