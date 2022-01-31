- [meeting notes January 30, 2022](#orgea2a3a1)
  - [the raku study group](#org82aeee1)
    - [Don't Raku the boat](#orgf9c89e5)
  - [usual links to the meeting material](#orgf1ea69b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgd7192e2)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgfa8f884)
  - [topics](#org298c34f)
    - [darkroast](#org39c4efd)
    - [alan "psychological issues with learning new langs"](#org8276844)
    - [distinguishing nothings](#org21320dc)
    - [stripping bracketing single-quotes](#org41644b2)
    - [played around with flattening](#org774d4b6)
    - [bruce gray on the weekly challenge (?)](#orgba58752)
  - [topics we didn't get to](#org969cbb1)
    - [first programming book discussed:](#orgaa06789)
    - [a gotcha in writing code to loop over lines from a file](#org199b40c)
    - [sequences and for loops](#orgfec9e83)
    - [raiph, in passing points out an oddity of "constant"s](#org8ef2915)
    - [lots of perl5 activity](#org3cebd5d)
  - [old topics from last meeting](#org12fd8ad)
    - [rob ransbottom (rir) had questions about oop structures where](#orgcf20b59)
    - [raku vs python](#org90f4dca)
    - [getting sets to DWIM](#org51fb524)
    - [jonathan worthington, cro-ing](#org45f06df)
    - [misc intro raku subjects for future toalks](#orgec8eb6f)
  - [announcments](#org3397c59)
    - [February 13th: next raku study group meeting (most likely)](#org3537d1e)
    - [February 5-6: FOSDEM Raku talks](#org75d2e30)
    - [June 21-25: tprc: perl/raku conference](#org3863c26)


<a id="orgea2a3a1"></a>

# meeting notes January 30, 2022


<a id="org82aeee1"></a>

## the raku study group


<a id="orgf9c89e5"></a>

### Don't Raku the boat


<a id="orgf1ea69b"></a>

## usual links to the meeting material


<a id="orgd7192e2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgfa8f884"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org298c34f"></a>

## topics


<a id="org39c4efd"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org8276844"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org21320dc"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org41644b2"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org774d4b6"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgba58752"></a>

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


<a id="org969cbb1"></a>

## topics we didn't get to


<a id="orgaa06789"></a>

### first programming book discussed:

1.  <https://cacm.acm.org/magazines/2011/9/122802-in-praise-of-wilkes-wheeler-and-gill/fulltext>


<a id="org199b40c"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgfec9e83"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org8ef2915"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org3cebd5d"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org12fd8ad"></a>

## old topics from last meeting


<a id="orgcf20b59"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org90f4dca"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org51fb524"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org45f06df"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgec8eb6f"></a>

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


<a id="org3397c59"></a>

## announcments


<a id="org3537d1e"></a>

### February 13th: next raku study group meeting (most likely)


<a id="org75d2e30"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org3863c26"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
