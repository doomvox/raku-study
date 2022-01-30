- [meeting notes January 30, 2022](#org94de9f6)
  - [the raku study group](#orgd7ff112)
    - [Don't Raku the boat](#org6f780fb)
  - [usual links to the meeting material](#orgf0d242e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org1f69fc3)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgfc0933e)
  - [topics](#org47e1fac)
    - [darkroast](#org65c255f)
    - [alan "psychological issues with learning new langs"](#org9bdb53d)
    - [distinguishing nothings](#org193ec25)
    - [stripping bracketing single-quotes](#org73d872f)
    - [played around with flattening](#org197dd30)
    - [bruce gray on the weekly challenge (?)](#org5cc39e7)
  - [topics we didn't quite get to](#org364cc10)
    - [a gotcha in writing code to loop over lines from a file](#org98806a2)
    - [sequences and for loops](#orgf7bc36b)
    - [raiph, in passing points out an oddity of "constant"s](#orgf0f42b9)
    - [lots of perl5 activity](#orgc27c765)
  - [old topics from last meeting](#org251a9ef)
    - [rob ransbottom (rir) had questions about oop structures where](#org949e623)
    - [raku vs python](#orga3f6baa)
    - [getting sets to DWIM](#org9fcc488)
    - [jonathan worthington, cro-ing](#orgd2db366)
    - [misc intro raku subjects for future toalks](#org39f1bd9)
  - [announcments](#orga41976f)
    - [January 30th: next raku study group meeting](#orgce3c724)
    - [February 5-6: FOSDEM Raku talks](#org0e4ca36)
    - [June 21-25: tprc: perl/raku conference](#org1c22461)


<a id="org94de9f6"></a>

# meeting notes January 30, 2022


<a id="orgd7ff112"></a>

## the raku study group


<a id="org6f780fb"></a>

### Don't Raku the boat


<a id="orgf0d242e"></a>

## usual links to the meeting material


<a id="org1f69fc3"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgfc0933e"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org47e1fac"></a>

## topics


<a id="org65c255f"></a>

### darkroast

1.  staging area for new roast tests, easier to add more stuff


<a id="org9bdb53d"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org193ec25"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point


<a id="org73d872f"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org197dd30"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org5cc39e7"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>


<a id="org364cc10"></a>

## topics we didn't quite get to


<a id="org98806a2"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="orgf7bc36b"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orgf0f42b9"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="orgc27c765"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org251a9ef"></a>

## old topics from last meeting


<a id="org949e623"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="orga3f6baa"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org9fcc488"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd2db366"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org39f1bd9"></a>

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


<a id="orga41976f"></a>

## announcments


<a id="orgce3c724"></a>

### January 30th: next raku study group meeting


<a id="org0e4ca36"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org1c22461"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
