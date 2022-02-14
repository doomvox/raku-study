- [meeting notes February 13, 2022](#orgdfcc82b)
  - [the raku study group](#org58ff0cd)
  - [usual links to the meeting material](#orgcf10c7e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#orgf6c2ddb)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#org8508be1)
  - [topics](#org14d09c1)
    - [fosdem](#org004e2b4)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org7645822)
    - [Physics::Measure](#org1100a1d)
    - [william michels github issue](#org03e20b3)
    - [Making a hash out of intertwined array of strings and integers](#orgdb3f4c9)
    - [recursive regexs](#orgc00c503)
    - [darkroast](#org9bbbd49)
  - [announcements](#org0dc542e)
    - [February 27th: next raku study group meeting](#org4912101)
    - [June 21-25: tprc: perl/raku conference](#org121d3a2)


<a id="orgdfcc82b"></a>

# meeting notes February 13, 2022


<a id="org58ff0cd"></a>

## the raku study group


<a id="orgcf10c7e"></a>

## usual links to the meeting material


<a id="orgf6c2ddb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="org8508be1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="org14d09c1"></a>

## topics


<a id="org004e2b4"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org7645822"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org1100a1d"></a>

### Physics::Measure

1.  physical measurments

2.  numerics with error bars and units

3.  Steve Roe, aka p6steve

4.  <https://video.fosdem.org/2022/D.raku/grammar.mp4>

5.  github

    1.  <https://raku.land/github:p6steve/Physics::Measure>
    
    2.  <https://github.com/p6steve/raku-Physics-Measure>
    
    3.  <https://github.com/p6steve/raku-Physics-Unit>
    
    4.  <https://github.com/p6steve/raku-Physics-Error>

6.  questions:

    1.  mentions error bars&#x2013; don't see an example (in Physics::Error)
    
        1.  links to: <https://en.wikipedia.org/wiki/Propagation_of_uncertainty>
        
        2.  admits this is a complex subject, and his code is limited to the simplest approach: "linear".
    
    2.  comparison operators with error bars?  (works, but maybe not how you expect)
    
    3.  automatic unit conversion?  (yes!)
    
    4.  review recommended math with error bars.  rms or something?


<a id="org03e20b3"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="orgdb3f4c9"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orgc00c503"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org9bbbd49"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org0dc542e"></a>

## announcements


<a id="org4912101"></a>

### February 27th: next raku study group meeting


<a id="org121d3a2"></a>

### June 21-25: tprc: perl/raku conference
