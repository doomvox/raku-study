- [meeting notes September 16, 2021](#org80c5d34)
  - [the usual links:](#org263533d)
    - [meeting notes](#orgd68562e)
    - [code examples:](#org72cae17)
  - [battle plan](#orge230463)
    - [bin pre-loaded with small ammo](#orga449f3f)
    - [nano-lightning talk: given-when vs multi-dispatch](#org04bc90d)
    - [data-handling in raku](#org19d6393)
    - [lispyness of raku](#org0cda5e0)
    - [pairs of separators from a string](#orgbedc202)
    - [bioinformatics on rosettacode](#org11e0cb6)
    - [once around the net](#org3474e3b)
    - [the ephemeral miniconf: nov 18 2021](#orgeddd6a2)
  - [next meeting](#org15161f5)
    - [next meeting: Oct 10, 2021](#orga677ac6)


<a id="org80c5d34"></a>

# meeting notes September 16, 2021


<a id="org263533d"></a>

## the usual links:


<a id="orgd68562e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org72cae17"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orge230463"></a>

## battle plan


<a id="orga449f3f"></a>

### bin pre-loaded with small ammo


<a id="org04bc90d"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="org19d6393"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org0cda5e0"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgbedc202"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org11e0cb6"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org3474e3b"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

4.  rosettacode


<a id="orgeddd6a2"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org15161f5"></a>

## next meeting


<a id="orga677ac6"></a>

### next meeting: Oct 10, 2021
