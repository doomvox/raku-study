- [meeting notes January 30, 2022](#org01e0450)
  - [the raku study group](#org0c90ca0)
    - [Don't Raku the boat](#org84c7a5e)
  - [usual links](#org6015718)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org0a4cff2)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orga6b46ab)
  - [talking about how the sv perl talk went:](#org5ecd21f)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org1d64011)
    - [ideas for other things to cover:](#orge74741d)
  - [bruce gray on the weekly challenge](#org5cfd13b)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org2e4bde9)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org74bdfe6)
    - [alternate approach to 2:](#orgf6193d0)
  - [rob ransbottom dropped by: rir](#org8476e6d)
    - [playing with](#org547f24f)
    - [sather](#orgab0c4d6)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orgd8e8f7e)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org2f09ec0)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org0455070)
    - [regex stuff](#orgfff22a9)
  - [topicettes, perhaps](#orgb3aad72)
    - [raku vs python](#orgdf3755b)
    - [getting sets to DWIM](#orgeeb4c38)
    - [jonathan worthington, cro-ing](#orgd5b29ae)
  - [announcments](#org7e631df)
    - [January 30th: next raku study group meeting](#orga9f4238)
    - [February 5-6: FOSDEM Raku talks](#org4b6239c)
    - [June 21-25: tprc: perl/raku conference](#org8cafdd5)


<a id="org01e0450"></a>

# meeting notes January 30, 2022


<a id="org0c90ca0"></a>

## the raku study group


<a id="org84c7a5e"></a>

### Don't Raku the boat


<a id="org6015718"></a>

## usual links


<a id="org0a4cff2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orga6b46ab"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org5ecd21f"></a>

## talking about how the sv perl talk went:


<a id="org1d64011"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orge74741d"></a>

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


<a id="org5cfd13b"></a>

## bruce gray on the weekly challenge


<a id="org2e4bde9"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org74bdfe6"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgf6193d0"></a>

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


<a id="org8476e6d"></a>

## rob ransbottom dropped by: rir


<a id="org547f24f"></a>

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


<a id="orgab0c4d6"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd8e8f7e"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org2f09ec0"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org0455070"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgfff22a9"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgb3aad72"></a>

## topicettes, perhaps


<a id="orgdf3755b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgeeb4c38"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd5b29ae"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7e631df"></a>

## announcments


<a id="orga9f4238"></a>

### January 30th: next raku study group meeting


<a id="org4b6239c"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org8cafdd5"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
