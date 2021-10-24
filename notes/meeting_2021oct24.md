- [meeting notes October 24, 2021](#org4eedc33)
  - [the raku study group](#orgeb9c114)
    - [Rock-rock-rock rakudo High Scool](#org21f1085)
  - [the usual links:](#orge7d61f0)
    - [meeting notes](#org8360336)
    - [code examples:](#org3d1fb8a)
  - [in](#orgb086c71)
    - [codesections on alternative idioms to multis and smartmatch](#orgb76820e)
    - [roast tests](#orgf034c92)
    - [some third thing because I'm one of those guys](#orgd661b4e)
  - [out](#orge306e82)
  - [leftovers that I swear I will not leave here in this file](#org3aa4fa0)
    - [more on data-handling in raku](#orgaf70e8e)
  - [announcements](#org73b10a1)
    - [the ephemeral miniconf: nov 18 2021](#org8808679)
  - [next meeting](#org5257a2c)
    - [next meeting: Nov 07, 2021](#org647d57d)


<a id="org4eedc33"></a>

# meeting notes October 24, 2021


<a id="orgeb9c114"></a>

## the raku study group


<a id="org21f1085"></a>

### Rock-rock-rock rakudo High Scool


<a id="orge7d61f0"></a>

## the usual links:


<a id="org8360336"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org3d1fb8a"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="orgb086c71"></a>

## in


<a id="orgb76820e"></a>

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


<a id="orgf034c92"></a>

### roast tests

1.  <https://github.com/Raku/roast>

    1.  "the spec is the tests"
    
        1.  a brief opinionated editorial that might possibly be controversial
    
    2.  writing a new roast test
    
        1.  go to repo (in chromium): <https://github.com/Raku/roast>
        
        2.  github.org -> upper right -> Forks -> new fork -> put in doomvox
        
            1.  still haven't learned to do this via a command-line tool
            
                1.  <https://cli.github.com/manual/gh_repo_fork>
                
                2.  maybe:
                
                    ```sh
                    gh repo fork doomvox/doomvox --clone=false
                    ```
                
                3.  gh: the standard (?) github command-line tool
                
                    1.  a brief opinionated editorial that might possibly be controversial
                
                4.  git clone of repository to a local working directory
                
                    ```sh
                    cd /home/doom/End/Cave/Raku/Wall # location for dev trees
                    cd Wall
                    gh repo clone doomvox/<repo_name>  # use gnome-terminal, not emacs shell
                    cd <repo_name>
                    ```


<a id="orgd661b4e"></a>

### some third thing because I'm one of those guys

1.  database table -> custom data objects


<a id="orge306e82"></a>

## out


<a id="org3aa4fa0"></a>

## leftovers that I swear I will not leave here in this file


<a id="orgaf70e8e"></a>

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


<a id="org73b10a1"></a>

## announcements


<a id="org8808679"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org5257a2c"></a>

## next meeting


<a id="org647d57d"></a>

### next meeting: Nov 07, 2021
