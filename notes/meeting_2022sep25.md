- [meeting notes September 25, 2022](#org5666b7d)
  - [the raku study group](#org5e11624)
  - [topics](#orgf05c4cd)
    - [weekly challenge](#orge79c19b)
    - [substr uses first<sub>position</sub> and length](#org5710f46)
    - [revisit: "eurorack": william michels interested in synthesized music](#org5fcf912)
    - [refactoring an old perl5 project](#orgc68d83c)
  - [announcements](#org0b4d58c)
    - [October 9th: the next raku study group meeting](#org22ca3f5)
    - [My Bali vacation pics, cleaned up still further:](#orgcf33d2f)


<a id="org5666b7d"></a>

# meeting notes September 25, 2022


<a id="org5e11624"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgf05c4cd"></a>

## topics


<a id="orge79c19b"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>

2.  "arrayref"

3.  text:

    ```text
    
    TASK #1: Unique Array
    
    You are given list of arrayrefs. Write a script to remove the duplicate arrayrefs from the given list.
    
    TASK #2: Date Difference
    
    You are given two dates, $date1 and $date2 in the format YYYY-MM-DD. 
    Write a script to find the difference between the given dates in terms on years and days only.
    
    ```


<a id="org5710f46"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org5fcf912"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orgc68d83c"></a>

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


<a id="org0b4d58c"></a>

## announcements


<a id="org22ca3f5"></a>

### October 9th: the next raku study group meeting


<a id="orgcf33d2f"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
