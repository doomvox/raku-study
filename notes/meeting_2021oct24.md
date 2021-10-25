- [meeting notes October 24, 2021](#org5d7d9ac)
  - [the raku study group](#org742c914)
    - [Rock-rock-rock rakudo High Scool](#orgaa6eb88)
  - [the usual links:](#orgc7a7205)
    - [meeting notes](#org8b7f4ee)
    - [code examples:](#org50db1ae)
  - [codesections on alternative idioms to multis and smartmatch](#org9fbcecc)
    - [codesections = Daniel Sockwell](#orgfedcefc)
    - [<https://www.codesections.com/blog/try-some-pattern-matching/>](#org3f99b8d)
    - [<https://www.codesections.com/blog/pattern-matching-2/>](#org6a58a87)
    - [<https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>](#org22a4122)
    - [<https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>](#orgf665298)
    - [<https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>](#orgdc029a6)
    - [docs](#org1d18093)
  - [roast tests](#org13af678)
    - [<https://github.com/rakudo/rakudo/issues/4547>](#orgd730b28)
    - [<https://github.com/Raku/roast>](#org5bfca64)
  - [Bruce Gray, perl weekly challenge:](#org225aa9a)
    - [William Michels on stackexchange](#org6d6abaa)
  - [announcements](#org9be7b7a)
    - [the ephemeral miniconf: nov 18 2021](#orgc847380)
  - [next meeting](#orgfc60ed5)
    - [next meeting: Nov 07, 2021](#org0d22c9a)


<a id="org5d7d9ac"></a>

# meeting notes October 24, 2021


<a id="org742c914"></a>

## the raku study group


<a id="orgaa6eb88"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgc7a7205"></a>

## the usual links:


<a id="org8b7f4ee"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org50db1ae"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org9fbcecc"></a>

## codesections on alternative idioms to multis and smartmatch


<a id="orgfedcefc"></a>

### codesections = Daniel Sockwell

1.  formatting of his blog is strange: chops code examples, mismatch dark/light backgrounds

    1.  <https://github.com/codesections-personal/codesections>
    
    2.  <https://www.getgutenberg.io>


<a id="org3f99b8d"></a>

### <https://www.codesections.com/blog/try-some-pattern-matching/>

1.  A good bit

    ```perl6
    ((try some-fn) // $default)
    ```


<a id="org6a58a87"></a>

### <https://www.codesections.com/blog/pattern-matching-2/>


<a id="org22a4122"></a>

### <https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>


<a id="orgf665298"></a>

### <https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>


<a id="orgdc029a6"></a>

### <https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>


<a id="org1d18093"></a>

### docs

| key      | url                                                                          |  |
|-------- |---------------------------------------------------------------------------- |--- |
| for      | <https://docs.raku.org/syntax/for>                                           |  |
| try      | <https://docs.raku.org/language/exceptions#try_blocks>                       |  |
| sum      | <https://docs.raku.org/routine/sum>                                          |  |
| whenever | <https://docs.raku.org/language/concurrency#index-entry-whenever>            |  |
| when     | <https://docs.raku.org/language/control#index-entry-control_flow__when-when> |  |
| cando    | <https://docs.raku.org/routine/cando>                                        |  |
|          |                                                                              |  |

1.  <https://docs.raku.org/type/Signature#Capture_parameters>

2.  TODO cando docs problems

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24/trial-cando.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021oct24/trial-cando.raku


<a id="org13af678"></a>

## roast tests


<a id="orgd730b28"></a>

### <https://github.com/rakudo/rakudo/issues/4547>

1.  but probably need an issue number for Raku/roast:

    1.  <https://github.com/Raku/roast/issues/765>


<a id="org5bfca64"></a>

### <https://github.com/Raku/roast>

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


<a id="org225aa9a"></a>

## Bruce Gray, perl weekly challenge:

1.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-135/challenge-135/bruce-gray/raku>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-135/#TASK1>


<a id="org6d6abaa"></a>

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

    1.  featured: munging jpeg exif data
    
        1.  <https://unix.stackexchange.com/questions/673939/sed-and-regex-for-exif-renaming/674519#674519>
        
            1.  <https://docs.raku.org/routine/subst#Adverbs>


<a id="org9be7b7a"></a>

## announcements


<a id="orgc847380"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgfc60ed5"></a>

## next meeting


<a id="org0d22c9a"></a>

### next meeting: Nov 07, 2021
