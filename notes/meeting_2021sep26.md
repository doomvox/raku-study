- [meeting notes September 16, 2021                                      a](#org5343739)
  - [the usual links:](#orge140302)
    - [meeting notes](#orgc797563)
    - [code examples:](#orgac36891)
  - [battle plan](#orgb2fa44b)
    - [bin pre-loaded with small ammo](#org998b3e7)
    - [nano-lightning talk: given-when vs multi-dispatch](#org812df45)
    - [data-handling in raku](#org2a98265)
    - [intermixed types and resulting types](#orge7e7088)
    - [Data::Reshapers](#org7c1f6e9)
    - [secure json-ification, vadim belman](#org426826e)
    - [lispyness of raku](#org18b3021)
    - [pairs of separators from a string](#orgf469398)
    - [bioinformatics on rosettacode](#org4940b67)
    - [lca (old topic)](#orga137389)
    - [once around the net](#org375fd5b)
    - [the ephemeral miniconf: nov 18 2021](#org8657801)
  - [next meeting](#orga0c5a67)
    - [next meeting: Oct 10, 2021](#org069dc86)


<a id="org5343739"></a>

# meeting notes September 16, 2021                                      a


<a id="orge140302"></a>

## the usual links:


<a id="orgc797563"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgac36891"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgb2fa44b"></a>

## battle plan


<a id="org998b3e7"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org812df45"></a>

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


<a id="org2a98265"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orge7e7088"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  a few weeks old&#x2013; I still want to respond to it


<a id="org7c1f6e9"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org426826e"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org18b3021"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgf469398"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org4940b67"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orga137389"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution: write it up as an answer


<a id="org375fd5b"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org8657801"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orga0c5a67"></a>

## next meeting


<a id="org069dc86"></a>

### next meeting: Oct 10, 2021
