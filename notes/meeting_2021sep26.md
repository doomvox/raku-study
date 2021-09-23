- [meeting notes September 16, 2021](#org3f013e8)
  - [the usual links:](#org5426c93)
    - [meeting notes](#orgd4086b4)
    - [code examples:](#org13b472f)
  - [battle plan](#org9e39cb7)
    - [bin pre-loaded with small ammo](#orgc379348)
    - [nano-lightning talk: given-when vs multi-dispatch](#orge0e52aa)
    - [once around the net](#org79f796a)
    - [the ephemeral miniconf: nov 18 2021](#orgac7c8fb)
  - [next meeting](#orgb3673c0)
    - [next meeting: Oct 10, 2021](#org9670d44)


<a id="org3f013e8"></a>

# meeting notes September 16, 2021


<a id="org5426c93"></a>

## the usual links:


<a id="orgd4086b4"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org13b472f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org9e39cb7"></a>

## battle plan


<a id="orgc379348"></a>

### bin pre-loaded with small ammo


<a id="orge0e52aa"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch lets you accrete cases via OOP methods
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="org79f796a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="orgac7c8fb"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="orgb3673c0"></a>

## next meeting


<a id="org9670d44"></a>

### next meeting: Oct 10, 2021
