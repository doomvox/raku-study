- [meeting notes September 16, 2021                                      a](#orgd86c5fe)
  - [the usual links:](#org0208e49)
    - [meeting notes](#org3bb2178)
    - [code examples:](#orgadfbd79)
  - [battle plan](#org2fae574)
    - [bin pre-loaded with small ammo](#org5389b9f)
    - [nano-lightning talk: given-when vs multi-dispatch](#org48f6616)
    - [data-handling in raku](#orgaadbde8)
    - [intermixed types and resulting types](#org9bfe8a7)
    - [Data::Reshapers](#orgedd06fa)
    - [secure json-ification, vadim belman](#org6eec46c)
    - [lispyness of raku](#org9e20b23)
    - [pairs of separators from a string](#org6487b71)
    - [bioinformatics on rosettacode](#org3a723e4)
    - [lca (old topic)](#orga36d635)
    - [once around the net](#org4c82c9a)
    - [the ephemeral miniconf: nov 18 2021](#org8f9897d)
  - [next meeting](#org4c81afc)
    - [next meeting: Oct 10, 2021](#orgad4a189)
  - [misc notes](#orgc8cff7c)
    - [plain text accounting site](#orga1579f6)
    - [jeff issues with data recovery exploration](#orgcbb0f1e)
    - [video political history of X](#orgd0f6567)
  - [once over the zoom chat window](#orge984680)
    - [Willaim Michels](#org202ac9f)


<a id="orgd86c5fe"></a>

# meeting notes September 16, 2021                                      a


<a id="org0208e49"></a>

## the usual links:


<a id="org3bb2178"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgadfbd79"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org2fae574"></a>

## battle plan


<a id="org5389b9f"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org48f6616"></a>

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


<a id="orgaadbde8"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org9bfe8a7"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orgedd06fa"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org6eec46c"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org9e20b23"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org6487b71"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org3a723e4"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orga36d635"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org4c82c9a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org8f9897d"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org4c81afc"></a>

## next meeting


<a id="orgad4a189"></a>

### next meeting: Oct 10, 2021


<a id="orgc8cff7c"></a>

## misc notes


<a id="orga1579f6"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="orgcbb0f1e"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="orgd0f6567"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>


<a id="orge984680"></a>

## once over the zoom chat window


<a id="org202ac9f"></a>

### Willaim Michels
