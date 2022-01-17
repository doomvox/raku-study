- [meeting notes January 30, 2022](#org0366ca2)
  - [the raku study group](#org848de7c)
    - [Don't Raku the boat](#org4c24263)
  - [usual links to the meeting material](#org40e9925)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org40d3248)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org4ea3ce1)
  - [talking about how the sv perl talk went:](#orgc67537a)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org233627a)
    - [ideas for other things to cover:](#org09a5981)
  - [bruce gray on the weekly challenge](#org0adaaa7)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org1d44aab)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org0a8c80e)
    - [alternate approach to 2:](#org3091fae)
  - [rob ransbottom dropped by: rir](#org415568b)
    - [playing with](#orgd37e871)
    - [sather](#org7f272c8)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org1f9fcb1)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org7156cb6)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org4dc9958)
  - [topicettes, perhaps](#orgfc9a015)
    - [raku vs python](#org2b39ee6)
    - [getting sets to DWIM](#org3c0aa9a)
    - [jonathan worthington, cro-ing](#org33ef041)
  - [announcments](#org7307165)
    - [January 30th: next raku study group meeting](#org91d0088)
    - [February 5-6: FOSDEM Raku talks](#org4eebfa8)
    - [June 21-25: tprc: perl/raku conference](#org24ddb06)


<a id="org0366ca2"></a>

# meeting notes January 30, 2022


<a id="org848de7c"></a>

## the raku study group


<a id="org4c24263"></a>

### Don't Raku the boat


<a id="org40e9925"></a>

## usual links to the meeting material


<a id="org40d3248"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org4ea3ce1"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgc67537a"></a>

## talking about how the sv perl talk went:


<a id="org233627a"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org09a5981"></a>

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


<a id="org0adaaa7"></a>

## bruce gray on the weekly challenge


<a id="org1d44aab"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org0a8c80e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org3091fae"></a>

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


<a id="org415568b"></a>

## rob ransbottom dropped by: rir


<a id="orgd37e871"></a>

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


<a id="org7f272c8"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org1f9fcb1"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org7156cb6"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org4dc9958"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgfc9a015"></a>

## topicettes, perhaps


<a id="org2b39ee6"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org3c0aa9a"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org33ef041"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7307165"></a>

## announcments


<a id="org91d0088"></a>

### January 30th: next raku study group meeting


<a id="org4eebfa8"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org24ddb06"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
