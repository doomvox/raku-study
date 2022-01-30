- [meeting notes January 30, 2022](#org69b7955)
  - [the raku study group](#org3431010)
    - [Don't Raku the boat](#org9feacb8)
  - [usual links to the meeting material](#org85fa1aa)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org2125d96)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org594f690)
  - [topics](#orgbd790f2)
    - [darkroast](#org6f97c3e)
    - [alan "psychological issues with learning new langs"](#org88e4051)
    - [distinguishing nothings](#orga97e0f0)
    - [stripping bracketing single-quotes](#org6195ced)
    - [played around with flattening](#orgf0010d2)
    - [a gotcha in writing code to loop over lines from a file](#org0ab6885)
    - [sequences and for loops](#org90187a5)
    - [raiph, in passing points out an oddity of "constant"s](#org1ccd4a6)
    - [lots of perl5 activity](#org977d744)
    - [bruce gray on the weekly challenge (?)](#org10b0e6a)
  - [old topics from last meeting](#org66931f3)
    - [rob ransbottom (rir) had questions about oop structures where](#orgbdf70c5)
    - [raku vs python](#org032870f)
    - [getting sets to DWIM](#orgf20d664)
    - [jonathan worthington, cro-ing](#org7b296c7)
    - [misc intro raku subjects for future toalks](#orgef72a6f)
  - [announcments](#orgd6e6f93)
    - [January 30th: next raku study group meeting](#org1d1322f)
    - [February 5-6: FOSDEM Raku talks](#orgea8ecec)
    - [June 21-25: tprc: perl/raku conference](#org9b8bbe0)


<a id="org69b7955"></a>

# meeting notes January 30, 2022


<a id="org3431010"></a>

## the raku study group


<a id="org9feacb8"></a>

### Don't Raku the boat


<a id="org85fa1aa"></a>

## usual links to the meeting material


<a id="org2125d96"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org594f690"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgbd790f2"></a>

## topics


<a id="org6f97c3e"></a>

### darkroast

1.  staging area for new roast tests, easier to add more stuff


<a id="org88e4051"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="orga97e0f0"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point


<a id="org6195ced"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="orgf0010d2"></a>

### played around with flattening

1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org0ab6885"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org90187a5"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="org1ccd4a6"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org977d744"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="org10b0e6a"></a>

### bruce gray on the weekly challenge (?)


<a id="org66931f3"></a>

## old topics from last meeting


<a id="orgbdf70c5"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org032870f"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgf20d664"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org7b296c7"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgef72a6f"></a>

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


<a id="orgd6e6f93"></a>

## announcments


<a id="org1d1322f"></a>

### January 30th: next raku study group meeting


<a id="orgea8ecec"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org9b8bbe0"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
