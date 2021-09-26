- [meeting notes September 16, 2021                                      a](#org5f4c63a)
  - [the usual links:](#org6ba564f)
    - [meeting notes](#orgc8edd3e)
    - [code examples:](#orge2c25f2)
  - [battle plan](#org3038cc9)
    - [bin pre-loaded with small ammo](#orgfbc3a08)
    - [nano-lightning talk: given-when vs multi-dispatch](#org374ab47)
    - [data-handling in raku](#org9d0c07f)
    - [intermixed types and resulting types](#orgbbf5f27)
    - [Data::Reshapers](#org1cad9c2)
    - [secure json-ification, vadim belman](#orgfd4d406)
    - [lispyness of raku](#org47a5b75)
    - [pairs of separators from a string](#orgd48a8b0)
    - [bioinformatics on rosettacode](#org7c7a439)
    - [lca (old topic)](#org0597321)
    - [once around the net](#org69d9b77)
    - [the ephemeral miniconf: nov 18 2021](#orgd3a712e)
  - [next meeting](#org44c2e80)
    - [next meeting: Oct 10, 2021](#org05a1cd2)
  - [misc notes](#orgc5825f2)
    - [plain text accounting site](#org583ef41)
    - [jeff issues with data recovery exploration](#orgbdfd2a9)
    - [video political history of X](#orge4a7443)


<a id="org5f4c63a"></a>

# meeting notes September 16, 2021                                      a


<a id="org6ba564f"></a>

## the usual links:


<a id="orgc8edd3e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orge2c25f2"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org3038cc9"></a>

## battle plan


<a id="orgfbc3a08"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org374ab47"></a>

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


<a id="org9d0c07f"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgbbf5f27"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org1cad9c2"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgfd4d406"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org47a5b75"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orgd48a8b0"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org7c7a439"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org0597321"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org69d9b77"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgd3a712e"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org44c2e80"></a>

## next meeting


<a id="org05a1cd2"></a>

### next meeting: Oct 10, 2021


<a id="orgc5825f2"></a>

## misc notes


<a id="org583ef41"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="orgbdfd2a9"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="orge4a7443"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
