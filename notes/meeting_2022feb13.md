- [meeting notes February 13, 2022](#org58ccd6a)
  - [the raku study group](#org9baa5ca)
  - [usual links to the meeting material](#orgf5ff581)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org6489608)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#org31485c1)
  - [topics](#orgbe0441a)
    - [fosdem](#org91fa80c)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org56da6f1)
    - [Physics::Measure](#org7a55a3b)
    - [william michels github issue](#org6af72f3)
    - [Making a hash out of intertwined array of strings and integers](#org70a0e54)
  - [untopics](#org7956829)
    - [Alan, noting my Materials Science background asks what I think of:](#orge68bdea)
    - [William Michels was curious about:](#orge69e0ef)
  - [announcements](#orga63719e)
    - [February 27th: next raku study group meeting](#orgcb3cf72)
    - [June 21-25: tprc: perl/raku conference](#orga647f48)


<a id="org58ccd6a"></a>

# meeting notes February 13, 2022


<a id="org9baa5ca"></a>

## the raku study group


<a id="orgf5ff581"></a>

## usual links to the meeting material


<a id="org6489608"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="org31485c1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="orgbe0441a"></a>

## topics


<a id="org91fa80c"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org56da6f1"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org7a55a3b"></a>

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


<a id="org6af72f3"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="org70a0e54"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org7956829"></a>

## untopics


<a id="orge68bdea"></a>

### Alan, noting my Materials Science background asks what I think of:

1.  <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>

2.  <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="orge69e0ef"></a>

### William Michels was curious about:

1.  "R for Finite Element Analyses of Size-dependent Microscale Structures"

2.  <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="orga63719e"></a>

## announcements


<a id="orgcb3cf72"></a>

### February 27th: next raku study group meeting


<a id="orga647f48"></a>

### June 21-25: tprc: perl/raku conference
