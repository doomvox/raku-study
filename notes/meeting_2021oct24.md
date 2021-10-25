- [meeting notes October 24, 2021](#org856f62f)
  - [the raku study group](#org6eef19f)
    - [Rock-rock-rock rakudo High Scool](#orgc1ed61c)
  - [the usual links:](#org9162ee1)
    - [meeting notes](#org049b30c)
    - [code examples:](#orgf116db1)
  - [in](#orgd6367d5)
    - [codesections on alternative idioms to multis and smartmatch](#orge422631)
    - [roast tests](#org5f6a819)
    - [some third thing because I'm one of those guys](#org8e0d7a1)
  - [out](#org6b61ca8)
    - [William Michels on stackexchange](#orgae240a8)
  - [leftovers that I swear I will not leave here in this file](#org4b4811c)
    - [more on data-handling in raku](#orgc694a70)
  - [announcements](#orgf45886d)
    - [the ephemeral miniconf: nov 18 2021](#orgee5fc91)
  - [next meeting](#org0539777)
    - [next meeting: Nov 07, 2021](#orgc6a55c4)


<a id="org856f62f"></a>

# meeting notes October 24, 2021


<a id="org6eef19f"></a>

## the raku study group


<a id="orgc1ed61c"></a>

### Rock-rock-rock rakudo High Scool


<a id="org9162ee1"></a>

## the usual links:


<a id="org049b30c"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="orgf116db1"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="orgd6367d5"></a>

## in


<a id="orge422631"></a>

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


<a id="org5f6a819"></a>

### roast tests

1.  <https://github.com/rakudo/rakudo/issues/4547>

    1.  but probably need an issue number for Raku/roast:
    
        1.  <https://github.com/Raku/roast/issues/765>

2.  <https://github.com/Raku/roast>

    1.  "the spec is the tests"
    
        1.  a brief opinionated editorial that might possibly be controversial
    
    2.  writing a new roast test
    
        1.  go to repo (in chromium): <https://github.com/Raku/roast>
        
        2.  github.org -> upper right -> Forks -> new fork -> put in doomvox
        
            1.  still haven't learned to do this via a command-line tool
            
                1.  <https://cli.github.com/manual/gh_repo_fork>
                
                2.  maybe this would work:
                
                    ```sh
                    gh repo fork doomvox/doomvox --clone=false
                    ```
                
                3.  gh is now the standard (?) github command-line tool
                
                    1.  a brief opinionated editorial that might possibly be controversial
                
                4.  git clone of repository to a local working directory
                
                    ```sh
                    cd /home/doom/End/Cave/Raku/Wall # location for dev trees
                    gh repo clone doomvox/roast      # use gnome-terminal, not emacs shell 
                    cd roast
                    ```
                    
                    1.  existing tests: double-check is there anything in here
                    
                        1.  <https://github.com/Raku/roast/blob/master/S12-subset/subtypes.t>
                        
                            /home/doom/End/Cave/Raku/Wall/roast/S12-subset/subtypes.t
                        
                        2.  <https://github.com/Raku/roast/blob/master/S12-subset/multi-dispatch.t>
                        
                            /home/doom/End/Cave/Raku/Wall/roast/S12-subset/multi-dispatch.t
                        
                        3.  some Test features I've never seen before:
                        
                            1.  group-of
                            
                                1.  Thats from a Test::Util module
                                
                                    1.  <https://github.com/Raku/roast/blob/master/packages/Test-Helpers/lib/Test/Util.pm6>
                                    
                                        /home/doom/End/Cave/Raku/Wall/roast/packages/Test-Helpers/lib/Test/Util.pm6
                                    
                                    2.  has decent pod
                
                5.  create dev branch and switch to it
                
                    ```sh
                    git branch <branch_name>; git checkout <branch_name>
                    ```
                
                6.  write code
                
                7.  commit and push changes out
                
                    ```sh
                    git commit -a -m'... (See issue #765)'  # can't hurt to include issue number
                    git push -u origin <branch_name>
                    ```
                
                8.  github create issue (if you haven't already)
                
                    1.  need the issue number for next step
                
                9.  github generate pullrequest
                
                    1.  using gh (gnome-terminal, not emacs shell):
                    
                        ```sh
                        gh pr create --title "new test of multi-dispatch with where clauses" --body "Fixes #765"
                        ```
                    
                    2.  makes you answer questions
                    
                        1.  first choose the parent repo
                        
                            1.  Raku/roast
                        
                        2.  second choose the forked repo
                        
                            1.  doomvox/roast
                        
                        3.  message must refer to the issue: "Fixes #765"


<a id="org8e0d7a1"></a>

### some third thing because I'm one of those guys

1.  database table -> custom data objects


<a id="org6b61ca8"></a>

## out


<a id="orgae240a8"></a>

### William Michels on stackexchange

1.  <https://unix.stackexchange.com/questions/674338/delete-last-n-characters-from-lines-within-file/674571#674571>

2.  <https://unix.stackexchange.com/questions/673836/combine-multiple-greps-with-regex/674566#674566>

3.  <https://unix.stackexchange.com/questions/673939/sed-and-regex-for-exif-renaming/674519#674519>

4.  <https://unix.stackexchange.com/questions/674207/explanation-of-a-sed-command/674335#674335>

5.  <https://unix.stackexchange.com/questions/674283/print-lines-where-every-word-of-the-line-with-capital-letters-starts-with-a-diff/674317#674317>

6.  <https://unix.stackexchange.com/questions/672871/is-there-a-method-to-indicate-the-last-iteration-in-a-loop-over-lines-of-an-inpu/673944#673944>

7.  <https://unix.stackexchange.com/questions/673798/how-to-remove-text-between-two-keywords-in-a-textfile/673821#673821>

8.  <https://unix.stackexchange.com/questions/171115/use-sed-to-print-from-the-very-first-line-until-the-line-containing-the-last-occ/673757#673757>

9.  <https://unix.stackexchange.com/questions/673515/add-suffix-to-certain-text-lines-if-and-only-if-the-suffix-is-not-present/673636#673636>

10. <https://unix.stackexchange.com/questions/673366/remove-lines-starting-with-pattern-a-or-b-except-when-they-contain-pattern-c-or/673631#673631>

11. <https://unix.stackexchange.com/questions/672890/shift-of-dates-in-a-csv-file-via-bash-script/673243#673243>

12. <https://unix.stackexchange.com/questions/336460/reverse-the-order-of-pairs-of-lines-of-a-text-file/672966#672966>

13. <https://unix.stackexchange.com/questions/672915/if-there-is-a-white-space-remove-it-if-none-ignore/672964#672964>

14. <https://unix.stackexchange.com/questions/659282/remove-lines-that-contain-two-string-matches/672705#672705>

15. <https://unix.stackexchange.com/questions/99431/print-lines-between-and-including-two-patterns/672602#672602>

16. <https://unix.stackexchange.com/search?q=Raku+XML>


<a id="org4b4811c"></a>

## leftovers that I swear I will not leave here in this file


<a id="orgc694a70"></a>

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


<a id="orgf45886d"></a>

## announcements


<a id="orgee5fc91"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org0539777"></a>

## next meeting


<a id="orgc6a55c4"></a>

### next meeting: Nov 07, 2021
