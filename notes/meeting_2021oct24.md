- [meeting notes October 24, 2021](#orgd9dd504)
  - [the raku study group](#org98f5562)
    - [Rock-rock-rock rakudo High Scool](#org07487e7)
  - [the usual links:](#orge169ecd)
    - [meeting notes](#orgbcb1f1e)
    - [code examples:](#org2a730df)
  - [in](#org5321b4d)
    - [codesections on alternative idioms to multis and smartmatch](#org70392a1)
    - [roast tests](#org4ce363d)
    - [some third thing because I'm one of those guys](#org4942b6a)
  - [out](#org293797e)
  - [leftovers that I swear I will not leave here in this file](#org1d7c650)
    - [more on data-handling in raku](#org59d72d5)
  - [announcements](#orgdff09d7)
    - [the ephemeral miniconf: nov 18 2021](#orge4e7b1a)
  - [next meeting](#org8c2df7d)
    - [next meeting: Nov 07, 2021](#org2864c73)


<a id="orgd9dd504"></a>

# meeting notes October 24, 2021


<a id="org98f5562"></a>

## the raku study group


<a id="org07487e7"></a>

### Rock-rock-rock rakudo High Scool


<a id="orge169ecd"></a>

## the usual links:


<a id="orgbcb1f1e"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org2a730df"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org5321b4d"></a>

## in


<a id="org70392a1"></a>

### codesections on alternative idioms to multis and smartmatch

1.  codesections = Daniel Sockwell

2.  <https://www.codesections.com/blog/try-some-pattern-matching/>

    1.  A good bit
    
        ```perl6
        ((try some-fn) // $default)
        ```

3.  <https://www.codesections.com/blog/pattern-matching-2/>

4.  <https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>

5.  <https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>

6.  <https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>

7.  docs

    | key      | url                                                                          |  |
    |-------- |---------------------------------------------------------------------------- |--- |
    | for      | <https://docs.raku.org/syntax/for>                                           |  |
    | try      | <https://docs.raku.org/language/exceptions#try_blocks>                       |  |
    | sum      | <https://docs.raku.org/routine/sum>                                          |  |
    | whenever | <https://docs.raku.org/language/concurrency#index-entry-whenever>            |  |
    | when     | <https://docs.raku.org/language/control#index-entry-control_flow__when-when> |  |
    | cando    | <https://docs.raku.org/routine/cando>                                        |  |
    |          |                                                                              |  |


<a id="org4ce363d"></a>

### roast tests

1.  <https://github.com/Raku/roast>


<a id="org4942b6a"></a>

### some third thing because I'm one of those guys


<a id="org293797e"></a>

## out


<a id="org1d7c650"></a>

## leftovers that I swear I will not leave here in this file


<a id="org59d72d5"></a>

### more on data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>

3.  Data::Reshapers

    1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>

4.  "format data into a table"

    <https://unix.stackexchange.com/questions/649799/format-data-into-a-table/655944#655944>

5.  secure json-ification, vadim belman

    1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>
    
    2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>
    
    3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>

6.  pairs of separators from a string

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>
    
    2.  a discussion yary was involved in, which indicates there's something interesting

7.  lispyness of raku

    1.  <https://www.codesections.com/blog/raku-lisp-impression/>
    
    2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>

8.  old raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>


<a id="orgdff09d7"></a>

## announcements


<a id="orge4e7b1a"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org8c2df7d"></a>

## next meeting


<a id="org2864c73"></a>

### next meeting: Nov 07, 2021
