- [meeting notes September 25, 2022](#org81cc866)
  - [the raku study group](#orgc25785d)
  - [topics](#org95e76fb)
    - [substr uses first<sub>position</sub> and length](#org6a1a925)
    - [revisit: "eurorack": william michels interested in synthesized music](#orge19ccfb)
    - [refactoring an old perl5 project](#org26bbb55)
  - [announcements](#org73e031a)
    - [October 9th: the next raku study group meeting](#org26152cb)
    - [My Bali vacation pics, cleaned up still further:](#orge65c095)


<a id="org81cc866"></a>

# meeting notes September 25, 2022


<a id="orgc25785d"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org95e76fb"></a>

## topics


<a id="org6a1a925"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="orge19ccfb"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org26bbb55"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call the subs directly
    
        1.  exposes some odd bugs: scope of "memory" changes
    
    5.  code is getting gradually less ugly, **but**.
    
    6.  delaying the real fixes, adding additional hacks to reduce the need
    
        1.  e.g. codes embedded in file names that get turned to punctuation later
    
    7.  
    
    8.  central problem: I want to roll my own, but no good reason to release
    
        1.  a thought: keep re-writing this in different ways, use it as a demo/test case
    
    9.  weird bitrot affecting jpeg orientations


<a id="org73e031a"></a>

## announcements


<a id="org26152cb"></a>

### October 9th: the next raku study group meeting


<a id="orge65c095"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
