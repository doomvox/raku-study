- [meeting notes January 30, 2022](#org2fca3ff)
  - [the raku study group](#org8f64bc8)
    - [Don't Raku the boat](#orgc8532ad)
  - [usual links to the meeting material](#org93972e9)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org96e8774)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org649fecc)
  - [topics](#orge352d5f)
    - [darkroast](#orgc2861fc)
    - [alan "psychological issues with learning new langs"](#orgf2549aa)
    - [distinguishing nothings](#orgc7e358f)
    - [stripping bracketing single-quotes](#org2258921)
    - [played around with flattening](#orgcf5dd91)
    - [bruce gray on the weekly challenge (?)](#orgce82242)
  - [topics we didn't get to](#org6b25493)
    - [a gotcha in writing code to loop over lines from a file](#orgf7c80b7)
    - [sequences and for loops](#org749e634)
    - [raiph, in passing points out an oddity of "constant"s](#orgaf323b6)
    - [lots of perl5 activity](#org31758bf)
  - [old topics from last meeting](#org3de6617)
    - [rob ransbottom (rir) had questions about oop structures where](#orga406b38)
    - [raku vs python](#orgb2feaae)
    - [getting sets to DWIM](#org84200ed)
    - [jonathan worthington, cro-ing](#orgb55c103)
    - [misc intro raku subjects for future toalks](#org12a9cbb)
  - [announcments](#org74e03b0)
    - [January 30th: next raku study group meeting](#org5f4be6d)
    - [February 5-6: FOSDEM Raku talks](#orgc980339)
    - [June 21-25: tprc: perl/raku conference](#org771173a)


<a id="org2fca3ff"></a>

# meeting notes January 30, 2022


<a id="org8f64bc8"></a>

## the raku study group


<a id="orgc8532ad"></a>

### Don't Raku the boat


<a id="org93972e9"></a>

## usual links to the meeting material


<a id="org96e8774"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org649fecc"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orge352d5f"></a>

## topics


<a id="orgc2861fc"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="orgf2549aa"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="orgc7e358f"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="org2258921"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgcf5dd91"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="orgce82242"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>


<a id="org6b25493"></a>

## topics we didn't get to


<a id="orgf7c80b7"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org749e634"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orgaf323b6"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org31758bf"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org3de6617"></a>

## old topics from last meeting


<a id="orga406b38"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orgb2feaae"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org84200ed"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgb55c103"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org12a9cbb"></a>

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


<a id="org74e03b0"></a>

## announcments


<a id="org5f4be6d"></a>

### January 30th: next raku study group meeting


<a id="orgc980339"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org771173a"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
