- [meeting notes October 10, 2021                                      a](#org236e64d)
  - [the usual links:](#orga6af687)
    - [meeting notes](#org09d4b12)
    - [code examples:](#org2766e8a)
  - [stuff it all in to the great stuffiness](#org725391a)
    - [leftover bits](#org6fdc839)
    - [nano-lightning talk: given-when vs multi-dispatch](#org2086dd3)
    - [data-handling in raku](#org94376d9)
    - [intermixed types and resulting types](#org90669bf)
    - [Data::Reshapers](#org3b6f28b)
    - [secure json-ification, vadim belman](#org4b8d677)
    - [lispyness of raku](#org6b09312)
    - [pairs of separators from a string](#org46b1d20)
    - [bioinformatics on rosettacode](#org84e3b10)
    - [lca (old topic)](#org437ece4)
    - [once around the net](#org8deffb8)
    - [the ephemeral miniconf: nov 18 2021](#org24ade93)
  - [next meeting](#org1d76185)
    - [next meeting: Oct 10, 2021](#org2a47db7)
  - [misc notes](#orgb2126d7)
    - [plain text accounting site](#org11f5505)
    - [jeff issues with data recovery exploration](#org0ba44e6)
    - [video political history of X](#org543da0d)


<a id="org236e64d"></a>

# meeting notes October 10, 2021                                      a


<a id="orga6af687"></a>

## the usual links:


<a id="org09d4b12"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="org2766e8a"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org725391a"></a>

## stuff it all in to the great stuffiness


<a id="org6fdc839"></a>

### leftover bits

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org2086dd3"></a>

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
            
                1.  tie breaking:
                
                    1.  I figured you'd need "is default"&#x2013; instead it goes by order-of-definition (NOT DOCUMENTED)
                    
                    2.  "is default" actually only works for two alternatives, with three you'd be SOL
                    
                    3.  brad gilbert argues it has to be this way for performance reasons
                
                2.  bruce gray tried some variants&#x2026;
                
                    1.  variables of type Hero/Monster
                    
                    2.  Hero/Monster classes


<a id="org94376d9"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org90669bf"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org3b6f28b"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org4b8d677"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org6b09312"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org46b1d20"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org84e3b10"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org437ece4"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org8deffb8"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org24ade93"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org1d76185"></a>

## next meeting


<a id="org2a47db7"></a>

### next meeting: Oct 10, 2021


<a id="orgb2126d7"></a>

## misc notes


<a id="org11f5505"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org0ba44e6"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org543da0d"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
