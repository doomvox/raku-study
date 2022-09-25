- [meeting notes September 25, 2022](#orgf171fe0)
  - [the raku study group](#org3fee694)
  - [topics](#org154bf88)
    - [substr uses first<sub>position</sub> and length](#orgbd5f691)
    - [revisit: "eurorack": william michels interested in synthesized music](#org273f104)
    - [refactoring an old perl5 project](#org6562812)
  - [announcements](#orgfd4e5fb)
    - [October 9th: the next raku study group meeting](#org856cdde)
    - [My Bali vacation pics, cleaned up still further:](#org9043b27)


<a id="orgf171fe0"></a>

# meeting notes September 25, 2022


<a id="org3fee694"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org154bf88"></a>

## topics


<a id="orgbd5f691"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org273f104"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org6562812"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call routines directly
    
        1.  exposes some odd bugs: code has more memory now
    
    5.  code is getting gradually less ugly, **but**.
    
    6.  delaying the real fixes, adding additional hacks to reduce the need
    
        1.  e.g. codes embedded in file names that get turned to punctuation later
    
    7.  
    
    8.  central problem: I want to roll my own, but no good reason to release
    
        1.  a thought: keep re-writing this in different ways, use it as a demo/test case
    
    9.  weird bitrot affecting jpeg orientations


<a id="orgfd4e5fb"></a>

## announcements


<a id="org856cdde"></a>

### October 9th: the next raku study group meeting


<a id="org9043b27"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
