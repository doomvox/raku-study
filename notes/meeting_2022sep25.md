- [meeting notes September 25, 2022](#org49f61ee)
  - [the raku study group](#org69b2da2)
  - [topics](#orge848fd2)
    - [substr uses first<sub>position</sub> and length](#org6c5ad39)
    - [revisit: "eurorack": william michels interested in synthesized music](#org35db84e)
    - [refactoring an old perl5 project](#org4adb360)
  - [announcements](#org3655028)
    - [October 9th: the next raku study group meeting](#org555c56b)
    - [My Bali vacation pics, cleaned up still further:](#org9107c94)


<a id="org49f61ee"></a>

# meeting notes September 25, 2022


<a id="org69b2da2"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orge848fd2"></a>

## topics


<a id="org6c5ad39"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org35db84e"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org4adb360"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call routines directly
    
        1.  exposes some odd bugs: code has more memory now
    
    5.  code is getting gradually less ugly
    
    6.  delaying real fixes, adding additional hacks to reduce needs
    
        1.  codes embedded in file names that get turned to punctuation later
    
    7.  central problem: I want to roll my own, but no good reason to release
    
    8.  weird bitrot affecting jpeg orientations


<a id="org3655028"></a>

## announcements


<a id="org555c56b"></a>

### October 9th: the next raku study group meeting


<a id="org9107c94"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
