- [meeting notes January 30, 2022](#org85efc09)
  - [the raku study group](#org5a108f0)
    - [Don't Raku the boat](#orgbe955ca)
  - [usual links to the meeting material](#org5b00ad5)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgd10fd3e)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orged7c778)
  - [topics](#org4f286f2)
    - [darkroast](#orgc5caa1b)
    - [alan "psychological issues with learning new langs"](#org0299fb8)
    - [distinguishing nothings](#orgbb7081d)
    - [stripping bracketing single-quotes](#org371c098)
    - [played around with flattening](#orgec785bd)
    - [bruce gray on the weekly challenge (?)](#orgd86e63f)
  - [topics we didn't get to](#org60a0aef)
    - [a gotcha in writing code to loop over lines from a file](#org6680007)
    - [sequences and for loops](#orgee4a908)
    - [raiph, in passing points out an oddity of "constant"s](#org9681288)
    - [lots of perl5 activity](#orgabdf599)
  - [old topics from last meeting](#org2561127)
    - [rob ransbottom (rir) had questions about oop structures where](#org99ab254)
    - [raku vs python](#orga665149)
    - [getting sets to DWIM](#org779fc07)
    - [jonathan worthington, cro-ing](#org3bc1acf)
    - [misc intro raku subjects for future toalks](#orgbbc0262)
  - [announcments](#org5f5dbb0)
    - [January 30th: next raku study group meeting](#org2ad9ed8)
    - [February 5-6: FOSDEM Raku talks](#org55c4cd2)
    - [June 21-25: tprc: perl/raku conference](#orgaaee8e4)


<a id="org85efc09"></a>

# meeting notes January 30, 2022


<a id="org5a108f0"></a>

## the raku study group


<a id="orgbe955ca"></a>

### Don't Raku the boat


<a id="org5b00ad5"></a>

## usual links to the meeting material


<a id="orgd10fd3e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orged7c778"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org4f286f2"></a>

## topics


<a id="orgc5caa1b"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org0299fb8"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="orgbb7081d"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org371c098"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgec785bd"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgd86e63f"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>

5.  "Concrete Math" by Donald Knuth

    1.  the math you'd need to follow art of computer programming


<a id="org60a0aef"></a>

## topics we didn't get to


<a id="org6680007"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgee4a908"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org9681288"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgabdf599"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org2561127"></a>

## old topics from last meeting


<a id="org99ab254"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orga665149"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org779fc07"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org3bc1acf"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgbbc0262"></a>

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


<a id="org5f5dbb0"></a>

## announcments


<a id="org2ad9ed8"></a>

### January 30th: next raku study group meeting


<a id="org55c4cd2"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgaaee8e4"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
