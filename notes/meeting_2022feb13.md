- [meeting notes February 13, 2022](#org79a290b)
  - [the raku study group](#org6d94bf4)
  - [usual links to the meeting material](#org479fe57)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org27008c3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#orgf4464d9)
  - [topics](#org7092d9a)
    - [fosdem](#org9d9ffca)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org7f71332)
    - [Physics::Measure](#org89f3596)
    - [william michels github issue](#orgf069166)
    - [Making a hash out of intertwined array of strings and integers](#orga502f4c)
  - [untopics](#org7fddc7f)
    - [Alan, noting my Materials Science background asks what I think of:](#org3e0599e)
    - [William Michels was curious about:](#org88038e4)
  - [announcements](#org2d5c788)
    - [February 27th: next raku study group meeting](#org851ed72)
    - [June 21-25: tprc: perl/raku conference](#orgf3b1b13)


<a id="org79a290b"></a>

# meeting notes February 13, 2022


<a id="org6d94bf4"></a>

## the raku study group


<a id="org479fe57"></a>

## usual links to the meeting material


<a id="org27008c3"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="orgf4464d9"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="org7092d9a"></a>

## topics


<a id="org9d9ffca"></a>

### fosdem

1.  videos (note, the webm files have sound, but the mp4s don't)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org7f71332"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org89f3596"></a>

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


<a id="orgf069166"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error
    
        1.  So Raku coerces the single value into a list, and derefs it?


<a id="orga502f4c"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org7fddc7f"></a>

## untopics


<a id="org3e0599e"></a>

### Alan, noting my Materials Science background asks what I think of:

1.  <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>

2.  <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="org88038e4"></a>

### William Michels was curious about:

1.  "R for Finite Element Analyses of Size-dependent Microscale Structures"

2.  <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="org2d5c788"></a>

## announcements


<a id="org851ed72"></a>

### February 27th: next raku study group meeting


<a id="orgf3b1b13"></a>

### June 21-25: tprc: perl/raku conference
