- [meeting notes February 13, 2022](#org873732b)
  - [the raku study group](#org308fc4c)
  - [usual links to the meeting material](#orgd640b98)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org0f26881)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#orge47cbe4)
  - [topics](#org99b8349)
    - [fosdem](#org3ed0417)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org2bd2429)
    - [Physics::Measure](#org83024ec)
    - [william michels github issue](#orga761fb2)
    - [Making a hash out of intertwined array of strings and integers](#org3032be6)
  - [untopics](#org60a44cc)
    - [Alan, noting my Materials Science background asks what I think of:](#org5519253)
    - [William Michels was curious about:](#org36f975a)
  - [announcements](#org4843798)
    - [February 27th: next raku study group meeting](#org07b15b8)
    - [June 21-25: tprc: perl/raku conference](#org41eb873)


<a id="org873732b"></a>

# meeting notes February 13, 2022


<a id="org308fc4c"></a>

## the raku study group


<a id="orgd640b98"></a>

## usual links to the meeting material


<a id="org0f26881"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="orge47cbe4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="org99b8349"></a>

## topics


<a id="org3ed0417"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org2bd2429"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org83024ec"></a>

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


<a id="orga761fb2"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error
    
        1.  So Raku coerces the single value into a list, and derefs it?


<a id="org3032be6"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org60a44cc"></a>

## untopics


<a id="org5519253"></a>

### Alan, noting my Materials Science background asks what I think of:

1.  <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>

2.  <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="org36f975a"></a>

### William Michels was curious about:

1.  "R for Finite Element Analyses of Size-dependent Microscale Structures"

2.  <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="org4843798"></a>

## announcements


<a id="org07b15b8"></a>

### February 27th: next raku study group meeting


<a id="org41eb873"></a>

### June 21-25: tprc: perl/raku conference
