- [meeting notes September 16, 2021](#org756da7f)
  - [the usual links:](#org2916d69)
    - [meeting notes](#orgc6b488f)
    - [code examples:](#org72ab437)
  - [battle plan](#org3f833e0)
    - [bin pre-loaded with small ammo](#org5790fa3)
    - [nano-lightning talk: given-when vs multi-dispatch](#org09cc4ef)
    - [data-handling in raku](#orga11a1fb)
    - [lispyness of raku](#org4bb031e)
    - [once around the net](#org557d647)
    - [the ephemeral miniconf: nov 18 2021](#org7a61a09)
  - [next meeting](#org921b24f)
    - [next meeting: Oct 10, 2021](#org287486b)


<a id="org756da7f"></a>

# meeting notes September 16, 2021


<a id="org2916d69"></a>

## the usual links:


<a id="orgc6b488f"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org72ab437"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org3f833e0"></a>

## battle plan


<a id="org5790fa3"></a>

### bin pre-loaded with small ammo


<a id="org09cc4ef"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch lets you add or shadow cases via OOP methods
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="orga11a1fb"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org4bb031e"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org557d647"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="org7a61a09"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="org921b24f"></a>

## next meeting


<a id="org287486b"></a>

### next meeting: Oct 10, 2021
