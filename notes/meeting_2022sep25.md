- [meeting notes September 25, 2022](#org1a64ce6)
  - [the raku study group](#orgc8763e3)
  - [topics](#orgb62177a)
    - [substr uses first<sub>position</sub> and length](#org94f452c)
    - [revisit: "eurorack": william michels interested in synthesized music](#org21837c7)
    - [refactoring an old perl5 project](#org1a5f231)
  - [announcements](#orgf403f1c)
    - [October 9th: the next raku study group meeting](#org9f75e58)
    - [My Bali vacation pics, cleaned up still further:](#org93a02ba)


<a id="org1a64ce6"></a>

# meeting notes September 25, 2022


<a id="orgc8763e3"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgb62177a"></a>

## topics


<a id="org94f452c"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org21837c7"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org1a5f231"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call the subs directly
    
        1.  exposes some odd bugs: scope of "memory" changes
    
    5.  code is getting gradually less ugly, **but**. harder to hack than it should be.
    
        1.  real templates
    
    6.  delaying the real fixes, adding additional hacks to reduce the need
    
        1.  e.g. codes embedded in file names that get turned to punctuation later
    
    7.  central problem: I want to roll my own, but no good reason to release
    
        1.  a thought: keep re-writing this in different ways, use it as a demo/test case
    
    8.  weird bitrot affecting jpeg orientations


<a id="orgf403f1c"></a>

## announcements


<a id="org9f75e58"></a>

### October 9th: the next raku study group meeting


<a id="org93a02ba"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
