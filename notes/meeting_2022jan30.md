- [meeting notes January 30, 2022](#org5e73c9e)
  - [the raku study group](#orgdd42e67)
    - [Don't Raku the boat](#orgd5b425a)
  - [usual links to the meeting material](#orgf178c2d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org87dc1d6)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022jan30>](#org554b906)
  - [topics](#org0fd156a)
    - [darkroast](#org4029229)
    - [alan "psychological issues with learning new langs"](#orgbd4b7aa)
    - [distinguishing nothings](#org10beaa7)
    - [stripping bracketing single-quotes](#org4524480)
    - [played around with flattening](#orgcb256ea)
    - [bruce gray on the weekly challenge (?)](#orgaebfe7e)
  - [topics we didn't get to](#orga771d8a)
    - [first programming book discussed:](#org6a84d2c)
    - [a gotcha in writing code to loop over lines from a file](#orge1b1265)
    - [sequences and for loops](#orgd48895a)
    - [raiph, in passing points out an oddity of "constant"s](#orgde34555)
    - [lots of perl5 activity](#orgd5c030d)
  - [old topics from last meeting](#org10b2756)
    - [rob ransbottom (rir) had questions about oop structures where](#org5a18409)
    - [raku vs python](#orgf926294)
    - [getting sets to DWIM](#org819cac4)
    - [jonathan worthington, cro-ing](#orgee29893)
    - [misc intro raku subjects for future toalks](#org2986d38)
  - [announcements](#org86fcdab)
    - [February 13th: next raku study group meeting (most likely)](#org420f98d)
    - [February 5-6: FOSDEM Raku talks](#org953d340)
    - [June 21-25: tprc: perl/raku conference](#org8988b4f)


<a id="org5e73c9e"></a>

# meeting notes January 30, 2022


<a id="orgdd42e67"></a>

## the raku study group


<a id="orgd5b425a"></a>

### Don't Raku the boat


<a id="orgf178c2d"></a>

## usual links to the meeting material


<a id="org87dc1d6"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org554b906"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022jan30>


<a id="org0fd156a"></a>

## topics


<a id="org4029229"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orgbd4b7aa"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org10beaa7"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org4524480"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgcb256ea"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgaebfe7e"></a>

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


<a id="orga771d8a"></a>

## topics we didn't get to


<a id="org6a84d2c"></a>

### first programming book discussed:

1.  <https://cacm.acm.org/magazines/2011/9/122802-in-praise-of-wilkes-wheeler-and-gill/fulltext>


<a id="orge1b1265"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgd48895a"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orgde34555"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgd5c030d"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org10b2756"></a>

## old topics from last meeting


<a id="org5a18409"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgf926294"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org819cac4"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgee29893"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org2986d38"></a>

### misc intro raku subjects for future toalks

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  Some examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021feb28>
    
        1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
        
        3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    2.  from my slide for recommended raku talks
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
        
            1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
            
            2.  <https://www.youtube.com/watch?v=elalwvfmYgk>

3.  maybe add slides to stash of introductory raku examples (a new github project?)

    1.  <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org86fcdab"></a>

## announcements


<a id="org420f98d"></a>

### February 13th: next raku study group meeting (most likely)


<a id="org953d340"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org8988b4f"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
