- [meeting notes October 24, 2021](#orgb736cf6)
  - [the raku study group](#orgf56f417)
    - [Rock-rock-rock rakudo High Scool](#org7f84abe)
  - [the usual links:](#orgdd1d9e3)
    - [meeting notes](#org4db9140)
    - [code examples:](#org8f93b50)
  - [in](#org9cdea27)
    - [codesections on alternative idioms to multis and smartmatch](#org5eb4c54)
    - [roast tests](#orgbbade07)
    - [some third thing because I'm one of those guys](#org253b2f1)
  - [out](#org924d8e4)
  - [leftovers that I swear I will not leave here in this file](#org7690fbd)
    - [more on data-handling in raku](#orgac2a80d)
  - [announcements](#org0af6afd)
    - [the ephemeral miniconf: nov 18 2021](#org271a1b3)
  - [next meeting](#org8c1336c)
    - [next meeting: Nov 07, 2021](#orgc604ba6)


<a id="orgb736cf6"></a>

# meeting notes October 24, 2021


<a id="orgf56f417"></a>

## the raku study group


<a id="org7f84abe"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgdd1d9e3"></a>

## the usual links:


<a id="org4db9140"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org8f93b50"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org9cdea27"></a>

## in


<a id="org5eb4c54"></a>

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


<a id="orgbbade07"></a>

### roast tests

1.  <https://github.com/Raku/roast>


<a id="org253b2f1"></a>

### some third thing because I'm one of those guys

1.  database table -> custom data objects


<a id="org924d8e4"></a>

## out


<a id="org7690fbd"></a>

## leftovers that I swear I will not leave here in this file


<a id="orgac2a80d"></a>

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


<a id="org0af6afd"></a>

## announcements


<a id="org271a1b3"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org8c1336c"></a>

## next meeting


<a id="orgc604ba6"></a>

### next meeting: Nov 07, 2021
