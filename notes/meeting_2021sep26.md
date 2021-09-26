- [meeting notes September 16, 2021                                      a](#org9cd7b30)
  - [the usual links:](#orgdf2c83a)
    - [meeting notes](#org042e4ee)
    - [code examples:](#org2d1862c)
  - [battle plan](#orga79956f)
    - [bin pre-loaded with small ammo](#orgeea5632)
    - [nano-lightning talk: given-when vs multi-dispatch](#org0d9f126)
    - [data-handling in raku](#org915abcb)
    - [Data::Reshapers](#orgb96e81b)
    - [secure json-ification, vadim belman](#org50a7f0c)
    - [lispyness of raku](#orgea1b808)
    - [pairs of separators from a string](#orgfad27ba)
    - [bioinformatics on rosettacode](#org06247a1)
    - [once around the net](#orgfb7e733)
    - [the ephemeral miniconf: nov 18 2021](#org0ec0915)
  - [next meeting](#orgfbc447d)
    - [next meeting: Oct 10, 2021](#orgf5561f9)


<a id="org9cd7b30"></a>

# meeting notes September 16, 2021                                      a


<a id="orgdf2c83a"></a>

## the usual links:


<a id="org042e4ee"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org2d1862c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orga79956f"></a>

## battle plan


<a id="orgeea5632"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org0d9f126"></a>

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


<a id="org915abcb"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgb96e81b"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org50a7f0c"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgea1b808"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgfad27ba"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org06247a1"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgfb7e733"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org0ec0915"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgfbc447d"></a>

## next meeting


<a id="orgf5561f9"></a>

### next meeting: Oct 10, 2021
