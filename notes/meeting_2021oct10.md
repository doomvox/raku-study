- [meeting notes October 10, 2021                                      a](#orgbd08c0e)
  - [the usual links:](#org0031f15)
    - [meeting notes](#orgf8384a5)
    - [code examples:](#orgf7c5a9f)
  - [battle plan](#org53ec29a)
    - [bin pre-loaded with small ammo](#orgea801d9)
    - [nano-lightning talk: given-when vs multi-dispatch](#orgf983d64)
    - [data-handling in raku](#org9bc1da5)
    - [intermixed types and resulting types](#org71ead35)
    - [Data::Reshapers](#orgf8333e3)
    - [secure json-ification, vadim belman](#orgb8ee504)
    - [lispyness of raku](#org982a3cf)
    - [pairs of separators from a string](#orgfe41448)
    - [bioinformatics on rosettacode](#org7037daf)
    - [lca (old topic)](#org331db4b)
    - [once around the net](#orgb48d141)
    - [the ephemeral miniconf: nov 18 2021](#org4f772ed)
  - [next meeting](#org8579dd6)
    - [next meeting: Oct 10, 2021](#org6d6649d)
  - [misc notes](#orgca2d279)
    - [plain text accounting site](#org7d465b3)
    - [jeff issues with data recovery exploration](#org9f951ee)
    - [video political history of X](#org8e7ee50)


<a id="orgbd08c0e"></a>

# meeting notes October 10, 2021                                      a


<a id="org0031f15"></a>

## the usual links:


<a id="orgf8384a5"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orgf7c5a9f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org53ec29a"></a>

## battle plan


<a id="orgea801d9"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgf983d64"></a>

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


<a id="org9bc1da5"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org71ead35"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orgf8333e3"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgb8ee504"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org982a3cf"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgfe41448"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org7037daf"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org331db4b"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="orgb48d141"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org4f772ed"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org8579dd6"></a>

## next meeting


<a id="org6d6649d"></a>

### next meeting: Oct 10, 2021


<a id="orgca2d279"></a>

## misc notes


<a id="org7d465b3"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org9f951ee"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org8e7ee50"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
