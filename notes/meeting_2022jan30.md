- [meeting notes January 30, 2022](#orgb49ea05)
  - [the raku study group](#orgc11470f)
    - [Don't Raku the boat](#org16e4900)
  - [usual links to the meeting material](#orga1d443d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgf43fb9a)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgd12f0f3)
  - [topics](#orgf81c52c)
    - [darkroast](#orgcdb7823)
    - [alan "psychological issues with learning new langs"](#orgc8f4896)
    - [distinguishing nothings](#orgf51c55f)
    - [stripping bracketing single-quotes](#org1af195a)
    - [played around with flattening](#org149d522)
    - [bruce gray on the weekly challenge (?)](#orgb8859f0)
  - [topics we didn't get to](#org1f1ae1b)
    - [first programming book discussed:](#orgdd40760)
    - [a gotcha in writing code to loop over lines from a file](#org7fcc618)
    - [sequences and for loops](#org5a25d28)
    - [raiph, in passing points out an oddity of "constant"s](#org119367b)
    - [lots of perl5 activity](#org63a97c4)
  - [old topics from last meeting](#org4d13b8d)
    - [rob ransbottom (rir) had questions about oop structures where](#org1794ab0)
    - [raku vs python](#org5634f6f)
    - [getting sets to DWIM](#org3461669)
    - [jonathan worthington, cro-ing](#org3b9ff37)
    - [misc intro raku subjects for future toalks](#orgbc16739)
  - [announcments](#org28fdde1)
    - [January 30th: next raku study group meeting](#orge17d621)
    - [February 5-6: FOSDEM Raku talks](#orgb4eb84b)
    - [June 21-25: tprc: perl/raku conference](#org2f5503d)


<a id="orgb49ea05"></a>

# meeting notes January 30, 2022


<a id="orgc11470f"></a>

## the raku study group


<a id="org16e4900"></a>

### Don't Raku the boat


<a id="orga1d443d"></a>

## usual links to the meeting material


<a id="orgf43fb9a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgd12f0f3"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgf81c52c"></a>

## topics


<a id="orgcdb7823"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orgc8f4896"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="orgf51c55f"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org1af195a"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org149d522"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgb8859f0"></a>

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


<a id="org1f1ae1b"></a>

## topics we didn't get to


<a id="orgdd40760"></a>

### first programming book discussed:

1.  <https://cacm.acm.org/magazines/2011/9/122802-in-praise-of-wilkes-wheeler-and-gill/fulltext>


<a id="org7fcc618"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org5a25d28"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org119367b"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org63a97c4"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org4d13b8d"></a>

## old topics from last meeting


<a id="org1794ab0"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org5634f6f"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org3461669"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org3b9ff37"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgbc16739"></a>

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


<a id="org28fdde1"></a>

## announcments


<a id="orge17d621"></a>

### January 30th: next raku study group meeting


<a id="orgb4eb84b"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org2f5503d"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
