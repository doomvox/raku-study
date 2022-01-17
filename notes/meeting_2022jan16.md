- [meeting notes January 16, 2022](#orgd3398cd)
  - [the raku study group](#orgf251b4c)
  - [usual links](#org4a65f99)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org00e7bfb)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgb35998d)
  - [talking about how the sv perl talk went:](#org9a7287d)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org4cebb94)
    - [ideas for other things to cover:](#org8a0718c)
  - [bruce gray on the weekly challenge](#orgf5ab430)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org6817c37)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org2709898)
    - [alternate approach to 2:](#orgb552bef)
  - [rob ransbottom dropped by: rir](#org6a3fb4a)
    - [playing with](#orge355cb9)
    - [sather](#org254571d)
  - [regex stuff](#org8d51915)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org6905f03)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org59317ee)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org30209c5)
  - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org9ee9ff5)
  - [raku vs python](#orge48b30b)
    - [my talk:](#org16913a5)
  - [bruce gray weekly challenge](#org559ac67)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org9850784)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org482e1c4)
    - [alternate approach to 2:](#org5bfcd9d)
  - [rob ransbottom dropped by: rir](#org0b83213)
    - [playing with](#orge678078)
    - [sather](#org23677bb)
    - [intro to raku ideas](#org44104c6)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org8090663)
    - [some recommended raku talks](#org1544dc7)
    - [raku vs python](#orgc3bffa0)
    - [getting sets to DWIM](#org71d33d5)
    - [jonathan worthington, cro-ing](#org90fbd2a)
  - [announcments](#org2387bab)
    - [January 30th: next raku study group meeting](#orge20b3a9)
    - [February 5-6: FOSDEM Raku talks](#org409912e)
    - [June 21-25: tprc: perl/raku conference](#orgf80eab2)


<a id="orgd3398cd"></a>

# meeting notes January 16, 2022


<a id="orgf251b4c"></a>

## the raku study group


<a id="org4a65f99"></a>

## usual links


<a id="org00e7bfb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgb35998d"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org9a7287d"></a>

## talking about how the sv perl talk went:


<a id="org4cebb94"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org8a0718c"></a>

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


<a id="orgf5ab430"></a>

## bruce gray on the weekly challenge


<a id="org6817c37"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org2709898"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgb552bef"></a>

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


<a id="org6a3fb4a"></a>

## rob ransbottom dropped by: rir


<a id="orge355cb9"></a>

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


<a id="org254571d"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org8d51915"></a>

## regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org6905f03"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org59317ee"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org30209c5"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org9ee9ff5"></a>

## fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orge48b30b"></a>

## raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org16913a5"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org559ac67"></a>

## bruce gray weekly challenge


<a id="org9850784"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org482e1c4"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org5bfcd9d"></a>

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


<a id="org0b83213"></a>

## rob ransbottom dropped by: rir


<a id="orge678078"></a>

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


<a id="org23677bb"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org44104c6"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org8090663"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org1544dc7"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgc3bffa0"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org71d33d5"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org90fbd2a"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org2387bab"></a>

## announcments


<a id="orge20b3a9"></a>

### January 30th: next raku study group meeting


<a id="org409912e"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgf80eab2"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
