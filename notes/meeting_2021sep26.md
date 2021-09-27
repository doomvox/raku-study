- [meeting notes September 16, 2021                                      a](#orgf361ebc)
  - [the usual links:](#orgbeb4d12)
    - [meeting notes](#orgd470f64)
    - [code examples:](#orgf9b008c)
  - [battle plan](#org43742b5)
    - [bin pre-loaded with small ammo](#orgf5fae28)
    - [nano-lightning talk: given-when vs multi-dispatch](#org098450c)
    - [data-handling in raku](#org031b61c)
    - [intermixed types and resulting types](#org8f870e7)
    - [Data::Reshapers](#orge0481fb)
    - [secure json-ification, vadim belman](#org9080280)
    - [lispyness of raku](#orgb0dfdbc)
    - [pairs of separators from a string](#org2f92aea)
    - [bioinformatics on rosettacode](#org23d96d6)
    - [lca (old topic)](#org4b14656)
    - [once around the net](#org9dcde9a)
    - [the ephemeral miniconf: nov 18 2021](#org19e9677)
  - [next meeting](#org40830c7)
    - [next meeting: Oct 10, 2021](#org7a87c2f)
  - [misc notes](#org59ac4ae)
    - [plain text accounting site](#org214b114)
    - [jeff issues with data recovery exploration](#orgc0b5092)
    - [video political history of X](#org15e6db2)


<a id="orgf361ebc"></a>

# meeting notes September 16, 2021                                      a


<a id="orgbeb4d12"></a>

## the usual links:


<a id="orgd470f64"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgf9b008c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org43742b5"></a>

## battle plan


<a id="orgf5fae28"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org098450c"></a>

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
                
                2.  bruce gray tried some variants&#x2026; suspects raku could do better
                
                    1.  variables of type Hero/Monster
                    
                    2.  Hero/Monster classes


<a id="org031b61c"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org8f870e7"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orge0481fb"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org9080280"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgb0dfdbc"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org2f92aea"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org23d96d6"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org4b14656"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org9dcde9a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org19e9677"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org40830c7"></a>

## next meeting


<a id="org7a87c2f"></a>

### next meeting: Oct 10, 2021


<a id="org59ac4ae"></a>

## misc notes


<a id="org214b114"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="orgc0b5092"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org15e6db2"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>
