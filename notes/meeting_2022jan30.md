- [meeting notes January 30, 2022](#orge80971f)
  - [the raku study group](#orgc5d6f5c)
    - [Don't Raku the boat](#org5ab7393)
  - [usual links to the meeting material](#org65d845a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgb064f5b)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org7bc787d)
  - [topics](#org042fe3f)
    - [darkroast](#orgd683f80)
    - [alan "psychological issues with learning new langs"](#org2b350c4)
    - [distinguishing nothings](#org44abe27)
    - [stripping bracketing single-quotes](#orgd0b8cb6)
    - [played around with flattening](#orgf06f0cf)
    - [bruce gray on the weekly challenge (?)](#orgcf1d4a5)
  - [topics we didn't get to](#org62f6ede)
    - [first programming book discussed:](#org911ccd3)
    - [a gotcha in writing code to loop over lines from a file](#org48d201a)
    - [sequences and for loops](#orgf37bf71)
    - [raiph, in passing points out an oddity of "constant"s](#org19553f5)
    - [lots of perl5 activity](#orgcf3b4b1)
  - [old topics from last meeting](#orgf2abdbd)
    - [rob ransbottom (rir) had questions about oop structures where](#org33cd0dd)
    - [raku vs python](#org2c05562)
    - [getting sets to DWIM](#org90d3020)
    - [jonathan worthington, cro-ing](#orgd9370d0)
    - [misc intro raku subjects for future toalks](#orgeae8900)
  - [announcements](#org77e3c3c)
    - [February 13th: next raku study group meeting (most likely)](#orge4e723d)
    - [February 5-6: FOSDEM Raku talks](#orgfad0168)
    - [June 21-25: tprc: perl/raku conference](#orgf8c8bde)


<a id="orge80971f"></a>

# meeting notes January 30, 2022


<a id="orgc5d6f5c"></a>

## the raku study group


<a id="org5ab7393"></a>

### Don't Raku the boat


<a id="org65d845a"></a>

## usual links to the meeting material


<a id="orgb064f5b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org7bc787d"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org042fe3f"></a>

## topics


<a id="orgd683f80"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org2b350c4"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org44abe27"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orgd0b8cb6"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgf06f0cf"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgcf1d4a5"></a>

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


<a id="org62f6ede"></a>

## topics we didn't get to


<a id="org911ccd3"></a>

### first programming book discussed:

1.  <https://cacm.acm.org/magazines/2011/9/122802-in-praise-of-wilkes-wheeler-and-gill/fulltext>


<a id="org48d201a"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgf37bf71"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org19553f5"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgcf3b4b1"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgf2abdbd"></a>

## old topics from last meeting


<a id="org33cd0dd"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org2c05562"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org90d3020"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd9370d0"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgeae8900"></a>

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


<a id="org77e3c3c"></a>

## announcements


<a id="orge4e723d"></a>

### February 13th: next raku study group meeting (most likely)


<a id="orgfad0168"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgf8c8bde"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
