- [meeting notes January 30, 2022](#org5f20a96)
  - [the raku study group](#orgf69ece7)
    - [Don't Raku the boat](#org29ef4f3)
  - [usual links to the meeting material](#org60eb6f9)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgc451b98)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgcd8433b)
  - [topics](#org435c0de)
    - [darkroast](#org16f6afd)
    - [alan "psychological issues with learning new langs"](#orgbf430ea)
    - [distinguishing nothings](#org7b41dd5)
    - [stripping bracketing single-quotes](#org0c9e519)
    - [played around with flattening](#org2624a90)
    - [a gotcha in writing code to loop over lines from a file](#org094715d)
    - [sequences and for loops](#org6e1aec4)
    - [raiph, in passing points out an oddity of "constant"s](#orgaa7020e)
    - [lots of perl5 activity](#org34cbbc2)
    - [bruce gray on the weekly challenge (?)](#org114c881)
  - [old topics from last meeting](#org29df888)
    - [rob ransbottom (rir) had questions about oop structures where](#org82aedcf)
    - [raku vs python](#orgb1ca4ab)
    - [getting sets to DWIM](#orgef9ac24)
    - [jonathan worthington, cro-ing](#orgaddb58d)
    - [misc intro raku subjects for future toalks](#orgf3b3f53)
  - [announcments](#org8ef65e3)
    - [January 30th: next raku study group meeting](#org7213601)
    - [February 5-6: FOSDEM Raku talks](#orgece9848)
    - [June 21-25: tprc: perl/raku conference](#orgd024973)


<a id="org5f20a96"></a>

# meeting notes January 30, 2022


<a id="orgf69ece7"></a>

## the raku study group


<a id="org29ef4f3"></a>

### Don't Raku the boat


<a id="org60eb6f9"></a>

## usual links to the meeting material


<a id="orgc451b98"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgcd8433b"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org435c0de"></a>

## topics


<a id="org16f6afd"></a>

### darkroast

1.  staging area for new roast tests, easier to add more stuff


<a id="orgbf430ea"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org7b41dd5"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point


<a id="org0c9e519"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org2624a90"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org094715d"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org6e1aec4"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orgaa7020e"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org34cbbc2"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org114c881"></a>

### bruce gray on the weekly challenge (?)


<a id="org29df888"></a>

## old topics from last meeting


<a id="org82aedcf"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgb1ca4ab"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgef9ac24"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgaddb58d"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf3b3f53"></a>

### misc intro raku subjects for future toalks

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  Some examples: <https://github.com/doomvox/raku-study/bin/2021feb28>
    
        1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
        
        3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    2.  from my slide for recommended raku talks
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
        
            1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
            
            2.  <https://www.youtube.com/watch?v=elalwvfmYgk>

3.  maybe add slides to stash of introductory raku examples (a new github project?)

    1.  <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org8ef65e3"></a>

## announcments


<a id="org7213601"></a>

### January 30th: next raku study group meeting


<a id="orgece9848"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgd024973"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
