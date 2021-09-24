- [meeting notes September 16, 2021](#org3e69361)
  - [the usual links:](#org78b1184)
    - [meeting notes](#org099aca7)
    - [code examples:](#org134c33a)
  - [battle plan](#org124204f)
    - [bin pre-loaded with small ammo](#org32e2691)
    - [nano-lightning talk: given-when vs multi-dispatch](#org65ba0e1)
    - [data-handling in raku](#org8073c42)
    - [lispyness of raku](#orgffb9fcf)
    - [once around the net](#org46a5bab)
    - [the ephemeral miniconf: nov 18 2021](#org04d0182)
  - [next meeting](#orgcaca7b7)
    - [next meeting: Oct 10, 2021](#org8a8e37c)


<a id="org3e69361"></a>

# meeting notes September 16, 2021


<a id="org78b1184"></a>

## the usual links:


<a id="org099aca7"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org134c33a"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org124204f"></a>

## battle plan


<a id="org32e2691"></a>

### bin pre-loaded with small ammo


<a id="org65ba0e1"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="org8073c42"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="orgffb9fcf"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org46a5bab"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="org04d0182"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="orgcaca7b7"></a>

## next meeting


<a id="org8a8e37c"></a>

### next meeting: Oct 10, 2021
