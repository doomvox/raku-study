- [meeting notes January 30, 2022](#org4a2d89c)
  - [the raku study group](#org88bbbd6)
    - [Don't Raku the boat](#org1204230)
  - [usual links](#orgb4e0a36)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org0e0f83d)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org6a74dd0)
  - [talking about how the sv perl talk went:](#org14c52b8)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org0bc2fb2)
    - [ideas for other things to cover:](#orga97f7c1)
  - [bruce gray on the weekly challenge](#org8f00ca9)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgc0ab55e)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org6f0e58c)
    - [alternate approach to 2:](#org360f09c)
  - [rob ransbottom dropped by: rir](#org8789211)
    - [playing with](#orgb532312)
    - [sather](#org4644256)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org9954c99)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgcb5f02f)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org6313095)
  - [topicettes, perhaps](#orge79e85a)
    - [raku vs python](#org7ea6f44)
    - [getting sets to DWIM](#org4fae8fa)
    - [jonathan worthington, cro-ing](#org62a2f39)
  - [announcments](#org7bf297f)
    - [January 30th: next raku study group meeting](#org846906e)
    - [February 5-6: FOSDEM Raku talks](#orgc787baa)
    - [June 21-25: tprc: perl/raku conference](#orgb21ddf5)


<a id="org4a2d89c"></a>

# meeting notes January 30, 2022


<a id="org88bbbd6"></a>

## the raku study group


<a id="org1204230"></a>

### Don't Raku the boat


<a id="orgb4e0a36"></a>

## usual links


<a id="org0e0f83d"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org6a74dd0"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org14c52b8"></a>

## talking about how the sv perl talk went:


<a id="org0bc2fb2"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orga97f7c1"></a>

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


<a id="org8f00ca9"></a>

## bruce gray on the weekly challenge


<a id="orgc0ab55e"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org6f0e58c"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org360f09c"></a>

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


<a id="org8789211"></a>

## rob ransbottom dropped by: rir


<a id="orgb532312"></a>

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


<a id="org4644256"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org9954c99"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgcb5f02f"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org6313095"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orge79e85a"></a>

## topicettes, perhaps


<a id="org7ea6f44"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org4fae8fa"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org62a2f39"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7bf297f"></a>

## announcments


<a id="org846906e"></a>

### January 30th: next raku study group meeting


<a id="orgc787baa"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgb21ddf5"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
