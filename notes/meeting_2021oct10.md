- [meeting notes October 10, 2021                                      a](#orgb9412d1)
  - [the usual links:](#org1e64645)
    - [meeting notes](#org20e1f07)
    - [code examples:](#orgaec57d8)
  - [stuff it all in to the great stuffiness](#orgd373a6e)
    - [data-handling in raku (this time for sure)](#orgccdd50b)
    - [leftover bits](#org949fb73)
    - [bioinformatics on rosettacode](#org6262e69)
    - [lightning talk in-progress: given-when vs multi-dispatch](#org30ac1f6)
    - [Data::Reshapers](#org0f3baf0)
    - [secure json-ification, vadim belman](#orgcb62498)
    - [lispyness of raku](#org9b7908e)
    - [pairs of separators from a string](#org0b567d0)
    - [once around the net](#org7241a56)
    - [the ephemeral miniconf: nov 18 2021](#org0d21eb5)
  - [next meeting](#orgc705664)
    - [next meeting: Oct 26, 2021](#org85e395f)


<a id="orgb9412d1"></a>

# meeting notes October 10, 2021                                      a


<a id="org1e64645"></a>

## the usual links:


<a id="org20e1f07"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orgaec57d8"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="orgd373a6e"></a>

## stuff it all in to the great stuffiness


<a id="orgccdd50b"></a>

### data-handling in raku (this time for sure)

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org949fb73"></a>

### leftover bits

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org6262e69"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org30ac1f6"></a>

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


<a id="org0f3baf0"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgcb62498"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org9b7908e"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org0b567d0"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org7241a56"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org0d21eb5"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgc705664"></a>

## next meeting


<a id="org85e395f"></a>

### next meeting: Oct 26, 2021
