- [meeting notes February 13, 2022](#org2eea1c7)
  - [the raku study group](#org7df3f74)
  - [usual links to the meeting material](#org55fe618)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgb5df1d3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgfc13c18)
  - [topics](#org41286e8)
    - [fosdem](#org54ae217)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#orgf6569c7)
    - [Physics::Measure](#orga353c85)
    - [william michels github issue](#orgfe26c7f)
    - [Making a hash out of intertwined array of strings and integers](#org167a5c1)
  - [untopics](#org7184fad)
    - [Alan, noting my Materials Science background asks what I think of:](#orgcc0e1ec)
    - [William Michels was curious about:](#org7b4626b)
  - [announcements](#orga31dbb0)
    - [February 27th: next raku study group meeting](#org421cbeb)
    - [June 21-25: tprc: perl/raku conference](#org4320f8d)


<a id="org2eea1c7"></a>

# meeting notes February 13, 2022


<a id="org7df3f74"></a>

## the raku study group


<a id="org55fe618"></a>

## usual links to the meeting material


<a id="orgb5df1d3"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgfc13c18"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org41286e8"></a>

## topics


<a id="org54ae217"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="orgf6569c7"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="orga353c85"></a>

### Physics::Measure

1.  really "physical measurments":

    1.  numerics with error bars and units

2.  Steve Roe, aka p6steve

3.  <https://video.fosdem.org/2022/D.raku/grammar.mp4>

4.  github

    1.  <https://raku.land/github:p6steve/Physics::Measure>
    
    2.  <https://github.com/p6steve/raku-Physics-Measure>
    
    3.  <https://github.com/p6steve/raku-Physics-Unit>
    
    4.  <https://github.com/p6steve/raku-Physics-Error>

5.  questions:

    1.  mentions error bars&#x2013; don't see an example (in Physics::Error)
    
        1.  links to: <https://en.wikipedia.org/wiki/Propagation_of_uncertainty>
        
        2.  admits this is a complex subject, and his code is limited to the simplest approach: "linear".
    
    2.  comparison operators with error bars?  (works, but maybe not how you expect)
    
    3.  automatic unit conversion?  (yes!)
    
    4.  review recommended math with error bars.  rms or something?
    
    5.  how does it get units to work?  e.g. $l = 5 m;
    
        1.  Here: "m" is a Raku postfix operator


<a id="orgfe26c7f"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error
    
        1.  So Raku coerces the single value into a list, and derefs it?


<a id="org167a5c1"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org7184fad"></a>

## untopics


<a id="orgcc0e1ec"></a>

### Alan, noting my Materials Science background asks what I think of:

1.  <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>

2.  <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="org7b4626b"></a>

### William Michels was curious about:

1.  "R for Finite Element Analyses of Size-dependent Microscale Structures"

2.  <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="orga31dbb0"></a>

## announcements


<a id="org421cbeb"></a>

### February 27th: next raku study group meeting


<a id="org4320f8d"></a>

### June 21-25: tprc: perl/raku conference
