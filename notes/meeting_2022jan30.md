- [meeting notes January 30, 2022](#org6a6fd69)
  - [the raku study group](#orga88e0c2)
    - [Don't Raku the boat](#orgc28752b)
  - [usual links to the meeting material](#orgaf8d41b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org2818d36)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org83b7aa3)
  - [topics](#orgf1afd68)
    - [darkroast](#org195ead8)
    - [alan "psychological issues with learning new langs"](#orga8bcfdd)
    - [distinguishing nothings](#org6b98f02)
    - [stripping bracketing single-quotes](#orgbb7dea7)
    - [played around with flattening](#orgccc496d)
    - [bruce gray on the weekly challenge (?)](#org21f9889)
  - [topics we didn't quite get to](#org3e1ee91)
    - [a gotcha in writing code to loop over lines from a file](#org289a047)
    - [sequences and for loops](#org0bc45f7)
    - [raiph, in passing points out an oddity of "constant"s](#org9b91906)
    - [lots of perl5 activity](#orgcb795f8)
  - [old topics from last meeting](#org7c4693e)
    - [rob ransbottom (rir) had questions about oop structures where](#org88081c3)
    - [raku vs python](#orge9d3bbe)
    - [getting sets to DWIM](#org5c378f5)
    - [jonathan worthington, cro-ing](#org0fd13ed)
    - [misc intro raku subjects for future toalks](#orgb2bce23)
  - [announcments](#org7a49c26)
    - [January 30th: next raku study group meeting](#org88bd7da)
    - [February 5-6: FOSDEM Raku talks](#orge7c6eb3)
    - [June 21-25: tprc: perl/raku conference](#orgdd27d9e)


<a id="org6a6fd69"></a>

# meeting notes January 30, 2022


<a id="orga88e0c2"></a>

## the raku study group


<a id="orgc28752b"></a>

### Don't Raku the boat


<a id="orgaf8d41b"></a>

## usual links to the meeting material


<a id="org2818d36"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org83b7aa3"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgf1afd68"></a>

## topics


<a id="org195ead8"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orga8bcfdd"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org6b98f02"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point


<a id="orgbb7dea7"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgccc496d"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org21f9889"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>


<a id="org3e1ee91"></a>

## topics we didn't quite get to


<a id="org289a047"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org0bc45f7"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org9b91906"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgcb795f8"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org7c4693e"></a>

## old topics from last meeting


<a id="org88081c3"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orge9d3bbe"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org5c378f5"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org0fd13ed"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgb2bce23"></a>

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


<a id="org7a49c26"></a>

## announcments


<a id="org88bd7da"></a>

### January 30th: next raku study group meeting


<a id="orge7c6eb3"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgdd27d9e"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
