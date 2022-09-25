- [meeting notes September 25, 2022](#org7f19015)
  - [the raku study group](#org9f33350)
  - [topics](#org227c2b1)
    - [substr uses first<sub>position</sub> and length](#org99e3723)
    - [revisit: "eurorack": william michels interested in synthesized music](#orgd705d2c)
    - [refactoring an old perl5 project](#orge12b421)
  - [announcements](#org3de6641)
    - [October 9th: the next raku study group meeting](#orgb867b77)
    - [My Bali vacation pics, cleaned up still further:](#org8624c93)


<a id="org7f19015"></a>

# meeting notes September 25, 2022


<a id="org9f33350"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org227c2b1"></a>

## topics


<a id="org99e3723"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="orgd705d2c"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orge12b421"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library
    
        1.  exporter-based
    
    4.  refactor subs to stop
    
    5.  central problem: I want to roll my own, but no good reason to release
    
    6.  weird bitrot affecting jpeg orientations


<a id="org3de6641"></a>

## announcements


<a id="orgb867b77"></a>

### October 9th: the next raku study group meeting


<a id="org8624c93"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
