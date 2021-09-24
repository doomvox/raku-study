- [meeting notes September 16, 2021](#org9ca50a5)
  - [the usual links:](#orgc7da8bf)
    - [meeting notes](#orgea36cc9)
    - [code examples:](#org03e8872)
  - [battle plan](#org863b8b1)
    - [bin pre-loaded with small ammo](#org6115007)
    - [nano-lightning talk: given-when vs multi-dispatch](#org37301fa)
    - [data-handling in raku](#org43b39e5)
    - [lispyness of raku](#org4f94d06)
    - [pairs of separators from a string](#orgfc6bf5d)
    - [bioinformatics on rosettacode](#orgcbe6f47)
    - [once around the net](#org8662bad)
    - [the ephemeral miniconf: nov 18 2021](#orged66bc7)
  - [next meeting](#org3b0a850)
    - [next meeting: Oct 10, 2021](#org96bda45)


<a id="org9ca50a5"></a>

# meeting notes September 16, 2021


<a id="orgc7da8bf"></a>

## the usual links:


<a id="orgea36cc9"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org03e8872"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org863b8b1"></a>

## battle plan


<a id="org6115007"></a>

### bin pre-loaded with small ammo


<a id="org37301fa"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="org43b39e5"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org4f94d06"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgfc6bf5d"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orgcbe6f47"></a>

### bioinformatics on rosettacode

<http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org8662bad"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="orged66bc7"></a>

### the ephemeral miniconf: nov 18 2021

1.  how's it shaping up?


<a id="org3b0a850"></a>

## next meeting


<a id="org96bda45"></a>

### next meeting: Oct 10, 2021
