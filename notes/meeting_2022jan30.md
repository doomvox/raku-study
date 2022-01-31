- [meeting notes January 30, 2022](#org935fbc3)
  - [the raku study group](#orga0edf37)
    - [Don't Raku the boat](#org56b8893)
  - [usual links to the meeting material](#org471222d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org16abe2c)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgebbb84b)
  - [topics](#org926e250)
    - [darkroast](#orgd508da2)
    - [alan "psychological issues with learning new langs"](#org17d640f)
    - [distinguishing nothings](#org329a30b)
    - [stripping bracketing single-quotes](#orgeedb0a6)
    - [played around with flattening](#orgd2830b9)
    - [bruce gray on the weekly challenge (?)](#org065b82a)
  - [topics we didn't get to](#org1d9a0d5)
    - [a gotcha in writing code to loop over lines from a file](#org1fdafcc)
    - [sequences and for loops](#org3ac19e4)
    - [raiph, in passing points out an oddity of "constant"s](#org0b8d127)
    - [lots of perl5 activity](#orga019e0d)
  - [old topics from last meeting](#org24b173d)
    - [rob ransbottom (rir) had questions about oop structures where](#orga124002)
    - [raku vs python](#org6fdbd96)
    - [getting sets to DWIM](#org05f1615)
    - [jonathan worthington, cro-ing](#orgf99ecc9)
    - [misc intro raku subjects for future toalks](#org361f0cd)
  - [announcments](#orgae5cf75)
    - [January 30th: next raku study group meeting](#org039a733)
    - [February 5-6: FOSDEM Raku talks](#org5678721)
    - [June 21-25: tprc: perl/raku conference](#orgf07b802)


<a id="org935fbc3"></a>

# meeting notes January 30, 2022


<a id="orga0edf37"></a>

## the raku study group


<a id="org56b8893"></a>

### Don't Raku the boat


<a id="org471222d"></a>

## usual links to the meeting material


<a id="org16abe2c"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgebbb84b"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org926e250"></a>

## topics


<a id="orgd508da2"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org17d640f"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org329a30b"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orgeedb0a6"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgd2830b9"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org065b82a"></a>

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


<a id="org1d9a0d5"></a>

## topics we didn't get to


<a id="org1fdafcc"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org3ac19e4"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org0b8d127"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orga019e0d"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org24b173d"></a>

## old topics from last meeting


<a id="orga124002"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org6fdbd96"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org05f1615"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgf99ecc9"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org361f0cd"></a>

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


<a id="orgae5cf75"></a>

## announcments


<a id="org039a733"></a>

### January 30th: next raku study group meeting


<a id="org5678721"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgf07b802"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
