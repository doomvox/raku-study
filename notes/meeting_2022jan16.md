- [meeting notes January 16, 2022](#org3238d66)
  - [the raku study group](#orgfd15220)
  - [usual links](#orgd3325e8)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org047f02e)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org07d3b3b)
  - [talking about how the sv perl talk went:](#org2de95f3)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org334dc09)
    - [ideas for other things to cover:](#org255102a)
  - [bruce gray on the weekly challenge](#org412b90c)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgfbf68da)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org76378d3)
    - [alternate approach to 2:](#org369d784)
  - [rob ransbottom dropped by: rir](#org68eb709)
    - [playing with](#org85a5c43)
    - [sather](#orgde34ca7)
  - [regex stuff](#org9841d69)
    - [<https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>](#org94531d0)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org756ed26)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org0a1bbdc)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orge63828e)
  - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org56d774c)
    - [<https://github.com/rufuspollock/awesome-crypto-critique>](#orgc971339)
  - [raku vs python](#org1d8f255)
    - [<https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>](#org83298c6)
    - [um&#x2026; very interrresting.](#org665bc64)
    - [my talk for sv perl](#org3ff0873)
  - [bruce gray weekly challenge](#orga376b67)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org19c6359)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org3aeab6d)
    - [alternate approach to 2:](#org7914608)
  - [rob ransbottom dropped by: rir](#orge951352)
    - [playing with](#org6998f90)
    - [sather](#org60e3c37)
    - [intro to raku ideas](#org223b2aa)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org8f3508c)
    - [some recommended raku talks](#org17d175b)
    - [raku vs python](#orgf204c24)
    - [getting sets to DWIM](#orga903e87)
    - [jonathan worthington, cro-ing](#org97486c5)
  - [announcments](#org0286381)
    - [January 30th: next raku study group meeting](#org659febc)
    - [February 5-6: FOSDEM Raku talks](#org809b25c)
    - [June 21-25: tprc: perl/raku conference](#org8a4d5cb)


<a id="org3238d66"></a>

# meeting notes January 16, 2022


<a id="orgfd15220"></a>

## the raku study group


<a id="orgd3325e8"></a>

## usual links


<a id="org047f02e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org07d3b3b"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org2de95f3"></a>

## talking about how the sv perl talk went:


<a id="org334dc09"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org255102a"></a>

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


<a id="org412b90c"></a>

## bruce gray on the weekly challenge


<a id="orgfbf68da"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org76378d3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org369d784"></a>

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


<a id="org68eb709"></a>

## rob ransbottom dropped by: rir


<a id="org85a5c43"></a>

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


<a id="orgde34ca7"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org9841d69"></a>

## regex stuff


<a id="org94531d0"></a>

### <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org756ed26"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org0a1bbdc"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orge63828e"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org56d774c"></a>

## fun stuff: take downs of bitcoin, blockchain, web3, etc


<a id="orgc971339"></a>

### <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org1d8f255"></a>

## raku vs python


<a id="org83298c6"></a>

### <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>


<a id="org665bc64"></a>

### um&#x2026; very interrresting.


<a id="org3ff0873"></a>

### my talk for sv perl

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orga376b67"></a>

## bruce gray weekly challenge


<a id="org19c6359"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org3aeab6d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org7914608"></a>

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


<a id="orge951352"></a>

## rob ransbottom dropped by: rir


<a id="org6998f90"></a>

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


<a id="org60e3c37"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org223b2aa"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org8f3508c"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org17d175b"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgf204c24"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orga903e87"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org97486c5"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org0286381"></a>

## announcments


<a id="org659febc"></a>

### January 30th: next raku study group meeting


<a id="org809b25c"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org8a4d5cb"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
