- [meeting notes October 24, 2021](#orgaab5ddd)
  - [the raku study group](#orgecf4439)
    - [Rock-rock-rock rakudo High Scool](#orgae5cbde)
  - [the usual links:](#orgbd78e65)
    - [meeting notes](#orgae56642)
    - [code examples:](#org51cf677)
  - [in](#org9f1fbc5)
    - [codesections on alternative idioms to multis and smartmatch](#org7a26d53)
    - [roast tests](#org0c0af2c)
    - [some third thing because I'm one of those guys](#org280f2a0)
  - [out](#orgd1bcd39)
  - [leftovers that I swear I will not leave here in this file](#orge5f1806)
    - [more on data-handling in raku](#orgba644b7)
  - [announcements](#orgd99960e)
    - [the ephemeral miniconf: nov 18 2021](#org7862755)
  - [next meeting](#orgf3c55e5)
    - [next meeting: Nov 07, 2021](#org2d2a933)


<a id="orgaab5ddd"></a>

# meeting notes October 24, 2021


<a id="orgecf4439"></a>

## the raku study group


<a id="orgae5cbde"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgbd78e65"></a>

## the usual links:


<a id="orgae56642"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org51cf677"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org9f1fbc5"></a>

## in


<a id="org7a26d53"></a>

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


<a id="org0c0af2c"></a>

### roast tests

1.  <https://github.com/Raku/roast>


<a id="org280f2a0"></a>

### some third thing because I'm one of those guys


<a id="orgd1bcd39"></a>

## out


<a id="orge5f1806"></a>

## leftovers that I swear I will not leave here in this file


<a id="orgba644b7"></a>

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


<a id="orgd99960e"></a>

## announcements


<a id="org7862755"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgf3c55e5"></a>

## next meeting


<a id="org2d2a933"></a>

### next meeting: Nov 07, 2021
