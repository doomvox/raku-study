- [meeting notes September 16, 2021](#org3ec26c8)
  - [the usual links:](#org35c2257)
    - [meeting notes](#org276071b)
    - [code examples:](#org4dddde6)
  - [battle plan](#org4343533)
    - [bin pre-loaded with small ammo](#org6e4123f)
    - [nano-lightning talk: given-when vs multi-dispatch](#orge5ef43d)
    - [data-handling in raku](#org6c1817d)
    - [once around the net](#org5fd6a74)
    - [the ephemeral miniconf: nov 18 2021](#org98a63b3)
  - [next meeting](#orgfc1c726)
    - [next meeting: Oct 10, 2021](#org518d947)


<a id="org3ec26c8"></a>

# meeting notes September 16, 2021


<a id="org35c2257"></a>

## the usual links:


<a id="org276071b"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org4dddde6"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org4343533"></a>

## battle plan


<a id="org6e4123f"></a>

### bin pre-loaded with small ammo


<a id="orge5ef43d"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch lets you add or shadow cases via OOP methods
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="org6c1817d"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org5fd6a74"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="org98a63b3"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="orgfc1c726"></a>

## next meeting


<a id="org518d947"></a>

### next meeting: Oct 10, 2021
