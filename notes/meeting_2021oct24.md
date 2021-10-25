- [meeting notes October 24, 2021](#org1aed5d4)
  - [the raku study group](#org8dc2c21)
    - [Rock-rock-rock rakudo High Scool](#org064167e)
  - [the usual links:](#orge9c3dca)
    - [meeting notes](#orga4d329d)
    - [code examples:](#org1599e0b)
  - [codesections on alternative idioms to multis and smartmatch](#orgc5c8fa5)
    - [codesections = Daniel Sockwell](#orgfe8b96f)
    - [<https://www.codesections.com/blog/try-some-pattern-matching/>](#org2daa906)
    - [<https://www.codesections.com/blog/pattern-matching-2/>](#orgc9354e4)
    - [<https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>](#org4c181c0)
    - [<https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>](#org79f491e)
    - [<https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>](#org05b6190)
    - [docs](#org27dd075)
  - [roast tests](#orgef0fbdd)
    - [<https://github.com/rakudo/rakudo/issues/4547>](#orgfc0409d)
    - [<https://github.com/Raku/roast>](#org090a5fc)
  - [Bruce Gray, perl weekly challenge:](#orgb1d1782)
    - [William Michels on stackexchange](#orgd24abc7)
  - [announcements](#org99c6852)
    - [the ephemeral miniconf: nov 18 2021](#org258726f)
  - [next meeting](#orgd54020a)
    - [next meeting: Nov 07, 2021](#orge646f95)


<a id="org1aed5d4"></a>

# meeting notes October 24, 2021


<a id="org8dc2c21"></a>

## the raku study group


<a id="org064167e"></a>

### Rock-rock-rock rakudo High Scool


<a id="orge9c3dca"></a>

## the usual links:


<a id="orga4d329d"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct24.md>


<a id="org1599e0b"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct24>


<a id="orgc5c8fa5"></a>

## codesections on alternative idioms to multis and smartmatch


<a id="orgfe8b96f"></a>

### codesections = Daniel Sockwell

1.  formatting of his blog is strange: chops code examples, mismatch dark/light backgrounds

    1.  <https://github.com/codesections-personal/codesections>
    
    2.  <https://www.getgutenberg.io>


<a id="org2daa906"></a>

### <https://www.codesections.com/blog/try-some-pattern-matching/>

1.  A good bit

    ```perl6
    ((try some-fn) // $default)
    ```


<a id="orgc9354e4"></a>

### <https://www.codesections.com/blog/pattern-matching-2/>


<a id="org4c181c0"></a>

### <https://www.reddit.com/r/rakulang/comments/q3mn13/lets_try_some_pattern_matching_codesections/>


<a id="org79f491e"></a>

### <https://www.reddit.com/r/rakulang/comments/q3vstb/further_thoughts_on_raku_pattern_matching/>


<a id="org05b6190"></a>

### <https://stackoverflow.com/questions/66233465/haskell-like-pattern-matching-in-raku>


<a id="org27dd075"></a>

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


<a id="orgef0fbdd"></a>

## roast tests


<a id="orgfc0409d"></a>

### <https://github.com/rakudo/rakudo/issues/4547>

1.  but probably need an issue number for Raku/roast:

    1.  <https://github.com/Raku/roast/issues/765>


<a id="org090a5fc"></a>

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


<a id="orgb1d1782"></a>

## Bruce Gray, perl weekly challenge:

1.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-135/challenge-135/bruce-gray/raku>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-135/#TASK1>


<a id="orgd24abc7"></a>

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


<a id="org99c6852"></a>

## announcements


<a id="org258726f"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgd54020a"></a>

## next meeting


<a id="orge646f95"></a>

### next meeting: Nov 07, 2021
