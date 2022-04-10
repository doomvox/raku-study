- [meeting notes February 13, 2022](#orga8f18c0)
  - [the raku study group](#org9cb541a)
  - [usual links to the meeting material](#org944a709)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org636a4c2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#orgad96335)
  - [topics](#orge89cd48)
    - [fosdem](#org319f648)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org5f4a030)
    - [Physics::Measure](#org8960e25)
    - [william michels github issue](#orgeb3902e)
    - [Making a hash out of intertwined array of strings and integers](#org58f0742)
  - [untopics](#orgc01ac5b)
    - [Alan, noting my Materials Science background asks what I think of:](#org60e98db)
    - [William Michels was curious about:](#org7094f80)
  - [announcements](#org5c92e17)
    - [February 27th: next raku study group meeting](#org93ac8df)
    - [June 21-25: tprc: perl/raku conference](#orge7bc891)


<a id="orga8f18c0"></a>

# meeting notes February 13, 2022


<a id="org9cb541a"></a>

## the raku study group


<a id="org944a709"></a>

## usual links to the meeting material


<a id="org636a4c2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="orgad96335"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="orge89cd48"></a>

## topics


<a id="org319f648"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org5f4a030"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org8960e25"></a>

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


<a id="orgeb3902e"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error
    
        1.  So Raku coerces the single value into a list, and derefs it?


<a id="org58f0742"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orgc01ac5b"></a>

## untopics


<a id="org60e98db"></a>

### Alan, noting my Materials Science background asks what I think of:

1.  <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>

2.  <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="org7094f80"></a>

### William Michels was curious about:

1.  "R for Finite Element Analyses of Size-dependent Microscale Structures"

2.  <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="org5c92e17"></a>

## announcements


<a id="org93ac8df"></a>

### February 27th: next raku study group meeting


<a id="orge7bc891"></a>

### June 21-25: tprc: perl/raku conference
