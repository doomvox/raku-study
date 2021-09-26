- [meeting notes September 16, 2021                                      a](#orga85c1a5)
  - [the usual links:](#org6ca020d)
    - [meeting notes](#org643a7ae)
    - [code examples:](#org77fcc7a)
  - [battle plan](#org2ac0ec2)
    - [bin pre-loaded with small ammo](#org2cae8b7)
    - [nano-lightning talk: given-when vs multi-dispatch](#org0a9ba3d)
    - [data-handling in raku](#org362a8c8)
    - [intermixed types and resulting types](#orgebe16fd)
    - [Data::Reshapers](#org47c811d)
    - [secure json-ification, vadim belman](#org233eb9c)
    - [lispyness of raku](#org009afbb)
    - [pairs of separators from a string](#org14585fa)
    - [bioinformatics on rosettacode](#orgd2fc60a)
    - [once around the net](#org1bf0e5e)
    - [the ephemeral miniconf: nov 18 2021](#org0ecd3d3)
  - [next meeting](#orgb7ff19a)
    - [next meeting: Oct 10, 2021](#orgef9c827)


<a id="orga85c1a5"></a>

# meeting notes September 16, 2021                                      a


<a id="org6ca020d"></a>

## the usual links:


<a id="org643a7ae"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org77fcc7a"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org2ac0ec2"></a>

## battle plan


<a id="org2cae8b7"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org0a9ba3d"></a>

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


<a id="org362a8c8"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgebe16fd"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  a few weeks old&#x2013; I still want to respond to it


<a id="org47c811d"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org233eb9c"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org009afbb"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org14585fa"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="orgd2fc60a"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org1bf0e5e"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org0ecd3d3"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgb7ff19a"></a>

## next meeting


<a id="orgef9c827"></a>

### next meeting: Oct 10, 2021
