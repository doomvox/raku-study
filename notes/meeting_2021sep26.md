- [meeting notes September 16, 2021                                      a](#org5809717)
  - [the usual links:](#orgcbec1a1)
    - [meeting notes](#org5cc6af7)
    - [code examples:](#orgefae132)
  - [battle plan](#org534bac0)
    - [bin pre-loaded with small ammo](#org9100a2b)
    - [nano-lightning talk: given-when vs multi-dispatch](#orgc4b8b15)
    - [data-handling in raku](#org3bc1427)
    - [intermixed types and resulting types](#orgfb340e4)
    - [Data::Reshapers](#org5653734)
    - [secure json-ification, vadim belman](#orgdbb8143)
    - [lispyness of raku](#org2980945)
    - [pairs of separators from a string](#org99b9b3f)
    - [bioinformatics on rosettacode](#org93df430)
    - [lca (old topic)](#orgda0c5ff)
    - [once around the net](#org3a15c6a)
    - [the ephemeral miniconf: nov 18 2021](#org901946f)
  - [next meeting](#orgcad64f2)
    - [next meeting: Oct 10, 2021](#org097f8df)
  - [misc notes](#org5d7a447)
    - [plain text accounting site](#org0c29f22)
    - [jeff issues with data recovery exploration](#org335071e)
    - [video political history of X](#org0f378ed)
  - [once over the zoom chat window](#org5be6ccf)
    - [definition of "twigil"](#org8f79545)


<a id="org5809717"></a>

# meeting notes September 16, 2021                                      a


<a id="orgcbec1a1"></a>

## the usual links:


<a id="org5cc6af7"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgefae132"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org534bac0"></a>

## battle plan


<a id="org9100a2b"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgc4b8b15"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

3.  some other material:

    1.  <https://github.com/doomvox/raku-study/tree/main/raku-study/notes/talks/multidispatch_vs_case>

4.  note: order matters with given-when, with multidispatch it's specificity

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
                
                4.  most recent brad gilbert post (factorial) example is puzzling
                
                5.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10149.html>
                
                    1.  doesn't seem to address the issue at hand
                    
                    2.  some idioms in use are interesting:
                    
                        ```perl6
                        multi factorial ( 0 --> 1 ){}
                        multi factorial ( 1 --> 1 ){}
                        multi factorial ( UInt \n ){ factorial(n - 1) * n }
                        
                        say factorial( 1 );
                        # ERROR: both UInt and 1 subsets match.
                        ```
                    
                    3.  Signature matches on single value 0, and restricts return to single value 1
                    
                        ```perl6
                        multi factorial ( 0 --> 1 ){}
                        ```
                        
                        1.  Alternately, the "returns" keyword
            
            2.  bruce gray tried some variants&#x2026;
            
                1.  variables of type Hero/Monster
                
                2.  Hero/Monster classes


<a id="org3bc1427"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgfb340e4"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org5653734"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="orgdbb8143"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org2980945"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org99b9b3f"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="org93df430"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgda0c5ff"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org3a15c6a"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org901946f"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgcad64f2"></a>

## next meeting


<a id="org097f8df"></a>

### next meeting: Oct 10, 2021


<a id="org5d7a447"></a>

## misc notes


<a id="org0c29f22"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org335071e"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org0f378ed"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>


<a id="org5be6ccf"></a>

## once over the zoom chat window


<a id="org8f79545"></a>

### definition of "twigil"

1.  the second char, or the two char pair

    1.  survey says "second char"
    
        1.  textual support in early writings of the larry
        
        2.  William Michels took the minority side,
        
            1.  has a reading of his own of some of the material
        
        3.  JJ offers a bit of limited support:
        
            "TBH, I understood the same as @jubilatious1."; "Obviously, we have to stick to the published definition."

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
