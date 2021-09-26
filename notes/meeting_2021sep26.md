- [meeting notes September 16, 2021                                      a](#org01d13b4)
  - [the usual links:](#org0cfecea)
    - [meeting notes](#orge6402c4)
    - [code examples:](#orgcc563b1)
  - [battle plan](#org6d2c3b5)
    - [bin pre-loaded with small ammo](#org775d0e7)
    - [nano-lightning talk: given-when vs multi-dispatch](#org59719ff)
    - [data-handling in raku](#org705e24d)
    - [intermixed types and resulting types](#orgcbfb60f)
    - [Data::Reshapers](#orgb659ac0)
    - [secure json-ification, vadim belman](#org0ea331d)
    - [lispyness of raku](#orgbcb2077)
    - [pairs of separators from a string](#org63261ff)
    - [bioinformatics on rosettacode](#orgb6134a8)
    - [once around the net](#org043ba20)
    - [the ephemeral miniconf: nov 18 2021](#org2766874)
  - [next meeting](#org95ed5b9)
    - [next meeting: Oct 10, 2021](#orgec891e8)


<a id="org01d13b4"></a>

# meeting notes September 16, 2021                                      a


<a id="org0cfecea"></a>

## the usual links:


<a id="orge6402c4"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgcc563b1"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org6d2c3b5"></a>

## battle plan


<a id="org775d0e7"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org59719ff"></a>

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


<a id="org705e24d"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgcbfb60f"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  a few weeks old&#x2013; I still want to respond to it


<a id="orgb659ac0"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org0ea331d"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgbcb2077"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org63261ff"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="orgb6134a8"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org043ba20"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org2766874"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org95ed5b9"></a>

## next meeting


<a id="orgec891e8"></a>

### next meeting: Oct 10, 2021
