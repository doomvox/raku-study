- [meeting notes September 16, 2021](#orgebf0124)
  - [the usual links:](#org3522350)
    - [meeting notes](#orgdb65ee8)
    - [code examples:](#orgcbedd6d)
  - [battle plan](#orgd4edf54)
    - [bin pre-loaded with small ammo](#orge9120a6)
    - [nano-lightning talk: given-when vs multi-dispatch](#org052e055)
    - [once around the net](#orgbb5c761)
    - [the ephemeral miniconf: nov 18 2021](#org853fcf4)
  - [next meeting](#orgfda2bf2)
    - [next meeting: Oct 10, 2021](#org2b4992c)


<a id="orgebf0124"></a>

# meeting notes September 16, 2021


<a id="org3522350"></a>

## the usual links:


<a id="orgdb65ee8"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgcbedd6d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgd4edf54"></a>

## battle plan


<a id="orge9120a6"></a>

### bin pre-loaded with small ammo


<a id="org052e055"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch lets you add or shadow cases via OOP methods
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="orgbb5c761"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="org853fcf4"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="orgfda2bf2"></a>

## next meeting


<a id="org2b4992c"></a>

### next meeting: Oct 10, 2021
