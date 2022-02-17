- [meeting notes February 13, 2022](#orgcbdb8e6)
  - [the raku study group](#orgc38356b)
  - [usual links to the meeting material](#org8becfdf)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org0d12b2d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#org0c03c29)
  - [topics](#orgd28fdea)
    - [fosdem](#org498838b)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org695e5c7)
    - [Physics::Measure](#orgb808448)
    - [william michels github issue](#org9392e39)
    - [Making a hash out of intertwined array of strings and integers](#org0a08ec4)
  - [Alan, noting my Materials Science background asks what I think of:](#orgac75ab4)
    - [<https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>](#org33af4f3)
    - [<https://link.springer.com/book/10.1007/978-1-4615-9074-3>](#org10a1b06)
  - [William Michels was curious about:](#org3b30d63)
    - ["R for Finite Element Analyses of Size-dependent Microscale Structures"](#org67d40f4)
    - [<https://link.springer.com/book/10.1007/978-981-13-7014-4>](#orgb8b545f)
  - [announcements](#orga5cdaff)
    - [February 27th: next raku study group meeting](#org87db9a1)
    - [June 21-25: tprc: perl/raku conference](#org6da9f74)


<a id="orgcbdb8e6"></a>

# meeting notes February 13, 2022


<a id="orgc38356b"></a>

## the raku study group


<a id="org8becfdf"></a>

## usual links to the meeting material


<a id="org0d12b2d"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="org0c03c29"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="orgd28fdea"></a>

## topics


<a id="org498838b"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org695e5c7"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="orgb808448"></a>

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


<a id="org9392e39"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="org0a08ec4"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orgac75ab4"></a>

## Alan, noting my Materials Science background asks what I think of:


<a id="org33af4f3"></a>

### <https://www.goodreads.com/book/show/230510.The_New_Science_of_Strong_Materials>


<a id="org10a1b06"></a>

### <https://link.springer.com/book/10.1007/978-1-4615-9074-3>


<a id="org3b30d63"></a>

## William Michels was curious about:


<a id="org67d40f4"></a>

### "R for Finite Element Analyses of Size-dependent Microscale Structures"


<a id="orgb8b545f"></a>

### <https://link.springer.com/book/10.1007/978-981-13-7014-4>


<a id="orga5cdaff"></a>

## announcements


<a id="org87db9a1"></a>

### February 27th: next raku study group meeting


<a id="org6da9f74"></a>

### June 21-25: tprc: perl/raku conference
