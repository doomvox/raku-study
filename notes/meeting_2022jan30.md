- [meeting notes January 30, 2022](#org4c03dff)
  - [the raku study group](#org260822f)
    - [Don't Raku the boat](#org092f603)
  - [usual links](#org739c660)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org7b828c5)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgdde1278)
  - [talking about how the sv perl talk went:](#org2363798)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orge20493f)
    - [ideas for other things to cover:](#org929b11e)
  - [bruce gray on the weekly challenge](#org8344f36)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org2d49601)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org0bcca8b)
    - [alternate approach to 2:](#org4effd42)
  - [rob ransbottom dropped by: rir](#orgd81b006)
    - [playing with](#org1810ac0)
    - [sather](#org4776682)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orgfdb4dad)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgea38f6e)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org5adb788)
  - [topicettes, perhaps](#org77e056b)
    - [raku vs python](#orge86374c)
    - [getting sets to DWIM](#org88f5824)
    - [jonathan worthington, cro-ing](#orgd3ee1ec)
  - [announcments](#org7eda733)
    - [January 30th: next raku study group meeting](#org254425c)
    - [February 5-6: FOSDEM Raku talks](#orga85a629)
    - [June 21-25: tprc: perl/raku conference](#orgb43116f)


<a id="org4c03dff"></a>

# meeting notes January 30, 2022


<a id="org260822f"></a>

## the raku study group


<a id="org092f603"></a>

### Don't Raku the boat


<a id="org739c660"></a>

## usual links


<a id="org7b828c5"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgdde1278"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org2363798"></a>

## talking about how the sv perl talk went:


<a id="orge20493f"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org929b11e"></a>

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


<a id="org8344f36"></a>

## bruce gray on the weekly challenge


<a id="org2d49601"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org0bcca8b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org4effd42"></a>

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


<a id="orgd81b006"></a>

## rob ransbottom dropped by: rir


<a id="org1810ac0"></a>

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


<a id="org4776682"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgfdb4dad"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgea38f6e"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org5adb788"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org77e056b"></a>

## topicettes, perhaps


<a id="orge86374c"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org88f5824"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd3ee1ec"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7eda733"></a>

## announcments


<a id="org254425c"></a>

### January 30th: next raku study group meeting


<a id="orga85a629"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgb43116f"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
