- [meeting notes October 24, 2021](#orgdf772e0)
  - [the usual links:](#orgcf309a8)
    - [meeting notes](#org15a675c)
    - [code examples:](#orgf1cf91f)
  - [in](#orgb7d9ded)
    - [codesections on alternative idioms to multis and smartmatch](#orga750dc0)
    - [roast tests](#orgb433ef1)
    - [some third thing because I'm one of those guys](#orgc8abb0d)
  - [out](#orgcf4915d)
  - [leftovers that I swear I will not leave here in this file](#org6990ec7)
    - [more on data-handling in raku](#orga2a17f9)
  - [announcements](#org482b320)
    - [the ephemeral miniconf: nov 18 2021](#org4b686e5)
  - [next meeting](#org3699b18)
    - [next meeting: Nov 07, 2021](#org07e024e)


<a id="orgdf772e0"></a>

# meeting notes October 24, 2021


<a id="orgcf309a8"></a>

## the usual links:


<a id="org15a675c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="orgf1cf91f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="orgb7d9ded"></a>

## in


<a id="orga750dc0"></a>

### codesections on alternative idioms to multis and smartmatch

1.  <https://www.codesections.com/blog/try-some-pattern-matching/>

    1.  
    
        ```perl6
        (try some-fn) // $default)
        ```

2.  <https://www.codesections.com/blog/pattern-matching-2/>

3.  <https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>

4.  <https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>

5.  <https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>

6.  docs

    | key      | url                                                                          |  |
    |-------- |---------------------------------------------------------------------------- |--- |
    | for      | <https://docs.raku.org/syntax/for>                                           |  |
    | try      | <https://docs.raku.org/language/exceptions#try_blocks>                       |  |
    | sum      | <https://docs.raku.org/routine/sum>                                          |  |
    | whenever | <https://docs.raku.org/language/concurrency#index-entry-whenever>            |  |
    | when     | <https://docs.raku.org/language/control#index-entry-control_flow__when-when> |  |
    | cando    | <https://docs.raku.org/routine/cando>                                        |  |
    |          |                                                                              |  |


<a id="orgb433ef1"></a>

### roast tests


<a id="orgc8abb0d"></a>

### some third thing because I'm one of those guys


<a id="orgcf4915d"></a>

## out


<a id="org6990ec7"></a>

## leftovers that I swear I will not leave here in this file


<a id="orga2a17f9"></a>

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


<a id="org482b320"></a>

## announcements


<a id="org4b686e5"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org3699b18"></a>

## next meeting


<a id="org07e024e"></a>

### next meeting: Nov 07, 2021
