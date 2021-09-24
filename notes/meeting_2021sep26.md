- [meeting notes September 16, 2021](#org3e7d462)
  - [the usual links:](#orgdd2c3e6)
    - [meeting notes](#orga17089a)
    - [code examples:](#org55dbe89)
  - [battle plan](#orge1be286)
    - [bin pre-loaded with small ammo](#orgd6c4389)
    - [nano-lightning talk: given-when vs multi-dispatch](#org39ab0d0)
    - [data-handling in raku](#org9d91ea2)
    - [secure json-ification, vadim belman](#org7ec895e)
    - [lispyness of raku](#orgff85ec2)
    - [pairs of separators from a string](#org9bf236a)
    - [bioinformatics on rosettacode](#org277466a)
    - [once around the net](#org2731434)
    - [the ephemeral miniconf: nov 18 2021](#orgf57317a)
  - [next meeting](#org9a232fc)
    - [next meeting: Oct 10, 2021](#orgfd08d09)


<a id="org3e7d462"></a>

# meeting notes September 16, 2021


<a id="orgdd2c3e6"></a>

## the usual links:


<a id="orga17089a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org55dbe89"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orge1be286"></a>

## battle plan


<a id="orgd6c4389"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org39ab0d0"></a>

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


<a id="org9d91ea2"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org7ec895e"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgff85ec2"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org9bf236a"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org277466a"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org2731434"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgf57317a"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org9a232fc"></a>

## next meeting


<a id="orgfd08d09"></a>

### next meeting: Oct 10, 2021
