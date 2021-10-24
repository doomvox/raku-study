- [meeting notes October 24, 2021](#org18920b2)
  - [the raku study group](#orga8fa91d)
    - [Rock-rock-rock rakudo High Scool](#org593eb87)
  - [the usual links:](#orgd4edc90)
    - [meeting notes](#orgee7a4e0)
    - [code examples:](#org9a5e70a)
  - [in](#orgbfd058e)
    - [codesections on alternative idioms to multis and smartmatch](#orgba67b2f)
    - [roast tests](#orgaf4a8a2)
    - [some third thing because I'm one of those guys](#org4b2e767)
  - [out](#org4f6025e)
  - [leftovers that I swear I will not leave here in this file](#org9b21635)
    - [more on data-handling in raku](#org0d679bd)
  - [announcements](#orgad4c810)
    - [the ephemeral miniconf: nov 18 2021](#org1a6e182)
  - [next meeting](#org354c7d5)
    - [next meeting: Nov 07, 2021](#orgc69ce99)


<a id="org18920b2"></a>

# meeting notes October 24, 2021


<a id="orga8fa91d"></a>

## the raku study group


<a id="org593eb87"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgd4edc90"></a>

## the usual links:


<a id="orgee7a4e0"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org9a5e70a"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="orgbfd058e"></a>

## in


<a id="orgba67b2f"></a>

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


<a id="orgaf4a8a2"></a>

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
                    gh repo clone doomvox/roast      # use gnome-terminal, not emacs shell 
                    cd roast
                    ```
                
                5.  create dev branch and switch to it
                
                    ```sh
                    git branch <branch_name>; git checkout <branch_name>
                    ```
                
                6.  write code
                
                7.  commit and push changes out
                
                    ```sh
                    git commit -a -m'... (See issue #666666)'  # can't hurt to include issue number
                    git push -u origin <branch_name>
                    ```


<a id="org4b2e767"></a>

### some third thing because I'm one of those guys

1.  database table -> custom data objects


<a id="org4f6025e"></a>

## out


<a id="org9b21635"></a>

## leftovers that I swear I will not leave here in this file


<a id="org0d679bd"></a>

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


<a id="orgad4c810"></a>

## announcements


<a id="org1a6e182"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org354c7d5"></a>

## next meeting


<a id="orgc69ce99"></a>

### next meeting: Nov 07, 2021
