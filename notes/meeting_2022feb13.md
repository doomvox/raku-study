- [meeting notes February 13, 2022](#orgc38e917)
  - [the raku study group](#org01fb467)
  - [usual links to the meeting material](#org4889fae)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org545ca33)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#orge4d4d40)
  - [topics](#org8550a55)
    - [fosdem](#orgc7c7027)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#orgf0f71b7)
    - [Physics::Measure](#orge54e8b4)
    - [william michels github issue](#orgb95b334)
    - [Making a hash out of intertwined array of strings and integers](#orgd5d3d94)
    - [recursive regexs](#org29cd452)
    - [darkroast](#orgee2578c)
  - [announcements](#org1586d81)
    - [February 27th: next raku study group meeting](#org2458ac2)
    - [June 21-25: tprc: perl/raku conference](#orgba77c51)


<a id="orgc38e917"></a>

# meeting notes February 13, 2022


<a id="org01fb467"></a>

## the raku study group


<a id="org4889fae"></a>

## usual links to the meeting material


<a id="org545ca33"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="orge4d4d40"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="org8550a55"></a>

## topics


<a id="orgc7c7027"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="orgf0f71b7"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="orge54e8b4"></a>

### Physics::Measure

1.  physical measurments

2.  numerics with error bars and units

3.  Steve Roe, aka p6steve

4.  <https://video.fosdem.org/2022/D.raku/grammar.mp4>

5.  github

    1.  <https://raku.land/github:p6steve/Physics::Measure>
    
    2.  <https://github.com/p6steve/raku-Physics-Measure>
    
    3.  <https://github.com/p6steve/raku-Physics-Unit>
    
    4.  <https://github.com/p6steve/raku-Physics-Measure>

6.  questions:

    1.  mentions error bars&#x2013; don't see an example (in Physics::Error)
    
        1.  links to: <https://en.wikipedia.org/wiki/Propagation_of_uncertainty>
        
        2.  admits this is a complex subject, and his code is limited to the simplest approach:
        
            "linear".
    
    2.  comparison operators with error bars?  (works, but maybe not how you expect)
    
    3.  automatic unit conversion?  (yes!)
    
    4.  review recommended math with error bars.  rms or something?


<a id="orgb95b334"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="orgd5d3d94"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org29cd452"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgee2578c"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org1586d81"></a>

## announcements


<a id="org2458ac2"></a>

### February 27th: next raku study group meeting


<a id="orgba77c51"></a>

### June 21-25: tprc: perl/raku conference
