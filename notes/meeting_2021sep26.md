- [meeting notes September 16, 2021                                      a](#org9e15daf)
  - [the usual links:](#orgcdbfe8e)
    - [meeting notes](#org876313e)
    - [code examples:](#org1739e58)
  - [battle plan](#org61a3573)
    - [bin pre-loaded with small ammo](#org0c36d52)
    - [nano-lightning talk: given-when vs multi-dispatch](#orge18c334)
    - [data-handling in raku](#org3dd4b08)
    - [intermixed types and resulting types](#orga8a2dda)
    - [Data::Reshapers](#org15be567)
    - [secure json-ification, vadim belman](#org38ff612)
    - [lispyness of raku](#org0e7f5f1)
    - [pairs of separators from a string](#org4627fbb)
    - [bioinformatics on rosettacode](#orgd441628)
    - [lca (old topic)](#org00b859c)
    - [once around the net](#orgbc745c1)
    - [the ephemeral miniconf: nov 18 2021](#orgf9f8eab)
  - [next meeting](#org9249938)
    - [next meeting: Oct 10, 2021](#orgda59751)
    - [plain text accounting site](#org9a1e5e4)
    - [jeff issues with data recovery exploration](#orgd1bb185)


<a id="org9e15daf"></a>

# meeting notes September 16, 2021                                      a


<a id="orgcdbfe8e"></a>

## the usual links:


<a id="org876313e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org1739e58"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org61a3573"></a>

## battle plan


<a id="org0c36d52"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orge18c334"></a>

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


<a id="org3dd4b08"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orga8a2dda"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org15be567"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org38ff612"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org0e7f5f1"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org4627fbb"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="orgd441628"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org00b859c"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="orgbc745c1"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgf9f8eab"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org9249938"></a>

## next meeting


<a id="orgda59751"></a>

### next meeting: Oct 10, 2021


<a id="org9a1e5e4"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="orgd1bb185"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool
