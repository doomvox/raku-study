- [meeting notes October 24, 2021](#orgf296048)
  - [the raku study group](#org8a4620f)
    - [Rock-rock-rock rakudo High Scool](#org391f013)
  - [the usual links:](#org75d1266)
    - [meeting notes](#org58a0d4c)
    - [code examples:](#org0440b2c)
  - [in](#org741d999)
    - [codesections on alternative idioms to multis and smartmatch](#org597a230)
    - [roast tests](#orgcdf76d6)
    - [some third thing because I'm one of those guys](#org9c6c0c1)
  - [out](#org0db0835)
  - [leftovers that I swear I will not leave here in this file](#org1e797e3)
    - [more on data-handling in raku](#org73b7741)
  - [announcements](#orgdfe0a34)
    - [the ephemeral miniconf: nov 18 2021](#orgd0c9baf)
  - [next meeting](#org6aa7693)
    - [next meeting: Nov 07, 2021](#org1751b57)


<a id="orgf296048"></a>

# meeting notes October 24, 2021


<a id="org8a4620f"></a>

## the raku study group


<a id="org391f013"></a>

### Rock-rock-rock rakudo High Scool


<a id="org75d1266"></a>

## the usual links:


<a id="org58a0d4c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org0440b2c"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org741d999"></a>

## in


<a id="org597a230"></a>

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


<a id="orgcdf76d6"></a>

### roast tests

1.  <https://github.com/Raku/roast>


<a id="org9c6c0c1"></a>

### some third thing because I'm one of those guys


<a id="org0db0835"></a>

## out


<a id="org1e797e3"></a>

## leftovers that I swear I will not leave here in this file


<a id="org73b7741"></a>

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


<a id="orgdfe0a34"></a>

## announcements


<a id="orgd0c9baf"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org6aa7693"></a>

## next meeting


<a id="org1751b57"></a>

### next meeting: Nov 07, 2021
