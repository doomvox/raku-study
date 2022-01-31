- [meeting notes January 30, 2022](#org1cb7d36)
  - [the raku study group](#orgaef4cc6)
    - [Don't Raku the boat](#orgd5dbfb9)
  - [usual links to the meeting material](#org5b22248)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgd868398)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org157cfc0)
  - [topics](#orgc86e377)
    - [darkroast](#orgca917fd)
    - [alan "psychological issues with learning new langs"](#orgcb578c2)
    - [distinguishing nothings](#org33a44fa)
    - [stripping bracketing single-quotes](#org230432f)
    - [played around with flattening](#org5135744)
    - [bruce gray on the weekly challenge (?)](#org14ff810)
  - [topics we didn't get to](#orgcf8e841)
    - [a gotcha in writing code to loop over lines from a file](#org19ff3b3)
    - [sequences and for loops](#orge2bbbde)
    - [raiph, in passing points out an oddity of "constant"s](#orgef7bb79)
    - [lots of perl5 activity](#org81b034d)
  - [old topics from last meeting](#org9d482fb)
    - [rob ransbottom (rir) had questions about oop structures where](#org84c5fc2)
    - [raku vs python](#org3664759)
    - [getting sets to DWIM](#org159e432)
    - [jonathan worthington, cro-ing](#orge494118)
    - [misc intro raku subjects for future toalks](#org2645330)
  - [announcments](#orge35312f)
    - [January 30th: next raku study group meeting](#orgb851f48)
    - [February 5-6: FOSDEM Raku talks](#org7acdae0)
    - [June 21-25: tprc: perl/raku conference](#orgae71a34)


<a id="org1cb7d36"></a>

# meeting notes January 30, 2022


<a id="orgaef4cc6"></a>

## the raku study group


<a id="orgd5dbfb9"></a>

### Don't Raku the boat


<a id="org5b22248"></a>

## usual links to the meeting material


<a id="orgd868398"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org157cfc0"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgc86e377"></a>

## topics


<a id="orgca917fd"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orgcb578c2"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org33a44fa"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org230432f"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org5135744"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org14ff810"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "Concrete Math" by Donald Knuth

    1.  the math you'd need to follow art of computer programming
    
    2.  fusion of continuous and discrete math


<a id="orgcf8e841"></a>

## topics we didn't get to


<a id="org19ff3b3"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orge2bbbde"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orgef7bb79"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org81b034d"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org9d482fb"></a>

## old topics from last meeting


<a id="org84c5fc2"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org3664759"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org159e432"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orge494118"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org2645330"></a>

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


<a id="orge35312f"></a>

## announcments


<a id="orgb851f48"></a>

### January 30th: next raku study group meeting


<a id="org7acdae0"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgae71a34"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
