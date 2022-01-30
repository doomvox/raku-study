- [meeting notes January 30, 2022](#orgebc4d78)
  - [the raku study group](#org3464059)
    - [Don't Raku the boat](#orgcd21e32)
  - [usual links to the meeting material](#org3db6249)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgb123e12)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgcd455cb)
  - [topics](#org5236b7f)
    - [darkroast](#org0cb9d49)
    - [alan "psychological issues with learning new langs"](#org86df164)
    - [distinguishing nothings](#orgcba699e)
    - [stripping bracketing single-quotes](#org53c40ca)
    - [played around with flattening](#org6bcccdf)
    - [a gotcha in writing code to loop over lines from a file](#orgcbc5129)
    - [sequences and for loops](#org7b36f0e)
    - [raiph, in passing points out an oddity of "constant"s](#org73687d1)
    - [lots of perl5 activity](#org643e729)
    - [bruce gray on the weekly challenge (?)](#org3cfea64)
  - [old topics from last meeting](#org138bafb)
    - [rob ransbottom (rir) had questions about oop structures where](#org640500b)
    - [raku vs python](#org9a5cfcb)
    - [getting sets to DWIM](#org291a645)
    - [jonathan worthington, cro-ing](#org4b145f8)
    - [misc intro raku subjects for future toalks](#orgbe1b59a)
  - [announcments](#org76629a2)
    - [January 30th: next raku study group meeting](#orgf94a2d4)
    - [February 5-6: FOSDEM Raku talks](#org39fe2ef)
    - [June 21-25: tprc: perl/raku conference](#org5652421)


<a id="orgebc4d78"></a>

# meeting notes January 30, 2022


<a id="org3464059"></a>

## the raku study group


<a id="orgcd21e32"></a>

### Don't Raku the boat


<a id="org3db6249"></a>

## usual links to the meeting material


<a id="orgb123e12"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgcd455cb"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org5236b7f"></a>

## topics


<a id="org0cb9d49"></a>

### darkroast

1.  staging area for new roast tests, easier to add more stuff


<a id="org86df164"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="orgcba699e"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point


<a id="org53c40ca"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org6bcccdf"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgcbc5129"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org7b36f0e"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org73687d1"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org643e729"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org3cfea64"></a>

### bruce gray on the weekly challenge (?)

<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>


<a id="org138bafb"></a>

## old topics from last meeting


<a id="org640500b"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org9a5cfcb"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org291a645"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org4b145f8"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgbe1b59a"></a>

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


<a id="org76629a2"></a>

## announcments


<a id="orgf94a2d4"></a>

### January 30th: next raku study group meeting


<a id="org39fe2ef"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org5652421"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
