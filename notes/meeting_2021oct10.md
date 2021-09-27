- [meeting notes October 10, 2021                                      a](#org8eb20fa)
  - [the usual links:](#org04677f2)
    - [meeting notes](#org8660cf5)
    - [code examples:](#org95cf25b)
  - [stuff it all in to the great stuffiness](#org4f23312)
    - [bin pre-loaded with small ammo](#org3252b17)
    - [](#org66b7309)
    - [nano-lightning talk: given-when vs multi-dispatch](#org1c6f28a)
    - [data-handling in raku](#orgbd151fc)
    - [intermixed types and resulting types](#org18b5f61)
    - [Data::Reshapers](#org61b6497)
    - [secure json-ification, vadim belman](#org80e0c7d)
    - [lispyness of raku](#orgc6f45a8)
    - [pairs of separators from a string](#orgcc13e79)
    - [bioinformatics on rosettacode](#org45ee3d1)
    - [lca (old topic)](#org4a4dde1)
    - [once around the net](#orgafe8197)
    - [the ephemeral miniconf: nov 18 2021](#org29d4a6d)
  - [next meeting](#org0ce0d64)
    - [next meeting: Oct 10, 2021](#org7c83271)
  - [misc notes](#orgfca88f3)
    - [plain text accounting site](#org5b52730)
    - [jeff issues with data recovery exploration](#org6cdca4c)
    - [video political history of X](#org3836438)


<a id="org8eb20fa"></a>

# meeting notes October 10, 2021                                      a


<a id="org04677f2"></a>

## the usual links:


<a id="org8660cf5"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="org95cf25b"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org4f23312"></a>

## stuff it all in to the great stuffiness


<a id="org3252b17"></a>

### bin pre-loaded with small ammo


<a id="org66b7309"></a>

### 

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org1c6f28a"></a>

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


<a id="orgbd151fc"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org18b5f61"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org61b6497"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org80e0c7d"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgc6f45a8"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgcc13e79"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org45ee3d1"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org4a4dde1"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="orgafe8197"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org29d4a6d"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org0ce0d64"></a>

## next meeting


<a id="org7c83271"></a>

### next meeting: Oct 10, 2021


<a id="orgfca88f3"></a>

## misc notes


<a id="org5b52730"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org6cdca4c"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org3836438"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
