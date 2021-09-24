- [meeting notes September 16, 2021](#org92a90f0)
  - [the usual links:](#org57e6c11)
    - [meeting notes](#orgefcb942)
    - [code examples:](#org1ff7b22)
  - [battle plan](#orgbb36139)
    - [bin pre-loaded with small ammo](#orge7b7d2a)
    - [nano-lightning talk: given-when vs multi-dispatch](#org65c57d1)
    - [data-handling in raku](#org5492452)
    - [lispyness of raku](#org6234f3f)
    - [pairs of separators from a string](#org1635751)
    - [bioinformatics on rosettacode](#orga19f84e)
    - [once around the net](#org9bb0728)
    - [the ephemeral miniconf: nov 18 2021](#org0a09a79)
  - [next meeting](#org22ed755)
    - [next meeting: Oct 10, 2021](#orge15c4ac)


<a id="org92a90f0"></a>

# meeting notes September 16, 2021


<a id="org57e6c11"></a>

## the usual links:


<a id="orgefcb942"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org1ff7b22"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgbb36139"></a>

## battle plan


<a id="orge7b7d2a"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org65c57d1"></a>

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


<a id="org5492452"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org6234f3f"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org1635751"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orga19f84e"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org9bb0728"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org0a09a79"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org22ed755"></a>

## next meeting


<a id="orge15c4ac"></a>

### next meeting: Oct 10, 2021
