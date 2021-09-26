- [meeting notes September 16, 2021                                      a](#org2e602b2)
  - [the usual links:](#org22fc39a)
    - [meeting notes](#orge8a843c)
    - [code examples:](#org9ff7079)
  - [battle plan](#org26cbf51)
    - [bin pre-loaded with small ammo](#orgce155fb)
    - [nano-lightning talk: given-when vs multi-dispatch](#org879fbe1)
    - [data-handling in raku](#org0cdb54c)
    - [intermixed types and resulting types](#orgcc50f7c)
    - [Data::Reshapers](#org62b0341)
    - [secure json-ification, vadim belman](#orgcf2bd5e)
    - [lispyness of raku](#orged2a6fb)
    - [pairs of separators from a string](#orgf6b5acd)
    - [bioinformatics on rosettacode](#org51893df)
    - [lca (old topic)](#org930f6fe)
    - [once around the net](#org67f0a05)
    - [the ephemeral miniconf: nov 18 2021](#orga278488)
  - [next meeting](#org3ffe6c4)
    - [next meeting: Oct 10, 2021](#orge3abdca)


<a id="org2e602b2"></a>

# meeting notes September 16, 2021                                      a


<a id="org22fc39a"></a>

## the usual links:


<a id="orge8a843c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org9ff7079"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org26cbf51"></a>

## battle plan


<a id="orgce155fb"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org879fbe1"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
        
        3.  benchmark: with repetition argument running with "time"
        
            1.  results vary tremendously, no clear winner
        
        4.  multi with overlapping subsets supposed to need 'is default' to break tie
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku>
            
            2.  note: "default" means something different in the two approaches


<a id="org0cdb54c"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgcc50f7c"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org62b0341"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgcf2bd5e"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orged2a6fb"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgf6b5acd"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org51893df"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org930f6fe"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org67f0a05"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orga278488"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org3ffe6c4"></a>

## next meeting


<a id="orge3abdca"></a>

### next meeting: Oct 10, 2021
