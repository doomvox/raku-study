- [meeting notes October 24, 2021](#org9713ef5)
  - [the raku study group](#org6dd37d4)
    - [Rock-rock-rock rakudo High Scool](#org515ed8d)
  - [the usual links:](#orgb058887)
    - [meeting notes](#org56db5e8)
    - [code examples:](#org554bf7f)
  - [in](#org2575eca)
    - [codesections on alternative idioms to multis and smartmatch](#orgaf05ba1)
    - [roast tests](#org8115cf4)
    - [some third thing because I'm one of those guys](#org0ecdf6e)
  - [out](#orgba6b895)
  - [leftovers that I swear I will not leave here in this file](#org42d7be4)
    - [more on data-handling in raku](#org3f53105)
  - [announcements](#org5e331d8)
    - [the ephemeral miniconf: nov 18 2021](#org128d1a0)
  - [next meeting](#org8bb8601)
    - [next meeting: Nov 07, 2021](#org84dc30e)


<a id="org9713ef5"></a>

# meeting notes October 24, 2021


<a id="org6dd37d4"></a>

## the raku study group


<a id="org515ed8d"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgb058887"></a>

## the usual links:


<a id="org56db5e8"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org554bf7f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org2575eca"></a>

## in


<a id="orgaf05ba1"></a>

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


<a id="org8115cf4"></a>

### roast tests

1.  <https://github.com/Raku/roast>


<a id="org0ecdf6e"></a>

### some third thing because I'm one of those guys


<a id="orgba6b895"></a>

## out


<a id="org42d7be4"></a>

## leftovers that I swear I will not leave here in this file


<a id="org3f53105"></a>

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


<a id="org5e331d8"></a>

## announcements


<a id="org128d1a0"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org8bb8601"></a>

## next meeting


<a id="org84dc30e"></a>

### next meeting: Nov 07, 2021
