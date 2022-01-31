- [meeting notes January 30, 2022](#org4a72139)
  - [the raku study group](#orgdcd601c)
    - [Don't Raku the boat](#orgc9ff9c9)
  - [usual links to the meeting material](#org809016e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org559f69c)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org3df1fd9)
  - [topics](#orga3055fb)
    - [darkroast](#org8b746a6)
    - [alan "psychological issues with learning new langs"](#org61ac4ae)
    - [distinguishing nothings](#org9f1a7d0)
    - [stripping bracketing single-quotes](#orgb7421f7)
    - [played around with flattening](#orgd394f28)
    - [bruce gray on the weekly challenge (?)](#org0819908)
  - [topics we didn't get to](#orgf014f95)
    - [a gotcha in writing code to loop over lines from a file](#org5e40ab2)
    - [sequences and for loops](#orgdb49046)
    - [raiph, in passing points out an oddity of "constant"s](#org7fa8846)
    - [lots of perl5 activity](#orgc3c2b1f)
  - [old topics from last meeting](#org623ac4e)
    - [rob ransbottom (rir) had questions about oop structures where](#org5837e06)
    - [raku vs python](#org327b9d5)
    - [getting sets to DWIM](#org4d99151)
    - [jonathan worthington, cro-ing](#org0c224dc)
    - [misc intro raku subjects for future toalks](#org1521d37)
  - [announcments](#org5ab69ee)
    - [January 30th: next raku study group meeting](#org926795e)
    - [February 5-6: FOSDEM Raku talks](#org902b16b)
    - [June 21-25: tprc: perl/raku conference](#org2bb6db2)


<a id="org4a72139"></a>

# meeting notes January 30, 2022


<a id="orgdcd601c"></a>

## the raku study group


<a id="orgc9ff9c9"></a>

### Don't Raku the boat


<a id="org809016e"></a>

## usual links to the meeting material


<a id="org559f69c"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org3df1fd9"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orga3055fb"></a>

## topics


<a id="org8b746a6"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org61ac4ae"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org9f1a7d0"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orgb7421f7"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgd394f28"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org0819908"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "concrete math" donald knuth

    1.  the math you'd need to follow art of computer programming


<a id="orgf014f95"></a>

## topics we didn't get to


<a id="org5e40ab2"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgdb49046"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org7fa8846"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgc3c2b1f"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org623ac4e"></a>

## old topics from last meeting


<a id="org5837e06"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org327b9d5"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org4d99151"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org0c224dc"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org1521d37"></a>

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


<a id="org5ab69ee"></a>

## announcments


<a id="org926795e"></a>

### January 30th: next raku study group meeting


<a id="org902b16b"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org2bb6db2"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
