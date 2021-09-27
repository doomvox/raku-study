- [meeting notes September 16, 2021                                      a](#orgcd98827)
  - [the usual links:](#orgbd7fe92)
    - [meeting notes](#orgf4723eb)
    - [code examples:](#org57bb580)
  - [battle plan](#org37240fd)
    - [bin pre-loaded with small ammo](#orge64ce84)
    - [nano-lightning talk: given-when vs multi-dispatch](#org462640a)
    - [data-handling in raku](#orgc908f25)
    - [intermixed types and resulting types](#org2dcea03)
    - [Data::Reshapers](#orgde7788f)
    - [secure json-ification, vadim belman](#orgbc06fee)
    - [lispyness of raku](#org63cc5c5)
    - [pairs of separators from a string](#org9f4863b)
    - [bioinformatics on rosettacode](#org0c9aeae)
    - [lca (old topic)](#org813d502)
    - [once around the net](#org624c841)
    - [the ephemeral miniconf: nov 18 2021](#org36256bb)
  - [next meeting](#org0e85b89)
    - [next meeting: Oct 10, 2021](#org0b1c248)
  - [misc notes](#orgbe39e01)
    - [plain text accounting site](#orgc9a9505)
    - [jeff issues with data recovery exploration](#org6fc33dc)
    - [video political history of X](#orge975517)
  - [once over the zoom chat window](#org19d57b3)
    - [definition of "twigil"](#orgbcfcd03)


<a id="orgcd98827"></a>

# meeting notes September 16, 2021                                      a


<a id="orgbd7fe92"></a>

## the usual links:


<a id="orgf4723eb"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org57bb580"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org37240fd"></a>

## battle plan


<a id="orge64ce84"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org462640a"></a>

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


<a id="orgc908f25"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org2dcea03"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orgde7788f"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgbc06fee"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org63cc5c5"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org9f4863b"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org0c9aeae"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org813d502"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org624c841"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org36256bb"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org0e85b89"></a>

## next meeting


<a id="org0b1c248"></a>

### next meeting: Oct 10, 2021


<a id="orgbe39e01"></a>

## misc notes


<a id="orgc9a9505"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org6fc33dc"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="orge975517"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>


<a id="org19d57b3"></a>

## once over the zoom chat window


<a id="orgbcfcd03"></a>

### definition of "twigil"

1.  the second char, or the two char pair

    1.  survey says "second char"
    
        1.  textual support in early writing
        
        2.  William Michels took the minority side,
        
            1.  has a reading of his own of some of the material
        
        3.  JJ offers a bit of limited support:
        
            "TBH, I understood the same as @jubilatious1. "; "Obviously, we have to stick to the published definition."

2.  background

    1.  <https://github.com/Raku/doc/pull/3965#issuecomment-924405557>
    
    2.  <https://github.com/Raku/doc/pull/3965#issue-1003135309>
    
    3.  <https://github.com/Raku/doc/issues/3966>
    
    4.  <https://design.raku.org/S02.html#Twigils>

3.  the term twigil appears to be a larry wall invention

    1.  not many web hits
    
    2.  one dictionary site refers to perl
    
        1.  "Twigil meaning (computing, programming, Perl language) A character prepended to a variable name to indicate its scope."
        
            1.  (not actually a good definition)

4.  my sense: twigil "tweaks" the meaning of the sigil

5.  william michels associates "twigil" with "twin", indicating "two"

6.  <https://docs.raku.org/language/variables>

7.  <https://design.raku.org/S02.html#Twigils>

    1.  "Oddly scoped variables include a secondary sigil (a twigil) that indicates what kind of strange scoping the variable is subject to&#x2026; ."
    
    2.  my reading: secondary sigil == a twigil

8.  <https://raku.org/archive/doc/design/apo/A02.html>

    1.  RFC 133
    
    2.  larry wall: "[Update: Nowadays we call those funny characters sigils. And for weirdly scoped variables there's a second character called a twigil.]"
