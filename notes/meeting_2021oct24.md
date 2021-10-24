- [meeting notes October 24, 2021](#orgb4a3692)
  - [the raku study group](#orgc3cf333)
    - [Rock-rock-rock rakudo High Scool](#org6be65c5)
  - [the usual links:](#orgbed2595)
    - [meeting notes](#orgdbf183a)
    - [code examples:](#orgbe9d7a8)
  - [in](#org91016cc)
    - [codesections on alternative idioms to multis and smartmatch](#org5cd8dbb)
    - [roast tests](#org6bcd16a)
    - [some third thing because I'm one of those guys](#org9cdaf35)
  - [out](#orgf147305)
  - [leftovers that I swear I will not leave here in this file](#orgdb5880d)
    - [more on data-handling in raku](#orge1c0390)
  - [announcements](#orgdf76d54)
    - [the ephemeral miniconf: nov 18 2021](#orgebc112f)
  - [next meeting](#org603ef87)
    - [next meeting: Nov 07, 2021](#orge525201)


<a id="orgb4a3692"></a>

# meeting notes October 24, 2021


<a id="orgc3cf333"></a>

## the raku study group


<a id="org6be65c5"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgbed2595"></a>

## the usual links:


<a id="orgdbf183a"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="orgbe9d7a8"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org91016cc"></a>

## in


<a id="org5cd8dbb"></a>

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


<a id="org6bcd16a"></a>

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
                
                8.  github create issue (if you haven't already)
                
                    1.  need the issue number for next step
                
                9.  github generate pullrequest
                
                    1.  using gh (gnome-terminal, not emacs shell):
                    
                        ```sh
                        gh pr create --title "new test of multi-dispatch with where clauses" --body "Fixes #666666"
                        ```
                    
                    2.  makes you answer questions
                    
                        1.  first choose the parent repo
                        
                        2.  second choose the forked repo
                        
                        3.  message must refer to the issue: "Fixes #666666"


<a id="org9cdaf35"></a>

### some third thing because I'm one of those guys

1.  database table -> custom data objects


<a id="orgf147305"></a>

## out


<a id="orgdb5880d"></a>

## leftovers that I swear I will not leave here in this file


<a id="orge1c0390"></a>

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


<a id="orgdf76d54"></a>

## announcements


<a id="orgebc112f"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org603ef87"></a>

## next meeting


<a id="orge525201"></a>

### next meeting: Nov 07, 2021
