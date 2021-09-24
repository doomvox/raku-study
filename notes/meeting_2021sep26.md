- [meeting notes September 16, 2021](#orga66516b)
  - [the usual links:](#org95226e5)
    - [meeting notes](#org6c3a1e6)
    - [code examples:](#org880f3b2)
  - [battle plan](#org7554e53)
    - [bin pre-loaded with small ammo](#org4406bb1)
    - [nano-lightning talk: given-when vs multi-dispatch](#orga0b46e7)
    - [data-handling in raku](#org9f36a12)
    - [lispyness of raku](#orgef3cce3)
    - [pairs of separators from a string](#org045d51c)
    - [once around the net](#orgca368d7)
    - [the ephemeral miniconf: nov 18 2021](#org4ec99ae)
  - [next meeting](#orgfb67b90)
    - [next meeting: Oct 10, 2021](#org7b66f90)


<a id="orga66516b"></a>

# meeting notes September 16, 2021


<a id="org95226e5"></a>

## the usual links:


<a id="org6c3a1e6"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org880f3b2"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org7554e53"></a>

## battle plan


<a id="org4406bb1"></a>

### bin pre-loaded with small ammo


<a id="orga0b46e7"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="org9f36a12"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="orgef3cce3"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org045d51c"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orgca368d7"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="org4ec99ae"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="orgfb67b90"></a>

## next meeting


<a id="org7b66f90"></a>

### next meeting: Oct 10, 2021
