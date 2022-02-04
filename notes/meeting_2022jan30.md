- [meeting notes January 30, 2022](#org71fb0cb)
  - [the raku study group](#org1551adc)
    - [Don't Raku the boat](#orgf13e7ff)
  - [usual links to the meeting material](#org691b5fb)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org7f4b8ee)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org2d71e3e)
  - [topics](#org943f0d8)
    - [darkroast](#org97edc8b)
    - [alan "psychological issues with learning new langs"](#orgf4d7671)
    - [distinguishing nothings](#org81af1b9)
    - [stripping bracketing single-quotes](#orgd351a11)
    - [played around with flattening](#org486a41e)
    - [bruce gray on the weekly challenge (?)](#org9b36731)
  - [topics we didn't get to](#org693baaa)
    - [first programming book discussed:](#org146c692)
    - [a gotcha in writing code to loop over lines from a file](#org54a403e)
    - [sequences and for loops](#org21efc93)
    - [raiph, in passing points out an oddity of "constant"s](#orge0c96c0)
    - [lots of perl5 activity](#org990a800)
  - [old topics from last meeting](#orgb710577)
    - [rob ransbottom (rir) had questions about oop structures where](#org167a8cf)
    - [raku vs python](#orgd7999ad)
    - [getting sets to DWIM](#org4b0f44d)
    - [jonathan worthington, cro-ing](#orgbe12263)
    - [misc intro raku subjects for future toalks](#org50dcc53)
  - [announcments](#org8ed9bf8)
    - [February 13th: next raku study group meeting (most likely)](#org8f0be7d)
    - [February 5-6: FOSDEM Raku talks](#org065dfc5)
    - [June 21-25: tprc: perl/raku conference](#orgff9f67b)


<a id="org71fb0cb"></a>

# meeting notes January 30, 2022


<a id="org1551adc"></a>

## the raku study group


<a id="orgf13e7ff"></a>

### Don't Raku the boat


<a id="org691b5fb"></a>

## usual links to the meeting material


<a id="org7f4b8ee"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org2d71e3e"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org943f0d8"></a>

## topics


<a id="org97edc8b"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orgf4d7671"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org81af1b9"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orgd351a11"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org486a41e"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org9b36731"></a>

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


<a id="org693baaa"></a>

## topics we didn't get to


<a id="org146c692"></a>

### first programming book discussed:

1.  <https://cacm.acm.org/magazines/2011/9/122802-in-praise-of-wilkes-wheeler-and-gill/fulltext>


<a id="org54a403e"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org21efc93"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orge0c96c0"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org990a800"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgb710577"></a>

## old topics from last meeting


<a id="org167a8cf"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgd7999ad"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org4b0f44d"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgbe12263"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org50dcc53"></a>

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


<a id="org8ed9bf8"></a>

## announcments


<a id="org8f0be7d"></a>

### February 13th: next raku study group meeting (most likely)


<a id="org065dfc5"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgff9f67b"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
