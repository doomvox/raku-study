- [meeting notes September 16, 2021](#org4e045ce)
  - [the usual links:](#orgf341318)
    - [meeting notes](#org163a418)
    - [code examples:](#orgd4fe113)
  - [battle plan](#orge73d6ff)
    - [bin pre-loaded with small ammo](#orgd77f873)
    - [nano-lightning talk: given-when vs multi-dispatch](#orgd264af2)
    - [data-handling in raku](#org828964a)
    - [lispyness of raku](#orgdc6035e)
    - [pairs of separators from a string](#org944e4a9)
    - [bioinformatics on rosettacode](#org93f7bf2)
    - [secure json-ification, vadim belman](#orgaac6d7b)
    - [once around the net](#orgdc3d64a)
    - [the ephemeral miniconf: nov 18 2021](#orgd27d17c)
  - [next meeting](#orgae7e650)
    - [next meeting: Oct 10, 2021](#org2ffd78a)


<a id="org4e045ce"></a>

# meeting notes September 16, 2021


<a id="orgf341318"></a>

## the usual links:


<a id="org163a418"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgd4fe113"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orge73d6ff"></a>

## battle plan


<a id="orgd77f873"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgd264af2"></a>

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


<a id="org828964a"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="orgdc6035e"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org944e4a9"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org93f7bf2"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgaac6d7b"></a>

### secure json-ification, vadim belman

1.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>


<a id="orgdc3d64a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgd27d17c"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgae7e650"></a>

## next meeting


<a id="org2ffd78a"></a>

### next meeting: Oct 10, 2021
