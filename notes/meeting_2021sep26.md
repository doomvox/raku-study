- [meeting notes September 16, 2021](#orgde8bc26)
  - [the usual links:](#org74afeaf)
    - [meeting notes](#orge3fc582)
    - [code examples:](#org04e9d77)
  - [battle plan](#orgeda3bf0)
    - [bin pre-loaded with small ammo](#org2b282b7)
    - [nano-lightning talk: given-when vs multi-dispatch](#org6ecfb12)
    - [data-handling in raku](#orgacd870f)
    - [lispyness of raku](#orgee8ef89)
    - [pairs of separators from a string](#orgcdf0da7)
    - [bioinformatics on rosettacode](#orga1cfa42)
    - [once around the net](#orged22bce)
    - [the ephemeral miniconf: nov 18 2021](#org350b474)
  - [next meeting](#orga9937d7)
    - [next meeting: Oct 10, 2021](#org5da54de)


<a id="orgde8bc26"></a>

# meeting notes September 16, 2021


<a id="org74afeaf"></a>

## the usual links:


<a id="orge3fc582"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org04e9d77"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgeda3bf0"></a>

## battle plan


<a id="org2b282b7"></a>

### bin pre-loaded with small ammo


<a id="org6ecfb12"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
    
    2.  TODO benchmark: add a repetition argument, run with "time"
    
    3.  TODO write an example using overlapping subsets, need 'is default' to break tie
    
        1.  point: "default" means something different in the two approaches


<a id="orgacd870f"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="orgee8ef89"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgcdf0da7"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orga1cfa42"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orged22bce"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org350b474"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orga9937d7"></a>

## next meeting


<a id="org5da54de"></a>

### next meeting: Oct 10, 2021
