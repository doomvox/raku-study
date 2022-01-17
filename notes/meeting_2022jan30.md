- [meeting notes January 30, 2022](#org532aaf7)
  - [the raku study group](#org550cdc3)
    - [Don't Raku the boat](#org2fd6b01)
  - [usual links to the meeting material](#orgfd0b909)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgc25fec7)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgab98376)
  - [talking about how the sv perl talk went:](#org424ff9e)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgd8528fd)
    - [ideas for other things to cover:](#orgf3971ec)
  - [bruce gray on the weekly challenge](#org5fca182)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgfda5e69)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org4607e1d)
    - [alternate approach to 2:](#org269dfb1)
  - [rob ransbottom dropped by: rir](#org483fdca)
    - [playing with](#orgd8e4ed4)
    - [sather](#org82ce77e)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org0a2f255)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org3a07b81)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org70d5d4e)
  - [topicettes, perhaps](#orga8736b8)
    - [raku vs python](#org18aa85a)
    - [getting sets to DWIM](#org4be9708)
    - [jonathan worthington, cro-ing](#org737a36a)
  - [announcments](#orgf2128d3)
    - [January 30th: next raku study group meeting](#orgf78059b)
    - [February 5-6: FOSDEM Raku talks](#orgbe4b367)
    - [June 21-25: tprc: perl/raku conference](#org4dca217)


<a id="org532aaf7"></a>

# meeting notes January 30, 2022


<a id="org550cdc3"></a>

## the raku study group


<a id="org2fd6b01"></a>

### Don't Raku the boat


<a id="orgfd0b909"></a>

## usual links to the meeting material


<a id="orgc25fec7"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgab98376"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org424ff9e"></a>

## talking about how the sv perl talk went:


<a id="orgd8528fd"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgf3971ec"></a>

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


<a id="org5fca182"></a>

## bruce gray on the weekly challenge


<a id="orgfda5e69"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org4607e1d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org269dfb1"></a>

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


<a id="org483fdca"></a>

## rob ransbottom dropped by: rir


<a id="orgd8e4ed4"></a>

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


<a id="org82ce77e"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org0a2f255"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org3a07b81"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org70d5d4e"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orga8736b8"></a>

## topicettes, perhaps


<a id="org18aa85a"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org4be9708"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org737a36a"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf2128d3"></a>

## announcments


<a id="orgf78059b"></a>

### January 30th: next raku study group meeting


<a id="orgbe4b367"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org4dca217"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
