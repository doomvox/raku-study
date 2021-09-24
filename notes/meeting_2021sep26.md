- [meeting notes September 16, 2021](#org16f21e5)
  - [the usual links:](#orgf69b723)
    - [meeting notes](#org810276a)
    - [code examples:](#org2375f97)
  - [battle plan](#orga24bfeb)
    - [bin pre-loaded with small ammo](#org0b6e3a8)
    - [nano-lightning talk: given-when vs multi-dispatch](#orgb060721)
    - [data-handling in raku](#org7c90a03)
    - [Data::Reshapers](#org6b25355)
    - [secure json-ification, vadim belman](#orgb4c6a8d)
    - [lispyness of raku](#org006699a)
    - [pairs of separators from a string](#org0943766)
    - [bioinformatics on rosettacode](#org47c68d1)
    - [once around the net](#org7357f1e)
    - [the ephemeral miniconf: nov 18 2021](#orgc125df9)
  - [next meeting](#org2aedc5f)
    - [next meeting: Oct 10, 2021](#org7b94799)


<a id="org16f21e5"></a>

# meeting notes September 16, 2021


<a id="orgf69b723"></a>

## the usual links:


<a id="org810276a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org2375f97"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orga24bfeb"></a>

## battle plan


<a id="org0b6e3a8"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgb060721"></a>

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


<a id="org7c90a03"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org6b25355"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgb4c6a8d"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org006699a"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org0943766"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org47c68d1"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org7357f1e"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgc125df9"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org2aedc5f"></a>

## next meeting


<a id="org7b94799"></a>

### next meeting: Oct 10, 2021
