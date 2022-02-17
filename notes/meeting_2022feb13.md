- [meeting notes February 13, 2022](#org8e70959)
  - [the raku study group](#org2c0b5b8)
  - [usual links to the meeting material](#orgaf8e900)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>](#org115b66b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>](#orgec01cc0)
  - [topics](#orgfbcb3c2)
    - [fosdem](#orge3b0bb5)
    - [unix.stackexchange.com moderator has magnanimously unbanned me](#org4c112e4)
    - [Physics::Measure](#orgca85a87)
    - [william michels github issue](#orgb3e76b0)
    - [Making a hash out of intertwined array of strings and integers](#org752ebab)
    - [recursive regexs](#org88c98fc)
    - [darkroast](#orgdf39360)
  - [announcements](#orgb0e73ac)
    - [February 27th: next raku study group meeting](#org5f4c9aa)
    - [June 21-25: tprc: perl/raku conference](#org71579ac)


<a id="org8e70959"></a>

# meeting notes February 13, 2022


<a id="org2c0b5b8"></a>

## the raku study group


<a id="orgaf8e900"></a>

## usual links to the meeting material


<a id="org115b66b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb13.md>


<a id="orgec01cc0"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb13>


<a id="orgfbcb3c2"></a>

## topics


<a id="orge3b0bb5"></a>

### fosdem

1.  videos (note, webm files have sound, mp4s don't?)

    1.  <https://video.fosdem.org/2022/>
    
    2.  <https://video.fosdem.org/2022/D.raku/>

2.  Some are on youtube (but none of the Raku ones)


<a id="org4c112e4"></a>

### unix.stackexchange.com moderator has magnanimously unbanned me


<a id="orgca85a87"></a>

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


<a id="orgb3e76b0"></a>

### william michels github issue

1.  <https://github.com/rakudo/rakudo/issues/4767>

    1.  @\*ARGS to do what he wants
    
    2.  genuinely odd behavior: indexing [0] on a non-list is not an error


<a id="org752ebab"></a>

### Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org88c98fc"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgdf39360"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgb0e73ac"></a>

## announcements


<a id="org5f4c9aa"></a>

### February 27th: next raku study group meeting


<a id="org71579ac"></a>

### June 21-25: tprc: perl/raku conference
