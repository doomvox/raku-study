- [meeting notes January 16, 2022](#org5dabcb6)
  - [the raku study group](#orgdd4f0da)
  - [usual links](#org0172d9d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org37d2c16)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgb1a1e9d)
  - [talking about how the sv perl talk went:](#org5e0f0ee)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org314bffa)
    - [ideas for other things to cover:](#org7def6e7)
  - [bruce gray on the weekly challenge](#orgfe86750)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgdbfe918)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org1eaa64e)
    - [alternate approach to 2:](#orgc9457a3)
  - [rob ransbottom dropped by: rir](#org6ce94c0)
    - [playing with](#orge275310)
    - [sather](#orgc9007d7)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org7191183)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgd019cfa)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org00fe4fc)
  - [topicettes](#orgff56264)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgc8e7cf9)
    - [raku vs python](#orgeb75a34)
    - [regex stuff](#orga9bc9e2)
    - [my talk:](#org1cbd7fe)
  - [bruce gray weekly challenge](#org42b7e22)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgb36253b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org8cf6a19)
    - [alternate approach to 2:](#orga6bf145)
  - [rob ransbottom dropped by: rir](#org9ed87c4)
    - [playing with](#org1b0e1ed)
    - [sather](#org09f30af)
    - [intro to raku ideas](#orgfd3c315)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgac252b2)
    - [some recommended raku talks](#orgcd1547e)
    - [raku vs python](#org89a2631)
  - [old topics:](#org16d51fb)
    - [future topicettes:](#orgcbdf028)
    - [jonathan worthington, cro-ing](#orgfee448a)
    - [getting sets to DWIM](#org61c3016)
    - [jonathan worthington, cro-ing](#org5f91a3a)
  - [announcments](#org76156d5)
    - [January 30th: next raku study group meeting](#org99a75ba)
    - [February 5-6: FOSDEM Raku talks](#org2c48e43)
    - [June 21-25: tprc: perl/raku conference](#org59e7cba)


<a id="org5dabcb6"></a>

# meeting notes January 16, 2022


<a id="orgdd4f0da"></a>

## the raku study group


<a id="org0172d9d"></a>

## usual links


<a id="org37d2c16"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgb1a1e9d"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org5e0f0ee"></a>

## talking about how the sv perl talk went:


<a id="org314bffa"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org7def6e7"></a>

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


<a id="orgfe86750"></a>

## bruce gray on the weekly challenge


<a id="orgdbfe918"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org1eaa64e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgc9457a3"></a>

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


<a id="org6ce94c0"></a>

## rob ransbottom dropped by: rir


<a id="orge275310"></a>

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
    
    3.  some regex stuff
    
        1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgc9007d7"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org7191183"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgd019cfa"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org00fe4fc"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgff56264"></a>

## topicettes


<a id="orgc8e7cf9"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgeb75a34"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orga9bc9e2"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org1cbd7fe"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org42b7e22"></a>

## bruce gray weekly challenge


<a id="orgb36253b"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org8cf6a19"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orga6bf145"></a>

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


<a id="org9ed87c4"></a>

## rob ransbottom dropped by: rir


<a id="org1b0e1ed"></a>

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


<a id="org09f30af"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgfd3c315"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgac252b2"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgcd1547e"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org89a2631"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org16d51fb"></a>

## old topics:


<a id="orgcbdf028"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgfee448a"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org61c3016"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org5f91a3a"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org76156d5"></a>

## announcments


<a id="org99a75ba"></a>

### January 30th: next raku study group meeting


<a id="org2c48e43"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org59e7cba"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
