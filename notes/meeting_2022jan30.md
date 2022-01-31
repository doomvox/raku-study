- [meeting notes January 30, 2022](#orgc29b837)
  - [the raku study group](#orgc968676)
    - [Don't Raku the boat](#org2c9241a)
  - [usual links to the meeting material](#orgabe10ed)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgac8619d)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org1e0ef37)
  - [topics](#org5f5b1e0)
    - [darkroast](#orgb875c4d)
    - [alan "psychological issues with learning new langs"](#org3abc15f)
    - [distinguishing nothings](#org8dd3e88)
    - [stripping bracketing single-quotes](#orga76a76e)
    - [played around with flattening](#org2228ceb)
    - [bruce gray on the weekly challenge (?)](#org6f3cbae)
  - [topics we didn't get to](#org42a1fab)
    - [a gotcha in writing code to loop over lines from a file](#org6ae2f20)
    - [sequences and for loops](#org946adec)
    - [raiph, in passing points out an oddity of "constant"s](#org522be1c)
    - [lots of perl5 activity](#org76fe775)
  - [old topics from last meeting](#orgc588dec)
    - [rob ransbottom (rir) had questions about oop structures where](#org961fd9e)
    - [raku vs python](#orgcca339c)
    - [getting sets to DWIM](#org3281c02)
    - [jonathan worthington, cro-ing](#org2216f2c)
    - [misc intro raku subjects for future toalks](#orgf7b78ad)
  - [announcments](#org43dce19)
    - [January 30th: next raku study group meeting](#org58fa38f)
    - [February 5-6: FOSDEM Raku talks](#orge955fde)
    - [June 21-25: tprc: perl/raku conference](#orga02d8d0)


<a id="orgc29b837"></a>

# meeting notes January 30, 2022


<a id="orgc968676"></a>

## the raku study group


<a id="org2c9241a"></a>

### Don't Raku the boat


<a id="orgabe10ed"></a>

## usual links to the meeting material


<a id="orgac8619d"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org1e0ef37"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org5f5b1e0"></a>

## topics


<a id="orgb875c4d"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org3abc15f"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org8dd3e88"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orga76a76e"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org2228ceb"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org6f3cbae"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  blog post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  blog post about the last challenge

    <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>


<a id="org42a1fab"></a>

## topics we didn't get to


<a id="org6ae2f20"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org946adec"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org522be1c"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org76fe775"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgc588dec"></a>

## old topics from last meeting


<a id="org961fd9e"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgcca339c"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org3281c02"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org2216f2c"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf7b78ad"></a>

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


<a id="org43dce19"></a>

## announcments


<a id="org58fa38f"></a>

### January 30th: next raku study group meeting


<a id="orge955fde"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orga02d8d0"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
