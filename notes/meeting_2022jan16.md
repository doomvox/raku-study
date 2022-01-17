- [meeting notes January 16, 2022](#org50ceb52)
  - [the raku study group](#org43f2c14)
  - [usual links](#org56af218)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#orgd1147e0)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orga06a69d)
  - [talking about how the sv perl talk went:](#orgd441fb9)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgd531a92)
    - [ideas for other things to cover:](#orgb84593d)
  - [bruce gray on the weekly challenge](#orga05e0c9)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org8c782d7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgbb394a2)
    - [alternate approach to 2:](#org2664941)
  - [rob ransbottom dropped by: rir](#orge218e4d)
    - [playing with](#org763a1f4)
    - [sather](#org3467e3a)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org291065f)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org51ae97a)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orga0efce1)
  - [topicettes](#org81ef42d)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org7b32b9f)
    - [raku vs python](#org011ff5d)
    - [regex stuff](#org9f6ab9f)
    - [my talk:](#orga7bfece)
  - [bruce gray weekly challenge](#orgd0df121)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org1ece1da)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org244a616)
    - [alternate approach to 2:](#orge5f8f11)
  - [rob ransbottom dropped by: rir](#org6ea25dd)
    - [playing with](#org400c4f6)
    - [sather](#orgabb349c)
    - [intro to raku ideas](#org083734d)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org288d874)
    - [some recommended raku talks](#org2db7e8d)
    - [raku vs python](#orgcb162ec)
    - [getting sets to DWIM](#org5c04c5e)
    - [jonathan worthington, cro-ing](#orgad05827)
  - [announcments](#org0f62680)
    - [January 30th: next raku study group meeting](#orgeeee420)
    - [February 5-6: FOSDEM Raku talks](#org03f7469)
    - [June 21-25: tprc: perl/raku conference](#org89368c7)


<a id="org50ceb52"></a>

# meeting notes January 16, 2022


<a id="org43f2c14"></a>

## the raku study group


<a id="org56af218"></a>

## usual links


<a id="orgd1147e0"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orga06a69d"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="orgd441fb9"></a>

## talking about how the sv perl talk went:


<a id="orgd531a92"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgb84593d"></a>

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


<a id="orga05e0c9"></a>

## bruce gray on the weekly challenge


<a id="org8c782d7"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgbb394a2"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org2664941"></a>

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


<a id="orge218e4d"></a>

## rob ransbottom dropped by: rir


<a id="org763a1f4"></a>

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


<a id="org3467e3a"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org291065f"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org51ae97a"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orga0efce1"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org81ef42d"></a>

## topicettes


<a id="org7b32b9f"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org011ff5d"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org9f6ab9f"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orga7bfece"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgd0df121"></a>

## bruce gray weekly challenge


<a id="org1ece1da"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org244a616"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orge5f8f11"></a>

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


<a id="org6ea25dd"></a>

## rob ransbottom dropped by: rir


<a id="org400c4f6"></a>

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


<a id="orgabb349c"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org083734d"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org288d874"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org2db7e8d"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgcb162ec"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org5c04c5e"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgad05827"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org0f62680"></a>

## announcments


<a id="orgeeee420"></a>

### January 30th: next raku study group meeting


<a id="org03f7469"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org89368c7"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
