- [meeting notes January 30, 2022](#org9aab072)
  - [the raku study group](#org3181bbf)
    - [Don't Raku the boat](#org565cb7b)
  - [usual links](#orgf4f4df5)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org85ddc75)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orge39ce9c)
  - [talking about how the sv perl talk went:](#org02c509c)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org27dd108)
    - [ideas for other things to cover:](#org6285aa6)
  - [bruce gray on the weekly challenge](#orgd340c47)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org457f69a)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org9906e6f)
    - [alternate approach to 2:](#orgfb69664)
  - [rob ransbottom dropped by: rir](#orgd2efc04)
    - [playing with](#org28d5e41)
    - [sather](#org4dc4a07)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org14c734f)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org233cbe8)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orgef411ff)
    - [regex stuff](#org2e3ed22)
  - [topicettes, perhaps](#org094c0c1)
    - [raku vs python](#orgb33e253)
    - [getting sets to DWIM](#orga5b9743)
    - [jonathan worthington, cro-ing](#org0e0dae2)
  - [announcments](#orge5c32e2)
    - [January 30th: next raku study group meeting](#orgfebd892)
    - [February 5-6: FOSDEM Raku talks](#org6972be7)
    - [June 21-25: tprc: perl/raku conference](#org1a89ab3)


<a id="org9aab072"></a>

# meeting notes January 30, 2022


<a id="org3181bbf"></a>

## the raku study group


<a id="org565cb7b"></a>

### Don't Raku the boat


<a id="orgf4f4df5"></a>

## usual links


<a id="org85ddc75"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orge39ce9c"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org02c509c"></a>

## talking about how the sv perl talk went:


<a id="org27dd108"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org6285aa6"></a>

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


<a id="orgd340c47"></a>

## bruce gray on the weekly challenge


<a id="org457f69a"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org9906e6f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgfb69664"></a>

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


<a id="orgd2efc04"></a>

## rob ransbottom dropped by: rir


<a id="org28d5e41"></a>

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


<a id="org4dc4a07"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org14c734f"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org233cbe8"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orgef411ff"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org2e3ed22"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org094c0c1"></a>

## topicettes, perhaps


<a id="orgb33e253"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orga5b9743"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org0e0dae2"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orge5c32e2"></a>

## announcments


<a id="orgfebd892"></a>

### January 30th: next raku study group meeting


<a id="org6972be7"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org1a89ab3"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
