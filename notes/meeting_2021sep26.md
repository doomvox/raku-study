- [meeting notes September 16, 2021                                      a](#org5cd1c72)
  - [the usual links:](#orgfa0cd04)
    - [meeting notes](#org5ac676a)
    - [code examples:](#org4744c10)
  - [battle plan](#org81a7b45)
    - [bin pre-loaded with small ammo](#org4a4f5a1)
    - [nano-lightning talk: given-when vs multi-dispatch](#org7e68293)
    - [data-handling in raku](#org143bfe3)
    - [intermixed types and resulting types](#orge4b3d7b)
    - [Data::Reshapers](#org5c838db)
    - [secure json-ification, vadim belman](#orga7de009)
    - [lispyness of raku](#org97bf2a8)
    - [pairs of separators from a string](#org5f1dd3e)
    - [bioinformatics on rosettacode](#org2228df3)
    - [lca (old topic)](#orgea565ed)
    - [once around the net](#org176c0cc)
    - [the ephemeral miniconf: nov 18 2021](#org585a147)
  - [next meeting](#org557ad1d)
    - [next meeting: Oct 10, 2021](#org191d0d2)
  - [misc notes](#orgd150a58)
    - [plain text accounting site](#orga1f4ec4)
    - [jeff issues with data recovery exploration](#org388eb13)
    - [video political history of X](#org5f0c8af)


<a id="org5cd1c72"></a>

# meeting notes September 16, 2021                                      a


<a id="orgfa0cd04"></a>

## the usual links:


<a id="org5ac676a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org4744c10"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org81a7b45"></a>

## battle plan


<a id="org4a4f5a1"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org7e68293"></a>

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


<a id="org143bfe3"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orge4b3d7b"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org5c838db"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orga7de009"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org97bf2a8"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org5f1dd3e"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org2228df3"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgea565ed"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org176c0cc"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org585a147"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org557ad1d"></a>

## next meeting


<a id="org191d0d2"></a>

### next meeting: Oct 10, 2021


<a id="orgd150a58"></a>

## misc notes


<a id="orga1f4ec4"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org388eb13"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org5f0c8af"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
