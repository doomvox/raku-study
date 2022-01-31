- [meeting notes January 30, 2022](#org3ad9d2a)
  - [the raku study group](#orge83c0ed)
    - [Don't Raku the boat](#org61335d1)
  - [usual links to the meeting material](#org6ee6311)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orge0ecf67)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org496ac0f)
  - [topics](#org226a660)
    - [darkroast](#org1467cc7)
    - [alan "psychological issues with learning new langs"](#orgab60834)
    - [distinguishing nothings](#orgdd72fc6)
    - [stripping bracketing single-quotes](#org956c7aa)
    - [played around with flattening](#org6d0631b)
    - [bruce gray on the weekly challenge (?)](#org31218c8)
  - [topics we didn't get to](#org358f6c8)
    - [a gotcha in writing code to loop over lines from a file](#org3eea0cb)
    - [sequences and for loops](#org522f1f3)
    - [raiph, in passing points out an oddity of "constant"s](#org66e33d2)
    - [lots of perl5 activity](#org1a970ce)
  - [old topics from last meeting](#orgfcc8bd2)
    - [rob ransbottom (rir) had questions about oop structures where](#org227593b)
    - [raku vs python](#org626e1bd)
    - [getting sets to DWIM](#orga22a0cb)
    - [jonathan worthington, cro-ing](#org5d49c57)
    - [misc intro raku subjects for future toalks](#org653e473)
  - [announcments](#orgb05e0e0)
    - [January 30th: next raku study group meeting](#org60ff4c1)
    - [February 5-6: FOSDEM Raku talks](#org5e78043)
    - [June 21-25: tprc: perl/raku conference](#orgd34b2fa)


<a id="org3ad9d2a"></a>

# meeting notes January 30, 2022


<a id="orge83c0ed"></a>

## the raku study group


<a id="org61335d1"></a>

### Don't Raku the boat


<a id="org6ee6311"></a>

## usual links to the meeting material


<a id="orge0ecf67"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org496ac0f"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org226a660"></a>

## topics


<a id="org1467cc7"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orgab60834"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="orgdd72fc6"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org956c7aa"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org6d0631b"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org31218c8"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "concrete math" donald knuth

    1.  the math you'd need to follow art of computer programming


<a id="org358f6c8"></a>

## topics we didn't get to


<a id="org3eea0cb"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org522f1f3"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org66e33d2"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org1a970ce"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgfcc8bd2"></a>

## old topics from last meeting


<a id="org227593b"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org626e1bd"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orga22a0cb"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org5d49c57"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org653e473"></a>

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


<a id="orgb05e0e0"></a>

## announcments


<a id="org60ff4c1"></a>

### January 30th: next raku study group meeting


<a id="org5e78043"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgd34b2fa"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
