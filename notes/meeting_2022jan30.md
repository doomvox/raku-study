- [meeting notes January 30, 2022](#org4a2c4d0)
  - [the raku study group](#org9782117)
    - [Don't Raku the boat](#org9e1833b)
  - [usual links to the meeting material](#org0d5358a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org9d3624e)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgf767d42)
  - [bruce gray on the weekly challenge](#orgef2bf3c)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org0bdfc20)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org453450a)
    - [alternate approach to 2:](#orgcfe1613)
  - [rob ransbottom dropped by: rir](#orgf45b7c5)
    - [playing with](#org3104c8e)
    - [sather](#orgb54e1a5)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orge13814f)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org76af4dc)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org3ce5a24)
  - [topicettes, perhaps](#orgff71a4a)
    - [raku vs python](#org8ba36be)
    - [getting sets to DWIM](#org2f73dcd)
    - [jonathan worthington, cro-ing](#orgaacd416)
  - [talking about how the sv perl talk went:](#orgc5caa4c)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgad5b213)
    - [ideas for other things to cover:](#org0920a02)
  - [announcments](#org7bf5a3c)
    - [January 30th: next raku study group meeting](#orgb30c8c7)
    - [February 5-6: FOSDEM Raku talks](#orgae938fa)
    - [June 21-25: tprc: perl/raku conference](#orgdac39a7)


<a id="org4a2c4d0"></a>

# meeting notes January 30, 2022


<a id="org9782117"></a>

## the raku study group


<a id="org9e1833b"></a>

### Don't Raku the boat


<a id="org0d5358a"></a>

## usual links to the meeting material


<a id="org9d3624e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgf767d42"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgef2bf3c"></a>

## bruce gray on the weekly challenge


<a id="org0bdfc20"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org453450a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgcfe1613"></a>

### alternate approach to 2:

```sh
time raku -e 'constant @pents = map ->\n { n *(3*n - 1) div 2 }, 1..*;

my %p = @pents.head(2400).Set;
say @pents.head(2400).combinations(2).first({ %p{.sum} and %p{ [R-] .list } });'
```

1.  result:

    1.  (1560090 7042750)
    
    2.  real 0m6.258s
    
    3.  user 0m5.683s
    
    4.  sys 0m0.157s


<a id="orgf45b7c5"></a>

## rob ransbottom dropped by: rir


<a id="org3104c8e"></a>

### playing with

1.  gtk on raku

2.  inclusions?

    1.  wants something like an include statement?
    
        1.  has looked at roles
        
        2.  bruce recommends parameterized roles
    
    2.  parents need to know about children?
    
        1.  the role needs to know about parent
        
            1.  the role does the exporting?
        
        2.  factory pattern or abstract factory pattern


<a id="orgb54e1a5"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orge13814f"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org76af4dc"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org3ce5a24"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgff71a4a"></a>

## topicettes, perhaps


<a id="org8ba36be"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org2f73dcd"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgaacd416"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgc5caa4c"></a>

## talking about how the sv perl talk went:


<a id="orgad5b213"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org0920a02"></a>

### ideas for other things to cover:

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


<a id="org7bf5a3c"></a>

## announcments


<a id="orgb30c8c7"></a>

### January 30th: next raku study group meeting


<a id="orgae938fa"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgdac39a7"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
