- [meeting notes January 30, 2022](#orgf631339)
  - [the raku study group](#org58bd1ba)
    - [Don't Raku the boat](#org7fbc78b)
  - [usual links to the meeting material](#orgebe1bb1)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org4a0270e)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org025f2ed)
  - [topics](#orgd1bfe7a)
    - [darkroast](#org06c2e48)
    - [alan "psychological issues with learning new langs"](#org2762811)
    - [distinguishing nothings](#org41dd1bf)
    - [stripping bracketing single-quotes](#orgb641c0f)
    - [played around with flattening](#orge2d1409)
    - [a gotcha in writing code to loop over lines from a file](#org60e7b84)
    - [sequences and for loops](#orgc2f4e67)
    - [raiph, in passing points out an oddity of "constant"s](#orga320e2b)
    - [lots of perl5 activity](#orgbec3076)
    - [bruce gray on the weekly challenge (?)](#org7993094)
  - [old topics from last meeting](#org0f61904)
    - [rob ransbottom (rir) had questions about oop structures where](#org0c91d33)
    - [raku vs python](#org9aa88a9)
    - [getting sets to DWIM](#orgd3bb769)
    - [jonathan worthington, cro-ing](#orgd38080d)
    - [misc intro raku subjects for future toalks](#orgb36fc26)
  - [announcments](#org3d26867)
    - [January 30th: next raku study group meeting](#orgaf1ee59)
    - [February 5-6: FOSDEM Raku talks](#org1c759fc)
    - [June 21-25: tprc: perl/raku conference](#org169dc68)


<a id="orgf631339"></a>

# meeting notes January 30, 2022


<a id="org58bd1ba"></a>

## the raku study group


<a id="org7fbc78b"></a>

### Don't Raku the boat


<a id="orgebe1bb1"></a>

## usual links to the meeting material


<a id="org4a0270e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org025f2ed"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgd1bfe7a"></a>

## topics


<a id="org06c2e48"></a>

### darkroast

1.  staging area for new roast tests, easier to add more stuff


<a id="org2762811"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org41dd1bf"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point


<a id="orgb641c0f"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orge2d1409"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org60e7b84"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgc2f4e67"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orga320e2b"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgbec3076"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org7993094"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>


<a id="org0f61904"></a>

## old topics from last meeting


<a id="org0c91d33"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org9aa88a9"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgd3bb769"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd38080d"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgb36fc26"></a>

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


<a id="org3d26867"></a>

## announcments


<a id="orgaf1ee59"></a>

### January 30th: next raku study group meeting


<a id="org1c759fc"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org169dc68"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
