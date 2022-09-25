- [meeting notes September 25, 2022](#org7e1b7c9)
  - [the raku study group](#org1edaed2)
  - [topics](#orgd01e6b3)
    - [substr uses first<sub>position</sub> and length](#orge215da7)
    - [revisit: "eurorack": william michels interested in synthesized music](#orgd7fb7b1)
    - [refactoring an old perl5 project](#orgcb2a227)
  - [announcements](#org2412f92)
    - [October 9th: the next raku study group meeting](#org25bb3b9)
    - [My Bali vacation pics, cleaned up still further:](#org2c4bd8f)


<a id="org7e1b7c9"></a>

# meeting notes September 25, 2022


<a id="org1edaed2"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgd01e6b3"></a>

## topics


<a id="orge215da7"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="orgd7fb7b1"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orgcb2a227"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call routines directly
    
        1.  exposes some odd bugs: code has more memory now
    
    5.  code is getting gradually less ugly, **but**.
    
    6.  delaying real fixes, adding additional hacks to reduce the need
    
        1.  e.g. codes embedded in file names that get turned to punctuation later
    
    7.  central problem: I want to roll my own, but no good reason to release
    
    8.  weird bitrot affecting jpeg orientations


<a id="org2412f92"></a>

## announcements


<a id="org25bb3b9"></a>

### October 9th: the next raku study group meeting


<a id="org2c4bd8f"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
