- [meeting notes September 16, 2021                                      a](#org3c44030)
  - [the usual links:](#org9fd1a68)
    - [meeting notes](#org1f13f61)
    - [code examples:](#org55cf2bd)
  - [battle plan](#org98b6983)
    - [bin pre-loaded with small ammo](#orgf541b80)
    - [nano-lightning talk: given-when vs multi-dispatch](#org8a60e80)
    - [data-handling in raku](#org5afd7cf)
    - [intermixed types and resulting types](#orgb1f90eb)
    - [Data::Reshapers](#org48ee7c0)
    - [secure json-ification, vadim belman](#org983d48d)
    - [lispyness of raku](#org49af91c)
    - [pairs of separators from a string](#org1351278)
    - [bioinformatics on rosettacode](#orge23db1a)
    - [lca (old topic)](#org4bcbf77)
    - [once around the net](#org9e4037f)
    - [the ephemeral miniconf: nov 18 2021](#orgb4c9204)
  - [next meeting](#org865562a)
    - [next meeting: Oct 10, 2021](#orge126cbc)
  - [misc notes](#org853b655)
    - [plain text accounting site](#org5e93ee9)
    - [jeff issues with data recovery exploration](#org971e5ed)
    - [video political history of X](#org1838595)
  - [once over the zoom chat window](#org6843b3a)
    - [definition of "twigil"](#org0801c38)


<a id="org3c44030"></a>

# meeting notes September 16, 2021                                      a


<a id="org9fd1a68"></a>

## the usual links:


<a id="org1f13f61"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="org55cf2bd"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org98b6983"></a>

## battle plan


<a id="orgf541b80"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org8a60e80"></a>

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
                        
                            1.  <https://docs.raku.org/routine/returns>
                            
                            2.  <https://docs.raku.org/language/functions#Return_type_constraints>
            
            2.  bruce gray tried some variants:
            
                1.  variables of type Hero/Monster
                
                2.  Hero/Monster classes


<a id="org5afd7cf"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="orgb1f90eb"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="org48ee7c0"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org983d48d"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org49af91c"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org1351278"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="orge23db1a"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org4bcbf77"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org9e4037f"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="orgb4c9204"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org865562a"></a>

## next meeting


<a id="orge126cbc"></a>

### next meeting: Oct 10, 2021


<a id="org853b655"></a>

## misc notes


<a id="org5e93ee9"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  jeff hint


<a id="org971e5ed"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org1838595"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>


<a id="org6843b3a"></a>

## once over the zoom chat window


<a id="org0801c38"></a>

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
