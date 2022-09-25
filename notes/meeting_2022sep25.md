- [meeting notes September 25, 2022](#org03f8a1b)
  - [the raku study group](#orge44ebb6)
  - [topics](#orgf004501)
    - [substr uses first<sub>position</sub> and length](#org2df3e47)
    - [revisit: "eurorack": william michels interested in synthesized music](#org4664af2)
    - [refactoring an old perl5 project](#orge2e3056)
  - [announcements](#org3ca54fa)
    - [October 9th: the next raku study group meeting](#org1c22466)
    - [My Bali vacation pics, cleaned up still further:](#org401085d)


<a id="org03f8a1b"></a>

# meeting notes September 25, 2022


<a id="orge44ebb6"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgf004501"></a>

## topics


<a id="org2df3e47"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org4664af2"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orge2e3056"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call routines directly
    
        1.  exposes some odd bugs: code has more memory now
    
    5.  code is getting gradually less ugly
    
    6.  delaying real fixes, adding additional hacks to reduce the need
    
        1.  e.g. codes embedded in file names that get turned to punctuation later
    
    7.  central problem: I want to roll my own, but no good reason to release
    
    8.  weird bitrot affecting jpeg orientations


<a id="org3ca54fa"></a>

## announcements


<a id="org1c22466"></a>

### October 9th: the next raku study group meeting


<a id="org401085d"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
