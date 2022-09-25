- [meeting notes September 25, 2022](#orga5e83ce)
  - [the raku study group](#org1083a6e)
  - [topics](#org97470cd)
    - [substr uses first<sub>position</sub> and length](#org8510ff9)
    - [revisit: "eurorack": william michels interested in synthesized music](#org404aac6)
    - [refactoring an old perl5 project](#org060f149)
  - [announcements](#orgcb5eb8a)
    - [October 9th: the next raku study group meeting](#orgb304265)
    - [My Bali vacation pics, cleaned up still further:](#org4d70fc9)


<a id="orga5e83ce"></a>

# meeting notes September 25, 2022


<a id="org1083a6e"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org97470cd"></a>

## topics


<a id="org8510ff9"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="org404aac6"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="org060f149"></a>

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


<a id="orgcb5eb8a"></a>

## announcements


<a id="orgb304265"></a>

### October 9th: the next raku study group meeting


<a id="org4d70fc9"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
