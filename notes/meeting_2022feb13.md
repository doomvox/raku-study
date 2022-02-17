- [meeting notes February 13, 2022](#orgc5906fc)
  - [the raku study group](#orgd670298)
  - [usual links to the meeting material](#orgd9bb293)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org77c39ef)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#orgfaa8ffc)
  - [topics](#orge4650d2)
    - [fosdem](#org14e3d62)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org0e80997)
    - [Physics::Measure](#org5c6fafd)
    - [william michels github issue](#org6241cea)
    - [Making a hash out of intertwined array of strings and integers](#org7912a1d)
  - [untopics](#orgc6be138)
    - [Alan, noting my Materials Science background asks what I think of:](#org234be5e)
    - [William Michels was curious about:](#orgfac7667)
  - [announcements](#org5b81be8)
    - [February 27th: next raku study group meeting](#org10948b7)
    - [June 21-25: tprc: perl/raku conference](#org6bc76b2)


<a id="orgc5906fc"></a>

# meeting notes February 13, 2022


<a id="orgd670298"></a>

## the raku study group


<a id="orgd9bb293"></a>

## usual links to the meeting material


<a id="org77c39ef"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="orgfaa8ffc"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="orge4650d2"></a>

## topics


<a id="org14e3d62"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org0e80997"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org5c6fafd"></a>

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
    
        1.  Here, "m" is a postfix operator


<a id="org6241cea"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="org7912a1d"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orgc6be138"></a>

## untopics


<a id="org234be5e"></a>

### Alan, noting my Materials Science background asks what I think of:

1.  <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>

2.  <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="orgfac7667"></a>

### William Michels was curious about:

1.  "R for Finite Element Analyses of Size-dependent Microscale Structures"

2.  <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="org5b81be8"></a>

## announcements


<a id="org10948b7"></a>

### February 27th: next raku study group meeting


<a id="org6bc76b2"></a>

### June 21-25: tprc: perl/raku conference
