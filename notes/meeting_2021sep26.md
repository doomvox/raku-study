- [meeting notes September 16, 2021                                      a](#orgb836160)
  - [the usual links:](#org39b3615)
    - [meeting notes](#org69584e4)
    - [code examples:](#orga79a7e5)
  - [battle plan](#orge73bd4f)
    - [bin pre-loaded with small ammo](#orgca0d659)
    - [nano-lightning talk: given-when vs multi-dispatch](#orge7faa5a)
    - [data-handling in raku](#orgec1de48)
    - [intermixed types and resulting types](#org95ae938)
    - [Data::Reshapers](#org48788ba)
    - [secure json-ification, vadim belman](#org41f9f40)
    - [lispyness of raku](#orga05a847)
    - [pairs of separators from a string](#orgdd44c93)
    - [bioinformatics on rosettacode](#org6506196)
    - [lca (old topic)](#orgd54db04)
    - [once around the net](#org0074a4a)
    - [the ephemeral miniconf: nov 18 2021](#org6d34f2d)
  - [next meeting](#orgf2d9a4d)
    - [next meeting: Oct 10, 2021](#orga75421d)
  - [misc notes](#orga2e3715)
    - [plain text accounting site](#org8b12e94)
    - [jeff issues with data recovery exploration](#org7a89919)
    - [video political history of X](#org719c0c2)


<a id="orgb836160"></a>

# meeting notes September 16, 2021                                      a


<a id="org39b3615"></a>

## the usual links:


<a id="org69584e4"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orga79a7e5"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orge73bd4f"></a>

## battle plan


<a id="orgca0d659"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orge7faa5a"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
        
        3.  benchmark: with repetition argument running with "time"
        
            1.  results vary tremendously, no clear winner
        
        4.  multi with overlapping subsets:
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku>
            
            2.  tie breaking:
            
                1.  I figured you'd need "is default"&#x2013; instead it goes by order-of-definition (NOT DOCUMENTED)
                
                2.  "is default" actually only works for two alternatives, with three you'd be SOL
                
                3.  brad gilbert argues it has to be this way for performance reasons


<a id="orgec1de48"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org95ae938"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org48788ba"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org41f9f40"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orga05a847"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgdd44c93"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org6506196"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgd54db04"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org0074a4a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org6d34f2d"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgf2d9a4d"></a>

## next meeting


<a id="orga75421d"></a>

### next meeting: Oct 10, 2021


<a id="orga2e3715"></a>

## misc notes


<a id="org8b12e94"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org7a89919"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org719c0c2"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
