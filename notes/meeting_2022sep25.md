- [meeting notes September 25, 2022](#org6262d65)
  - [the raku study group](#org519d2a3)
  - [topics](#org874365d)
    - [weekly challenge](#orgeed6122)
    - [substr uses first<sub>position</sub> and length](#orgf5bf1c5)
    - [revisit: "eurorack": william michels interested in synthesized music](#org7a0f07e)
    - [refactoring an old perl5 project](#org2cd17b5)
  - [announcements](#org6386e3a)
    - [October 9th: the next raku study group meeting](#orgf17d38e)
    - [My Bali vacation pics, cleaned up still further:](#org74b795f)


<a id="org6262d65"></a>

# meeting notes September 25, 2022


<a id="org519d2a3"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org874365d"></a>

## topics


<a id="orgeed6122"></a>

### weekly challenge

1.  "arrayref"


<a id="orgf5bf1c5"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org7a0f07e"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org2cd17b5"></a>

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


<a id="org6386e3a"></a>

## announcements


<a id="orgf17d38e"></a>

### October 9th: the next raku study group meeting


<a id="org74b795f"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
