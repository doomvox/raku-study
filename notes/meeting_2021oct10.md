- [meeting notes October 10, 2021                                      a](#org3effd43)
  - [the usual links:](#org8cb71a5)
    - [meeting notes](#org1b9e934)
    - [code examples:](#orga0dae76)
  - [stuff it all in to the great stuffiness](#org962596d)
    - [leftover bits](#org84632c9)
    - [lightning talk in-progress: given-when vs multi-dispatch](#orgf9e40cf)
    - [data-handling in raku](#orgb19cef6)
    - [intermixed types and resulting types](#orgb78b123)
    - [Data::Reshapers](#org526ca52)
    - [secure json-ification, vadim belman](#org98c1dd0)
    - [lispyness of raku](#org9a85c8a)
    - [pairs of separators from a string](#org1515668)
    - [bioinformatics on rosettacode](#orgbff0b82)
    - [lca (old topic)](#org8226f94)
    - [once around the net](#org602e169)
    - [the ephemeral miniconf: nov 18 2021](#orgef7b8c6)
  - [next meeting](#org522b4ff)
    - [next meeting: Oct 10, 2021](#org6d288d5)
  - [misc notes](#orge2f3b04)
    - [plain text accounting site](#orge047f4c)
    - [jeff issues with data recovery exploration](#org03edfd2)
    - [video political history of X](#org44d3a24)


<a id="org3effd43"></a>

# meeting notes October 10, 2021                                      a


<a id="org8cb71a5"></a>

## the usual links:


<a id="org1b9e934"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orga0dae76"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org962596d"></a>

## stuff it all in to the great stuffiness


<a id="org84632c9"></a>

### leftover bits

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgf9e40cf"></a>

### lightning talk in-progress: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
        
        3.  benchmark: with repetition argument running with "time"
        
            1.  results vary tremendously, no clear winner
        
        4.  multi with overlapping subsets:
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku>
            
                1.  tie breaking:
                
                    1.  I figured you'd need "is default"&#x2013; instead it goes by order-of-definition (NOT DOCUMENTED)
                    
                    2.  "is default" actually only works for two alternatives, with three you'd be SOL
                    
                    3.  brad gilbert argues it has to be this way for performance reasons
                
                2.  bruce gray tried some variants&#x2026;
                
                    1.  variables of type Hero/Monster
                    
                    2.  Hero/Monster classes


<a id="orgb19cef6"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgb78b123"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org526ca52"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org98c1dd0"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org9a85c8a"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org1515668"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="orgbff0b82"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org8226f94"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org602e169"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgef7b8c6"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org522b4ff"></a>

## next meeting


<a id="org6d288d5"></a>

### next meeting: Oct 10, 2021


<a id="orge2f3b04"></a>

## misc notes


<a id="orge047f4c"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org03edfd2"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org44d3a24"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
