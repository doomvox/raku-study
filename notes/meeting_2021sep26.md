- [meeting notes September 16, 2021                                      a](#org651b77b)
  - [the usual links:](#orgd0f1362)
    - [meeting notes](#org3bb23e8)
    - [code examples:](#org2e69821)
  - [battle plan](#org7f848c4)
    - [bin pre-loaded with small ammo](#org73987f5)
    - [nano-lightning talk: given-when vs multi-dispatch](#orgc9b4d76)
    - [data-handling in raku](#org19b7b6c)
    - [intermixed types and resulting types](#org3a18ffc)
    - [Data::Reshapers](#orga7fd91d)
    - [secure json-ification, vadim belman](#org2b08f76)
    - [lispyness of raku](#org6a78bbc)
    - [pairs of separators from a string](#orge472939)
    - [bioinformatics on rosettacode](#org10a8d9b)
    - [lca (old topic)](#org0c684c3)
    - [once around the net](#org86e91a6)
    - [the ephemeral miniconf: nov 18 2021](#org5b0547b)
  - [next meeting](#orgf6cabaa)
    - [next meeting: Oct 10, 2021](#orgb97675e)
    - [plain text accounting site](#org05a220e)
    - [ddrescue, dd<sub>rescue</sub>](#orgb82f6f5)
    - [cryoflux](#org20c405b)


<a id="org651b77b"></a>

# meeting notes September 16, 2021                                      a


<a id="orgd0f1362"></a>

## the usual links:


<a id="org3bb23e8"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org2e69821"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org7f848c4"></a>

## battle plan


<a id="org73987f5"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgc9b4d76"></a>

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


<a id="org19b7b6c"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org3a18ffc"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orga7fd91d"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org2b08f76"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org6a78bbc"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="orge472939"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org10a8d9b"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org0c684c3"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org86e91a6"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org5b0547b"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgf6cabaa"></a>

## next meeting


<a id="orgb97675e"></a>

### next meeting: Oct 10, 2021


<a id="org05a220e"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="orgb82f6f5"></a>

### ddrescue, dd<sub>rescue</sub>

1.  copying data from dying media


<a id="org20c405b"></a>

### cryoflux
