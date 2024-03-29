- [meeting notes October 24, 2021](#org2cb4090)
  - [the raku study group](#org6ff8f1e)
    - [Rock-rock-rock rakudo High Scool](#orgf5b20f7)
  - [the usual links:](#orgf6919b5)
    - [meeting notes](#org02886c1)
    - [code examples:](#orgf39fa0d)
  - [codesections on alternative idioms to multis and smartmatch](#org6bf2ed1)
    - [codesections = Daniel Sockwell](#org64192c8)
    - [<https://www.codesections.com/blog/try-some-pattern-matching/>](#orgfdd9f5f)
    - [<https://www.codesections.com/blog/pattern-matching-2/>](#orge697e24)
    - [<https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>](#org218710d)
    - [<https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>](#org06b363e)
    - [<https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>](#org5ab7d7a)
    - [docs](#org89f44f4)
  - [roast tests](#org67db0f1)
    - [<https://github.com/rakudo/rakudo/issues/4547>](#org7987813)
    - [<https://github.com/Raku/roast>](#org52d9348)
  - [Bruce Gray, perl weekly challenge:](#org30b99bd)
    - [William Michels on stackexchange](#org7e86458)
  - [announcements](#org57c58a9)
    - [the ephemeral miniconf: nov 18 2021](#org1f356c5)
  - [next meeting](#org11d2180)
    - [next meeting: Nov 07, 2021](#org2a43d23)


<a id="org2cb4090"></a>

# meeting notes October 24, 2021


<a id="org6ff8f1e"></a>

## the raku study group


<a id="orgf5b20f7"></a>

### Rock-rock-rock rakudo High Scool


<a id="orgf6919b5"></a>

## the usual links:


<a id="org02886c1"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="orgf39fa0d"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="org6bf2ed1"></a>

## codesections on alternative idioms to multis and smartmatch


<a id="org64192c8"></a>

### codesections = Daniel Sockwell

1.  formatting of his blog is strange: chops code examples, mismatch dark/light backgrounds

    1.  <https://github.com/codesections-personal/codesections>
    
    2.  <https://www.getgutenberg.io>


<a id="orgfdd9f5f"></a>

### <https://www.codesections.com/blog/try-some-pattern-matching/>

1.  A good bit

    ```perl6
    ((try some-fn) // $default)
    ```


<a id="orge697e24"></a>

### <https://www.codesections.com/blog/pattern-matching-2/>


<a id="org218710d"></a>

### <https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>


<a id="org06b363e"></a>

### <https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>


<a id="org5ab7d7a"></a>

### <https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>


<a id="org89f44f4"></a>

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

3.  TODO stackoverflow question "exception not resumable"

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24/try_catch_basics.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021oct24/try<sub>catch</sub><sub>basics.raku</sub>


<a id="org67db0f1"></a>

## roast tests


<a id="org7987813"></a>

### <https://github.com/rakudo/rakudo/issues/4547>

1.  but probably need an issue number for Raku/roast:

    1.  <https://github.com/Raku/roast/issues/765>


<a id="org52d9348"></a>

### <https://github.com/Raku/roast>

1.  "the spec is the tests"

    1.  a brief opinionated editorial that might possibly be controversial
    
        1.  roast tests still have gaps:
        
            1.  if anyone took us up on the claim that they're the "spec" we would have incompatible Rakus around.
            
            2.  suspect the in-crowd don't think the gaps are very important
            
                1.  coverage is good for their preferred working style

2.  writing a new roast test

    1.  go to repo (in chromium): <https://github.com/Raku/roast>
    
    2.  github.org -> upper right -> Forks -> new fork -> put in doomvox
    
        1.  still haven't learned to do this via a command-line tool
        
            1.  <https://cli.github.com/manual/gh_repo_fork>
            
            2.  maybe this would work:
            
                ```sh
                gh repo fork doomvox/doomvox --clone=false  ## NOT TESTED
                ```
            
            3.  gh is now the standard (?) github command-line tool
            
                1.  a brief opinionated editorial that might possibly be controversial
                
                    1.  git, for all it's problems, has a traditional command-line style
                    
                        1.  distinguishes between "plumbing and porcelain"
                        
                            1.  you can write slick gui tools using it, but aren't supposed to need them
                    
                    2.  gh:
                    
                        1.  likes to bug the user with questions
                        
                        2.  presents the user with **drop-down menus**
                        
                        3.  can't work with all shells (emacs sub-shells are no good)
                        
                        4.  looks like it MIGHT have command-line options to silence questions
                        
                            1.  documentation exists, but explanations are sketchy and examples of this usage are weak
                        
                        5.  not clear to me how scriptable it is
            
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
            
                1.  draft:
                
                    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24/ambiguous_subset_matches_resolved_sequentially.t>
                    
                    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021oct24/ambiguous<sub>subset</sub><sub>matches</sub><sub>resolved</sub><sub>sequentially.t</sub>
            
            7.  commit and push changes out
            
                ```sh
                git commit -a -m'... (See issue #765)'  # can't hurt to include issue number
                git push -u origin <branch_name>
                ```
            
            8.  github generate pullrequest
            
                1.  have issue number already: #765
                
                2.  using gh (in the gnome-terminal, not emacs shell):
                
                    ```sh
                    gh pr create --title "new test of multi-dispatch with squential resolution of ambiguous subset match" --body "Fixes #765"
                    ```
                
                3.  makes you answer questions
                
                    1.  first choose the parent repo
                    
                        1.  Raku/roast
                    
                    2.  second choose the forked repo
                    
                        1.  doomvox/roast
                    
                    3.  message must refer to the issue: "Fixes #765"
                    
                    4.  not sure it resumes cleanly if you restart after interrupting
                    
                        1.  looked to me like an option was missing on first question
                        
                        2.  copped out and used website to generate pull-request:
                        
                            1.  default values in fields was sensible, at least.


<a id="org30b99bd"></a>

## Bruce Gray, perl weekly challenge:

1.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-135/challenge-135/bruce-gray/raku>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-135/#TASK1>


<a id="org7e86458"></a>

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


<a id="org57c58a9"></a>

## announcements


<a id="org1f356c5"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org11d2180"></a>

## next meeting


<a id="org2a43d23"></a>

### next meeting: Nov 07, 2021
