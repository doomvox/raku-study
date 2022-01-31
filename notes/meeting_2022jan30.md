- [meeting notes January 30, 2022](#org7c9a4a1)
  - [the raku study group](#orga137687)
    - [Don't Raku the boat](#org8cb00a0)
  - [usual links to the meeting material](#org4849d4c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgcc203be)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org9e1c46f)
  - [topics](#orgc177e97)
    - [darkroast](#org0d250a9)
    - [alan "psychological issues with learning new langs"](#org6680327)
    - [distinguishing nothings](#org9ede456)
    - [stripping bracketing single-quotes](#org3781fef)
    - [played around with flattening](#orgfb5abff)
    - [bruce gray on the weekly challenge (?)](#orgbdfb92f)
  - [topics we didn't get to](#org054bbb8)
    - [a gotcha in writing code to loop over lines from a file](#orgcebb305)
    - [sequences and for loops](#orgdea03aa)
    - [raiph, in passing points out an oddity of "constant"s](#org57d80c9)
    - [lots of perl5 activity](#org05e4449)
  - [old topics from last meeting](#orgd8ca6d2)
    - [rob ransbottom (rir) had questions about oop structures where](#org6913dd0)
    - [raku vs python](#orgc162038)
    - [getting sets to DWIM](#org471e3dc)
    - [jonathan worthington, cro-ing](#org71ed6e0)
    - [misc intro raku subjects for future toalks](#orgc133cb8)
  - [announcments](#orgf63c6e2)
    - [January 30th: next raku study group meeting](#orgc050e57)
    - [February 5-6: FOSDEM Raku talks](#org7c10c1c)
    - [June 21-25: tprc: perl/raku conference](#org26b05af)


<a id="org7c9a4a1"></a>

# meeting notes January 30, 2022


<a id="orga137687"></a>

## the raku study group


<a id="org8cb00a0"></a>

### Don't Raku the boat


<a id="org4849d4c"></a>

## usual links to the meeting material


<a id="orgcc203be"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org9e1c46f"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgc177e97"></a>

## topics


<a id="org0d250a9"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org6680327"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org9ede456"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org3781fef"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgfb5abff"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgbdfb92f"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "Concrete Math" by Donald Knuth

    1.  the math you'd need to follow art of computer programming
    
    2.  bg: fusion of continuous and discrete math


<a id="org054bbb8"></a>

## topics we didn't get to


<a id="orgcebb305"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgdea03aa"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org57d80c9"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org05e4449"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgd8ca6d2"></a>

## old topics from last meeting


<a id="org6913dd0"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgc162038"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org471e3dc"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org71ed6e0"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgc133cb8"></a>

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


<a id="orgf63c6e2"></a>

## announcments


<a id="orgc050e57"></a>

### January 30th: next raku study group meeting


<a id="org7c10c1c"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org26b05af"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
