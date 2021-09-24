- [meeting notes September 16, 2021](#org09da866)
  - [the usual links:](#org2ec2dca)
    - [meeting notes](#orgaf3c8c3)
    - [code examples:](#orgb93f8a8)
  - [battle plan](#org019b2bf)
    - [bin pre-loaded with small ammo](#org138f6ce)
    - [nano-lightning talk: given-when vs multi-dispatch](#org0743ea8)
    - [data-handling in raku](#orgb3133ee)
    - [lispyness of raku](#org4c1a4c1)
    - [pairs of separators from a string](#orgb4205c2)
    - [bioinformatics on rosettacode](#orgafe93bd)
    - [once around the net](#org6ad39e7)
    - [the ephemeral miniconf: nov 18 2021](#org9f03d46)
  - [next meeting](#orgba8c611)
    - [next meeting: Oct 10, 2021](#orge8ef02e)


<a id="org09da866"></a>

# meeting notes September 16, 2021


<a id="org2ec2dca"></a>

## the usual links:


<a id="orgaf3c8c3"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgb93f8a8"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org019b2bf"></a>

## battle plan


<a id="org138f6ce"></a>

### bin pre-loaded with small ammo


<a id="org0743ea8"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
        
        3.  TODO benchmark: add a repetition argument, run with "time"
        
        4.  multi with overlapping subsets supposed to need 'is default' to break tie
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku>
            
            2.  note: "default" means something different in the two approaches


<a id="orgb3133ee"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org4c1a4c1"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgb4205c2"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orgafe93bd"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org6ad39e7"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org9f03d46"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgba8c611"></a>

## next meeting


<a id="orge8ef02e"></a>

### next meeting: Oct 10, 2021
