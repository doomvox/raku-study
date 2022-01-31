- [meeting notes January 30, 2022](#orgef6644a)
  - [the raku study group](#orgdd499e9)
    - [Don't Raku the boat](#org4e94bab)
  - [usual links to the meeting material](#orgf9c47a3)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgc6692ac)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org157d38a)
  - [topics](#orgab2eaec)
    - [darkroast](#orgfdf8413)
    - [alan "psychological issues with learning new langs"](#org1aebfbc)
    - [distinguishing nothings](#org0b2707e)
    - [stripping bracketing single-quotes](#orgc0dc871)
    - [played around with flattening](#org7c1a73a)
    - [bruce gray on the weekly challenge (?)](#org6cb35f0)
  - [topics we didn't get to](#org5267d68)
    - [a gotcha in writing code to loop over lines from a file](#org9efecce)
    - [sequences and for loops](#org3b3019a)
    - [raiph, in passing points out an oddity of "constant"s](#orga0b882e)
    - [lots of perl5 activity](#org7853d13)
  - [old topics from last meeting](#orgbb255b9)
    - [rob ransbottom (rir) had questions about oop structures where](#org15d9709)
    - [raku vs python](#org89c84d2)
    - [getting sets to DWIM](#org7df4189)
    - [jonathan worthington, cro-ing](#orgabb6e80)
    - [misc intro raku subjects for future toalks](#org6965396)
  - [announcments](#org08da1d3)
    - [January 30th: next raku study group meeting](#orga81808c)
    - [February 5-6: FOSDEM Raku talks](#org9c7478f)
    - [June 21-25: tprc: perl/raku conference](#orgd74e8bc)


<a id="orgef6644a"></a>

# meeting notes January 30, 2022


<a id="orgdd499e9"></a>

## the raku study group


<a id="org4e94bab"></a>

### Don't Raku the boat


<a id="orgf9c47a3"></a>

## usual links to the meeting material


<a id="orgc6692ac"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org157d38a"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgab2eaec"></a>

## topics


<a id="orgfdf8413"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast


<a id="org1aebfbc"></a>

### alan "psychological issues with learning new langs"

1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>


<a id="org0b2707e"></a>

### distinguishing nothings

1.  /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-distinguishing<sub>nothings</sub>-subsig<sub>feature</sub><sub>missing</sub>

2.  H. Meijin Brand raises an interesting, but not critical point:

    1.  can you tell if a sub was passed a value that just happens to match the default?


<a id="orgc0dc871"></a>

### stripping bracketing single-quotes

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/01/msg10421.html>


<a id="org7c1a73a"></a>

### played around with flattening

1.  the page to read:

    1.  <https://docs.raku.org/language/containers#Flattening,_items_and_containers>


<a id="org6cb35f0"></a>

### bruce gray on the weekly challenge (?)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-149/>

2.  <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-149/challenge-149/bruce-gray>

3.  blog post (still in progress)

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-149-limited-fibs-and-bases-of-unusual-size.html>

4.  blog post about the last challenge

    1.  <http://blogs.perl.org/users/bruce_gray/2022/01/twc-148-numbrs-and-cubic-cards.html>


<a id="org5267d68"></a>

## topics we didn't get to


<a id="org9efecce"></a>

### a gotcha in writing code to loop over lines from a file

1.  <https://www.reddit.com/r/rakulang/comments/sb48fy/for_iolines_incredibly_slow/>


<a id="org3b3019a"></a>

### sequences and for loops

1.  <https://www.reddit.com/r/rakulang/comments/sbsrjm/sequences_and_for_loops/>


<a id="orga0b882e"></a>

### raiph, in passing points out an oddity of "constant"s

1.  <https://www.reddit.com/r/rakulang/comments/sd6ls3/rfc_foo_42/hucauoe/>


<a id="org7853d13"></a>

### lots of perl5 activity

1.  porters list

2.  leonerd

    1.  <https://leonerds-code.blogspot.com/2022/01/perl-in-2022-yearly-update.html>

3.  typed pipes

    1.  <https://vickiboykis.com/2021/11/07/the-programmers-brain-in-the-lands-of-exploration-and-production/>
    
    2.  issue raised by the parrot raiser


<a id="orgbb255b9"></a>

## old topics from last meeting


<a id="org15d9709"></a>

### rob ransbottom (rir) had questions about oop structures where

1.  parents need to know about children

    1.  the role needs to know about parent
    
        1.  the role does the exporting?
        
        2.  bruce gray recommends parameterized roles
    
    2.  factory pattern or abstract factory pattern


<a id="org89c84d2"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org7df4189"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgabb6e80"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org6965396"></a>

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


<a id="org08da1d3"></a>

## announcments


<a id="orga81808c"></a>

### January 30th: next raku study group meeting


<a id="org9c7478f"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgd74e8bc"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
