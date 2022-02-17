- [meeting notes February 13, 2022](#orgabf702f)
  - [the raku study group](#org00e3b0f)
  - [usual links to the meeting material](#org7dc385e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org2dbbd98)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#org844b34b)
  - [topics](#orgf1d62a5)
    - [fosdem](#orga06c78b)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org60b3591)
    - [Physics::Measure](#org1a2500e)
    - [william michels github issue](#orgc97735d)
    - [Making a hash out of intertwined array of strings and integers](#org5b714f8)
    - [recursive regexs](#orgdc93d24)
    - [darkroast](#org747aa45)
  - [announcements](#org527cf53)
    - [February 27th: next raku study group meeting](#orgc4d9682)
    - [June 21-25: tprc: perl/raku conference](#org974b156)


<a id="orgabf702f"></a>

# meeting notes February 13, 2022


<a id="org00e3b0f"></a>

## the raku study group


<a id="org7dc385e"></a>

## usual links to the meeting material


<a id="org2dbbd98"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="org844b34b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="orgf1d62a5"></a>

## topics


<a id="orga06c78b"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org60b3591"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="org1a2500e"></a>

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


<a id="orgc97735d"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="org5b714f8"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orgdc93d24"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org747aa45"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org527cf53"></a>

## announcements


<a id="orgc4d9682"></a>

### February 27th: next raku study group meeting


<a id="org974b156"></a>

### June 21-25: tprc: perl/raku conference
