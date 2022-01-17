- [meeting notes January 16, 2022](#orgfcd03a1)
  - [the raku study group](#org40cd9b5)
  - [usual links](#org1374d17)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org1aa14ca)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org423a213)
  - [talking about how the sv perl talk went:](#org27bd622)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgdbb5b60)
    - [ideas for other things to cover:](#org450cd24)
  - [bruce gray on the weekly challenge](#org4b35d25)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org4848819)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org174cf56)
    - [alternate approach to 2:](#orgd8a4d70)
  - [rob ransbottom dropped by: rir](#org98085a2)
    - [playing with](#orgf060e48)
    - [sather](#orgc5c7092)
  - [regex stuff](#org1d1f9ad)
    - [<https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>](#orgcd1de9f)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org0f2539b)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgef454ec)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org96be10e)
  - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgc181b6d)
    - [<https://github.com/rufuspollock/awesome-crypto-critique>](#orgb8e28f4)
  - [raku vs python](#org3ca1fb0)
    - [<https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>](#org134b0a8)
    - [um&#x2026; very interrresting.](#org2045f85)
    - [my talk for sv perl](#org0cb3e97)
  - [bruce gray weekly challenge](#org14da1e6)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org73890d5)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org4ba7bb4)
    - [alternate approach to 2:](#org216391b)
  - [rob ransbottom dropped by: rir](#orgca74e85)
    - [playing with](#org75f10e1)
    - [sather](#orgfa9eeb7)
    - [intro to raku ideas](#org05f95b1)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgd6cb5da)
    - [some recommended raku talks](#org65f2778)
    - [raku vs python](#org129ca45)
    - [getting sets to DWIM](#orgcb18ae8)
    - [jonathan worthington, cro-ing](#org1c015f6)
  - [announcments](#org6622a9d)
    - [January 30th: next raku study group meeting](#org2e682a4)
    - [February 5-6: FOSDEM Raku talks](#orge61b539)
    - [June 21-25: tprc: perl/raku conference](#org2de070a)


<a id="orgfcd03a1"></a>

# meeting notes January 16, 2022


<a id="org40cd9b5"></a>

## the raku study group


<a id="org1374d17"></a>

## usual links


<a id="org1aa14ca"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org423a213"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org27bd622"></a>

## talking about how the sv perl talk went:


<a id="orgdbb5b60"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org450cd24"></a>

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


<a id="org4b35d25"></a>

## bruce gray on the weekly challenge


<a id="org4848819"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org174cf56"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgd8a4d70"></a>

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


<a id="org98085a2"></a>

## rob ransbottom dropped by: rir


<a id="orgf060e48"></a>

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


<a id="orgc5c7092"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org1d1f9ad"></a>

## regex stuff


<a id="orgcd1de9f"></a>

### <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org0f2539b"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgef454ec"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org96be10e"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgc181b6d"></a>

## fun stuff: take downs of bitcoin, blockchain, web3, etc


<a id="orgb8e28f4"></a>

### <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org3ca1fb0"></a>

## raku vs python


<a id="org134b0a8"></a>

### <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>


<a id="org2045f85"></a>

### um&#x2026; very interrresting.


<a id="org0cb3e97"></a>

### my talk for sv perl

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org14da1e6"></a>

## bruce gray weekly challenge


<a id="org73890d5"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org4ba7bb4"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org216391b"></a>

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


<a id="orgca74e85"></a>

## rob ransbottom dropped by: rir


<a id="org75f10e1"></a>

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


<a id="orgfa9eeb7"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org05f95b1"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgd6cb5da"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org65f2778"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org129ca45"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgcb18ae8"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org1c015f6"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org6622a9d"></a>

## announcments


<a id="org2e682a4"></a>

### January 30th: next raku study group meeting


<a id="orge61b539"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org2de070a"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
