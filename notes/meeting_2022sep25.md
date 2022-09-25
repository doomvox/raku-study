- [meeting notes September 25, 2022](#orgbc3b3e0)
  - [the raku study group](#orgd5d0c81)
  - [topics](#orgc7d7aca)
    - [long discussion about community management etc](#org2ef743a)
    - [weekly challenge, current](#orge4c2327)
    - [weekly challenge, older:](#org0d2d8e0)
    - [substr uses first<sub>position</sub> and length](#org895ad63)
    - [revisit: "eurorack": william michels interested in synthesized music](#org23ae126)
    - [refactoring an old perl5 project](#org29f24e8)
  - [announcements](#org07fa369)
    - [October 9th: the next raku study group meeting](#orgec8d9df)
    - [My Bali vacation pics, cleaned up still further:](#org6513bed)


<a id="orgbc3b3e0"></a>

# meeting notes September 25, 2022


<a id="orgd5d0c81"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgc7d7aca"></a>

## topics


<a id="org2ef743a"></a>

### long discussion about community management etc

1.  marton polgar

    1.  raku needs an actual manager?
    
        1.  not so welcoming to new work?
    
    2.  good raku people lost to rust?
    
    3.  how public is the study group
    
        1.  mention on community page
        
        2.  get lizmat to include
    
    4.  idea for a "raku hermit" blog: unofficial but technically useful info

2.  william michels raises old issue:

    1.  <https://www.theregister.com/2021/05/26/freenode_irc_takeover/>


<a id="orge4c2327"></a>

### weekly challenge, current

1.  <https://theweeklychallenge.org/>

2.  what's an "arrayref"? (A perlism, without obvious raku equivalent)

3.  text:

    ```text
    TASK #1: Unique Array
    
    You are given list of arrayrefs. Write a script to remove the duplicate arrayrefs from the given list.
    
    TASK #2: Date Difference
    
    You are given two dates, $date1 and $date2 in the format YYYY-MM-DD. 
    Write a script to find the difference between the given dates in terms on years and days only.
    ```


<a id="org0d2d8e0"></a>

### weekly challenge, older:

1.  longest common prefix in directory names


<a id="org895ad63"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org23ae126"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org29f24e8"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call the subs directly
    
        1.  exposes some odd bugs: scope of "memory" changes
    
    5.  code is getting gradually less ugly, **but**.
    
        1.  harder to hack than it should be.
        
        2.  needs
        
            1.  real templates
            
            2.  database to track metadata
    
    6.  delaying the real fixes, adding additional hacks to reduce the need
    
        1.  e.g. codes embedded in file names that get turned to punctuation later
    
    7.  central problem: I want to roll my own, but no good reason to release
    
        1.  a thought: keep re-writing this in different ways, use it as a demo/test case
    
    8.  data modeling mistakes:
    
        1.  attributing multiple photographers
        
        2.  photos of a subject from multiple sessions
        
        3.  untitled photos need html filenames too
        
            1.  you can have a series inside a series
            
                1.  e.g. three shots getting gradually closer
    
    9.  weird bitrot affecting jpeg orientations


<a id="org07fa369"></a>

## announcements


<a id="orgec8d9df"></a>

### October 9th: the next raku study group meeting


<a id="org6513bed"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
