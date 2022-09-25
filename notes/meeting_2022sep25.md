- [meeting notes September 25, 2022](#orge84c210)
  - [the raku study group](#org55a75ce)
  - [topics](#orgacb9339)
    - [substr uses first<sub>position</sub> and length](#orgc753174)
    - [revisit: "eurorack": william michels interested in synthesized music](#orgf17b2c5)
    - [refactoring an old perl5 project](#org5c1815c)
  - [announcements](#orgcc40a68)
    - [October 9th: the next raku study group meeting](#org3bc6142)
    - [My Bali vacation pics, cleaned up still further:](#org12433cd)


<a id="orge84c210"></a>

# meeting notes September 25, 2022


<a id="org55a75ce"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="orgacb9339"></a>

## topics


<a id="orgc753174"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="orgf17b2c5"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org5c1815c"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (only single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library, rewrite scripts to use library code
    
        1.  exporter-based
    
    4.  refactor subs so they stop shelling out so much, call routines directly
    
        1.  exposes some odd bugs: code has more memory now
    
    5.  central problem: I want to roll my own, but no good reason to release
    
    6.  weird bitrot affecting jpeg orientations


<a id="orgcc40a68"></a>

## announcements


<a id="org3bc6142"></a>

### October 9th: the next raku study group meeting


<a id="org12433cd"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
