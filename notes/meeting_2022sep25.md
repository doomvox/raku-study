- [meeting notes September 25, 2022](#org135f84f)
  - [the raku study group](#orgdb18c1a)
  - [topics](#org7180cef)
    - [substr uses first<sub>position</sub> and length](#orgc6cedfd)
    - [revisit: "eurorack": william michels interested in synthesized music](#orgfd64d27)
    - [refactoring an old perl5 project](#orgbe2d4fe)
  - [announcements](#org518c4ab)
    - [October 9th: the next raku study group meeting](#org7550f30)
    - [My Bali vacation pics, cleaned up still further:](#orgf79d91f)


<a id="org135f84f"></a>

# meeting notes September 25, 2022


<a id="orgdb18c1a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep25>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>


<a id="org7180cef"></a>

## topics


<a id="orgc6cedfd"></a>

### substr uses first<sub>position</sub> and length

1.  but I always want ranges: first<sub>position</sub>, second<sub>position</sub>

2.  how would you raku that?


<a id="orgfd64d27"></a>

### revisit: "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>


<a id="orgbe2d4fe"></a>

### refactoring an old perl5 project

1.  web photo gallery, static web page generation

    1.  write simple tests (single photoseries case covered)
    
    2.  script code broken down into subs (done long ago)
    
    3.  move subs into library
    
        1.  exporter-based
    
    4.  refactor subs to stop
    
    5.  central problem: I want to roll my own, but no good reason to release
    
    6.  weird bitrot affecting jpeg orientations


<a id="org518c4ab"></a>

## announcements


<a id="org7550f30"></a>

### October 9th: the next raku study group meeting


<a id="orgf79d91f"></a>

### My Bali vacation pics, cleaned up still further:

1.  <http://obsidianrook.com/pics/bali2022>
