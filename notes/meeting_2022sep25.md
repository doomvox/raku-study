- [meeting notes September 25, 2022](#org1adfbf2)
  - [the raku study group](#orgb94d164)
  - [topics](#org55faebb)
    - [long discussion about community management etc](#org77cc345)
    - [weekly challenge, current](#orgdcce268)
    - [another weekly challenge](#org0c6af58)
    - [substr uses first<sub>position</sub> and length](#org33b61d4)
    - [revisit: "eurorack": william michels interested in synthesized music](#org49abd15)
    - [refactoring an old perl5 project](#org64356a5)
  - [announcements](#orgf4123d9)
    - [October 9th: the next raku study group meeting](#orgcb3bdc6)
    - [My Bali vacation pics, cleaned up still further:](#orgd0b35c1)


<a id="org1adfbf2"></a>

# meeting notes September 25, 2022


<a id="orgb94d164"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org55faebb"></a>

## topics


<a id="org77cc345"></a>

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


<a id="orgdcce268"></a>

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


<a id="org0c6af58"></a>

### another weekly challenge

1.  longest common prefix in directory names

2.  rob's code treats as strings, then ensures it stops at a '/'


<a id="org33b61d4"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org49abd15"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org64356a5"></a>

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


<a id="orgf4123d9"></a>

## announcements


<a id="orgcb3bdc6"></a>

### October 9th: the next raku study group meeting


<a id="orgd0b35c1"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
