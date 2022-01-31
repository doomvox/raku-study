- [meeting notes January 30, 2022](#org9e18adc)
  - [the raku study group](#org17f8f5b)
    - [Don't Raku the boat](#org1dfeb68)
  - [usual links to the meeting material](#org705bd1c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org415bc2a)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org1e29e78)
  - [topics](#org873bc2e)
    - [darkroast](#orgcf3bcef)
    - [alan "psychological issues with learning new langs"](#orge582f34)
    - [distinguishing nothings](#org009261a)
    - [stripping bracketing single-quotes](#orgbbc3dd7)
    - [played around with flattening](#org9892fee)
    - [bruce gray on the weekly challenge (?)](#org437f6c5)
  - [topics we didn't get to](#org964a0c5)
    - [a gotcha in writing code to loop over lines from a file](#org52c31e0)
    - [sequences and for loops](#org16b9a24)
    - [raiph, in passing points out an oddity of "constant"s](#org82d360a)
    - [lots of perl5 activity](#org49d5008)
  - [old topics from last meeting](#orgfeac779)
    - [rob ransbottom (rir) had questions about oop structures where](#org7859ff1)
    - [raku vs python](#orgf5f3a65)
    - [getting sets to DWIM](#orgde1a6ae)
    - [jonathan worthington, cro-ing](#org1372024)
    - [misc intro raku subjects for future toalks](#org35a708b)
  - [announcments](#org9b5c3fe)
    - [January 30th: next raku study group meeting](#org8b4ced3)
    - [February 5-6: FOSDEM Raku talks](#orgbe159c9)
    - [June 21-25: tprc: perl/raku conference](#orgc1b5e32)


<a id="org9e18adc"></a>

# meeting notes January 30, 2022


<a id="org17f8f5b"></a>

## the raku study group


<a id="org1dfeb68"></a>

### Don't Raku the boat


<a id="org705bd1c"></a>

## usual links to the meeting material


<a id="org415bc2a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org1e29e78"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org873bc2e"></a>

## topics


<a id="orgcf3bcef"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orge582f34"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org009261a"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orgbbc3dd7"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org9892fee"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org437f6c5"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "concrete math" donald knuth

    1.  the math you'd need to follow art of computer programming


<a id="org964a0c5"></a>

## topics we didn't get to


<a id="org52c31e0"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org16b9a24"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org82d360a"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org49d5008"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgfeac779"></a>

## old topics from last meeting


<a id="org7859ff1"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgf5f3a65"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgde1a6ae"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org1372024"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org35a708b"></a>

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


<a id="org9b5c3fe"></a>

## announcments


<a id="org8b4ced3"></a>

### January 30th: next raku study group meeting


<a id="orgbe159c9"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgc1b5e32"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
