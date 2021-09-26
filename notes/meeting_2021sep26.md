- [meeting notes September 16, 2021                                      a](#orgbf877d3)
  - [the usual links:](#org28c6145)
    - [meeting notes](#org1c05050)
    - [code examples:](#org7e849d9)
  - [battle plan](#orgf9426b0)
    - [bin pre-loaded with small ammo](#org4719b26)
    - [nano-lightning talk: given-when vs multi-dispatch](#org680eec0)
    - [data-handling in raku](#org40edf8d)
    - [intermixed types and resulting types](#org13e863d)
    - [Data::Reshapers](#orgd11bead)
    - [secure json-ification, vadim belman](#org279f7b8)
    - [lispyness of raku](#org50d0589)
    - [pairs of separators from a string](#org8f7eedc)
    - [bioinformatics on rosettacode](#orgbac6662)
    - [lca (old topic)](#org631aba1)
    - [once around the net](#orgba93d6a)
    - [the ephemeral miniconf: nov 18 2021](#orgfe93a1a)
  - [next meeting](#orgea08105)
    - [next meeting: Oct 10, 2021](#orgc8b3ac2)
    - [plain text accounting site](#org1805853)
    - [ddrescue, dd<sub>rescue</sub>](#org9737e5a)
    - [kryoflux](#org899e379)


<a id="orgbf877d3"></a>

# meeting notes September 16, 2021                                      a


<a id="org28c6145"></a>

## the usual links:


<a id="org1c05050"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org7e849d9"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="orgf9426b0"></a>

## battle plan


<a id="org4719b26"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org680eec0"></a>

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


<a id="org40edf8d"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org13e863d"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orgd11bead"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org279f7b8"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org50d0589"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org8f7eedc"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="orgbac6662"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org631aba1"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="orgba93d6a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgfe93a1a"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgea08105"></a>

## next meeting


<a id="orgc8b3ac2"></a>

### next meeting: Oct 10, 2021


<a id="org1805853"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org9737e5a"></a>

### ddrescue, dd<sub>rescue</sub>

1.  copying data from dying media


<a id="org899e379"></a>

### kryoflux

<https://kryoflux.com/> Floppy disk archival tool
