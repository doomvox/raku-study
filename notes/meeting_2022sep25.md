- [meeting notes September 25, 2022](#org9637ec5)
  - [the raku study group](#orgde90132)
  - [topics](#org541761c)
    - [long discussion](#orge092dd8)
    - [weekly challenge](#org1880d12)
    - [substr uses first<sub>position</sub> and length](#org1cab9d5)
    - [revisit: "eurorack": william michels interested in synthesized music](#org6fdac5f)
    - [refactoring an old perl5 project](#org6bd4ed1)
  - [announcements](#org4504494)
    - [October 9th: the next raku study group meeting](#orgd689bfb)
    - [My Bali vacation pics, cleaned up still further:](#org1d6d0fb)


<a id="org9637ec5"></a>

# meeting notes September 25, 2022


<a id="orgde90132"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org541761c"></a>

## topics


<a id="orge092dd8"></a>

### long discussion

1.  marton polgar

    1.  
    
    2.  good raku people lost to rust?
    
    3.  


<a id="org1880d12"></a>

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


<a id="org1cab9d5"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org6fdac5f"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org6bd4ed1"></a>

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


<a id="org4504494"></a>

## announcements


<a id="orgd689bfb"></a>

### October 9th: the next raku study group meeting


<a id="org1d6d0fb"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
