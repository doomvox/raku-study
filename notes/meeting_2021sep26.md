- [meeting notes September 16, 2021](#org84cefae)
  - [the usual links:](#orgeaa0708)
    - [meeting notes](#orgda6fcaf)
    - [code examples:](#org0571b13)
  - [battle plan](#org9f1e74b)
    - [bin pre-loaded with small ammo](#org3e851ed)
    - [nano-lightning talk: given-when vs multi-dispatch](#org51e838a)
    - [data-handling in raku](#org96a6ffb)
    - [Data::Reshapers](#orgceab73d)
    - [secure json-ification, vadim belman](#orga45ecb8)
    - [lispyness of raku](#org80704aa)
    - [pairs of separators from a string](#org04199b6)
    - [bioinformatics on rosettacode](#org941a00d)
    - [once around the net](#org4dfdf67)
    - [the ephemeral miniconf: nov 18 2021](#org9bede2b)
  - [next meeting](#orgfeca9c2)
    - [next meeting: Oct 10, 2021](#org5aded2b)


<a id="org84cefae"></a>

# meeting notes September 16, 2021


<a id="orgeaa0708"></a>

## the usual links:


<a id="orgda6fcaf"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org0571b13"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org9f1e74b"></a>

## battle plan


<a id="org3e851ed"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org51e838a"></a>

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


<a id="org96a6ffb"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgceab73d"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orga45ecb8"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org80704aa"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org04199b6"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org941a00d"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org4dfdf67"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org9bede2b"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgfeca9c2"></a>

## next meeting


<a id="org5aded2b"></a>

### next meeting: Oct 10, 2021
