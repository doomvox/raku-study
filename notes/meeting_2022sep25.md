- [meeting notes September 25, 2022](#orgb0444a3)
  - [the raku study group](#orgd990b0a)
  - [topics](#org9309bf6)
    - [substr uses first<sub>position</sub> and length](#orgd067d20)
    - [revisit: "eurorack": william michels interested in synthesized music](#org0b5ecf8)
    - [refactoring an old perl5 project](#orge7fc34b)
  - [announcements](#org09a4567)
    - [October 9th: the next raku study group meeting](#org0f4a789)
    - [My Bali vacation pics, cleaned up still further:](#orgd45aee6)


<a id="orgb0444a3"></a>

# meeting notes September 25, 2022


<a id="orgd990b0a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org9309bf6"></a>

## topics


<a id="orgd067d20"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org0b5ecf8"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orge7fc34b"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call routines directly
    
        1.  exposes some odd bugs: code has more memory now
    
    5.  code is getting gradually less ugly
    
    6.  central problem: I want to roll my own, but no good reason to release
    
    7.  weird bitrot affecting jpeg orientations


<a id="org09a4567"></a>

## announcements


<a id="org0f4a789"></a>

### October 9th: the next raku study group meeting


<a id="orgd45aee6"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
