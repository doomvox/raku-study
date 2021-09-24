- [meeting notes September 16, 2021](#org4f15ddd)
  - [the usual links:](#org9403c0f)
    - [meeting notes](#orgd904f9b)
    - [code examples:](#org8d51511)
  - [battle plan](#orgd480aca)
    - [bin pre-loaded with small ammo](#orgaba018b)
    - [nano-lightning talk: given-when vs multi-dispatch](#org7b80541)
    - [data-handling in raku](#orga71caa2)
    - [Data::Reshapers](#org5d1d3f8)
    - [secure json-ification, vadim belman](#org5858c98)
    - [lispyness of raku](#org9d1afdf)
    - [pairs of separators from a string](#org803e671)
    - [bioinformatics on rosettacode](#orga68387e)
    - [once around the net](#orgf105aaa)
    - [the ephemeral miniconf: nov 18 2021](#orgc0b1537)
  - [next meeting](#org01ebe94)
    - [next meeting: Oct 10, 2021](#org7a2ba97)


<a id="org4f15ddd"></a>

# meeting notes September 16, 2021


<a id="org9403c0f"></a>

## the usual links:


<a id="orgd904f9b"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org8d51511"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgd480aca"></a>

## battle plan


<a id="orgaba018b"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org7b80541"></a>

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


<a id="orga71caa2"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org5d1d3f8"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org5858c98"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org9d1afdf"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org803e671"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orga68387e"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgf105aaa"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgc0b1537"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org01ebe94"></a>

## next meeting


<a id="org7a2ba97"></a>

### next meeting: Oct 10, 2021
