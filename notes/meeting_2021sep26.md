- [meeting notes September 16, 2021](#org02e9e3c)
  - [the usual links:](#org280a2f9)
    - [meeting notes](#org35a40cc)
    - [code examples:](#orgf773923)
  - [battle plan](#orgab47c8c)
    - [bin pre-loaded with small ammo](#org3be1bc2)
    - [nano-lightning talk: given-when vs multi-dispatch](#org3d0c727)
    - [data-handling in raku](#org6f9fa44)
    - [Data::Reshapers](#org331a272)
    - [secure json-ification, vadim belman](#org02eec74)
    - [lispyness of raku](#orge80518b)
    - [pairs of separators from a string](#org79f7bf8)
    - [bioinformatics on rosettacode](#org9102f0b)
    - [once around the net](#org07dad80)
    - [the ephemeral miniconf: nov 18 2021](#orgc647a28)
  - [next meeting](#orgbb4241f)
    - [next meeting: Oct 10, 2021](#org4b0e84a)


<a id="org02e9e3c"></a>

# meeting notes September 16, 2021


<a id="org280a2f9"></a>

## the usual links:


<a id="org35a40cc"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgf773923"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgab47c8c"></a>

## battle plan


<a id="org3be1bc2"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org3d0c727"></a>

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


<a id="org6f9fa44"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="org331a272"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org02eec74"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>

4.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orge80518b"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org79f7bf8"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org9102f0b"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org07dad80"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgc647a28"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgbb4241f"></a>

## next meeting


<a id="org4b0e84a"></a>

### next meeting: Oct 10, 2021
