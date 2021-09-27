- [meeting notes October 10, 2021                                      a](#org036ba27)
  - [the usual links:](#org2b91078)
    - [meeting notes](#org95a832a)
    - [code examples:](#orgfde5386)
  - [stuff it all in to the great stuffiness](#org8db85ce)
    - [leftover bits](#org2c38bf4)
    - [bioinformatics on rosettacode](#orgb95405d)
    - [lightning talk in-progress: given-when vs multi-dispatch](#orge9fecc0)
    - [data-handling in raku](#org26990a5)
    - [intermixed types and resulting types](#org62313e1)
    - [Data::Reshapers](#org6f2e8d7)
    - [secure json-ification, vadim belman](#orgc773064)
    - [lispyness of raku](#org667caac)
    - [pairs of separators from a string](#org36a2f0f)
    - [once around the net](#org43a316b)
    - [the ephemeral miniconf: nov 18 2021](#org54f3416)
  - [next meeting](#org71ac5aa)
    - [next meeting: Oct 26, 2021](#org80ecc99)


<a id="org036ba27"></a>

# meeting notes October 10, 2021                                      a


<a id="org2b91078"></a>

## the usual links:


<a id="org95a832a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orgfde5386"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org8db85ce"></a>

## stuff it all in to the great stuffiness


<a id="org2c38bf4"></a>

### leftover bits

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgb95405d"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orge9fecc0"></a>

### lightning talk in-progress: given-when vs multi-dispatch

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


<a id="org26990a5"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org62313e1"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org6f2e8d7"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgc773064"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org667caac"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org36a2f0f"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org43a316b"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org54f3416"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org71ac5aa"></a>

## next meeting


<a id="org80ecc99"></a>

### next meeting: Oct 26, 2021
