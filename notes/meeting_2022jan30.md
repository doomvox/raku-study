- [meeting notes January 30, 2022](#org3942c90)
  - [the raku study group](#orgdf26c66)
    - [Don't Raku the boat](#org680e63f)
  - [usual links to the meeting material](#org9074e79)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org7f44687)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org6534a40)
  - [topics](#org25946b6)
    - [darkroast](#orgb56cf23)
    - [alan "psychological issues with learning new langs"](#orge882825)
    - [distinguishing nothings](#org9cf5309)
    - [stripping bracketing single-quotes](#org84cf66e)
    - [played around with flattening](#org2261403)
    - [bruce gray on the weekly challenge (?)](#org29a3c01)
  - [topics we didn't get to](#org36de4c5)
    - [a gotcha in writing code to loop over lines from a file](#org99306be)
    - [sequences and for loops](#orgf36fd4d)
    - [raiph, in passing points out an oddity of "constant"s](#orgb1fca53)
    - [lots of perl5 activity](#org6c1d193)
  - [old topics from last meeting](#orgddb29d2)
    - [rob ransbottom (rir) had questions about oop structures where](#org7860e38)
    - [raku vs python](#org1f66241)
    - [getting sets to DWIM](#orgd041748)
    - [jonathan worthington, cro-ing](#orgea9b167)
    - [misc intro raku subjects for future toalks](#orga0eea8b)
  - [announcments](#org0207474)
    - [January 30th: next raku study group meeting](#org54bc7b0)
    - [February 5-6: FOSDEM Raku talks](#org4a27c98)
    - [June 21-25: tprc: perl/raku conference](#orgb41e949)


<a id="org3942c90"></a>

# meeting notes January 30, 2022


<a id="orgdf26c66"></a>

## the raku study group


<a id="org680e63f"></a>

### Don't Raku the boat


<a id="org9074e79"></a>

## usual links to the meeting material


<a id="org7f44687"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org6534a40"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org25946b6"></a>

## topics


<a id="orgb56cf23"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orge882825"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org9cf5309"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org84cf66e"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org2261403"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org29a3c01"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "concrete math" donald knuth

    1.  the math you'd need to follow art of computer programming


<a id="org36de4c5"></a>

## topics we didn't get to


<a id="org99306be"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgf36fd4d"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orgb1fca53"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org6c1d193"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgddb29d2"></a>

## old topics from last meeting


<a id="org7860e38"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org1f66241"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgd041748"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgea9b167"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orga0eea8b"></a>

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


<a id="org0207474"></a>

## announcments


<a id="org54bc7b0"></a>

### January 30th: next raku study group meeting


<a id="org4a27c98"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgb41e949"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
