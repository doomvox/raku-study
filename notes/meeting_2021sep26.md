- [meeting notes September 16, 2021                                      a](#org638481a)
  - [the usual links:](#orga0a7111)
    - [meeting notes](#orgd313a62)
    - [code examples:](#orgef15c90)
  - [battle plan](#org0a786f9)
    - [bin pre-loaded with small ammo](#orgd043faa)
    - [nano-lightning talk: given-when vs multi-dispatch](#orgd9967e4)
    - [data-handling in raku](#orgdbd3225)
    - [intermixed types and resulting types](#org27af5c1)
    - [Data::Reshapers](#orgef050c7)
    - [secure json-ification, vadim belman](#org399af3b)
    - [lispyness of raku](#orgfd5f4d6)
    - [pairs of separators from a string](#org3e6009c)
    - [bioinformatics on rosettacode](#orgcc8b6f4)
    - [lca (old topic)](#orgf6f9d76)
    - [once around the net](#org48768fb)
    - [the ephemeral miniconf: nov 18 2021](#org4711305)
  - [next meeting](#org56d1a4b)
    - [next meeting: Oct 10, 2021](#org3a41a0f)
  - [misc notes](#org641fd61)
    - [plain text accounting site](#org9b781d4)
    - [jeff issues with data recovery exploration](#orgc20763c)
    - [video political history of X](#org4357250)
  - [once over the zoom chat window](#org3843817)
    - [definition of "twigil"](#org23a7627)


<a id="org638481a"></a>

# meeting notes September 16, 2021                                      a


<a id="orga0a7111"></a>

## the usual links:


<a id="orgd313a62"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgef15c90"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org0a786f9"></a>

## battle plan


<a id="orgd043faa"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orgd9967e4"></a>

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


<a id="orgdbd3225"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>


<a id="org27af5c1"></a>

### intermixed types and resulting types

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10102.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/08/msg10114.html>

    1.  TODO a few weeks old&#x2013; I still want to respond to it


<a id="orgef050c7"></a>

### Data::Reshapers

1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>


<a id="org399af3b"></a>

### secure json-ification, vadim belman

1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>

2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>

3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgfd5f4d6"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org3e6009c"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>

2.  a discussion yary was involved in, which indicates there's something interesting


<a id="orgcc8b6f4"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgf6f9d76"></a>

### lca (old topic)

1.  <https://stackoverflow.com/questions/68869354/given-two-objects-can-you-find-the-nearest-common-ancestor>

2.  i think I like raiph's solution (new version of ^parents that uses graph theory definition)

3.  write it up as an answer of it's own.


<a id="org48768fb"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org4711305"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org56d1a4b"></a>

## next meeting


<a id="org3a41a0f"></a>

### next meeting: Oct 10, 2021


<a id="org641fd61"></a>

## misc notes


<a id="org9b781d4"></a>

### plain text accounting site

1.  doing accounting using just plain text

2.  <https://plaintextaccounting.org/>

3.  jeff hint


<a id="orgc20763c"></a>

### jeff issues with data recovery exploration

1.  ddrescue, dd<sub>rescue</sub>

    1.  copying data from dying media

2.  kryoflux

    1.  <https://kryoflux.com/>
    
    2.  Floppy disk archival tool

3.  harddrive in the freezer trick

    1.  can work on SSDs


<a id="org4357250"></a>

### video political history of X

1.  <https://www.youtube.com/watch?v=cj02_UeUnGQ>


<a id="org3843817"></a>

## once over the zoom chat window


<a id="org23a7627"></a>

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

9.  side issue: IntStr and Allomorph

    <https://docs.raku.org/language/numerics#Allomorphs> <https://docs.raku.org/language/glossary#index-entry-Allomorph>

10. hailstone sequence

    1.  <https://xkcd.com/710/>
    
    2.  <http://rosettacode.org/wiki/Hailstone_sequence>
    
    3.  <https://en.wikipedia.org/wiki/Collatz_conjecture#Visualizations>

11. jeff question about opening files in bin mode

    1.  reading file contents byte-at-time
    
    2.  bruce gray
    
        ```perl6
        $file.slurp(:bin)
        my $z = $file.IO.slurp(:bin); say $z.pop; say $z.pop;
        # Head of array: modifying (.shift/.unshift), not-modifying (.head, .skip(...).head());
        # Tail of array: modifying (.push, .pop), not-modifying (.tail );
        # also: [0], .[1], .[*-1], .[*-3..*-3], etc
        ```

12. william michels activity on stackexchange, etc

    1.  <https://unix.stackexchange.com/questions/670307/how-can-i-transliterate-some-characters-1-to-1-leave-some-unchanged-and-replac/670628#670628>
    
    2.  <https://unix.stackexchange.com/questions/511276/unix-file-with-newlines-within-quotes/670358#670358>
    
    3.  <https://unix.stackexchange.com/questions/670104/removing-new-line-character-from-a-column-in-a-csv-file/670344#670344>
    
    4.  <https://unix.stackexchange.com/questions/670184/how-can-i-count-number-of-a-specific-character-in-a-column-for-each-line-and-add/670258#670258>
    
    5.  <https://unix.stackexchange.com/questions/670163/how-to-split-a-line-of-text-separated-by-into-a-file-containing-one-string-p/670254#670254>
    
    6.  <https://unix.stackexchange.com/questions/669943/how-to-only-print-first-two-words-of-a-certain-column-with-awk/670078#670078>
    
    7.  <https://unix.stackexchange.com/questions/617680/insert-zero-before-and-after-a-data-point/669635#669635>
    
    8.  <https://unix.stackexchange.com/questions/582059/awk-to-replace-character-for-lines-not-starting-with/669627#669627>
    
    9.  <https://unix.stackexchange.com/questions/145597/format-the-content-of-the-file-using-perl/669308#669308>
    
    10. <https://unix.stackexchange.com/questions/669077/add-single-value-content-of-one-file-as-additional-column-to-another-file/669205#669205>
    
    11. <https://unix.stackexchange.com/questions/668922/how-to-extract-a-portion-of-an-xml-tag-value-in-a-bash-script/669047#669047>
    
    12. <https://unix.stackexchange.com/questions/658485/how-can-i-use-quantifiers-in-a-sed-substitution-expression/669031#669031>
    
    13. <https://unix.stackexchange.com/questions/668793/sed-have-a-range-finishing-with-the-last-occurrence-of-a-pattern-greedy-range/669020#669020>
    
    14. <https://unix.stackexchange.com/questions/24140/return-only-the-portion-of-a-line-after-a-matching-pattern/668893#668893>
    
    15. <https://unix.stackexchange.com/questions/593993/convert-multi-lines-to-single-line-with-spaces-and-quotes/668846#668846>
    
    16. <https://www.ietf.org/rfc/rfc4180.txt>
    
    17. 
    
    18.
