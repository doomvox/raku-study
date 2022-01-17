- [meeting notes January 16, 2022](#orgabb2624)
  - [the raku study group](#orgd918a93)
  - [usual links](#org023c970)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org3c27027)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org44fb47b)
  - [talking about how the sv perl talk went:](#org1fc5c5e)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgc1406a6)
    - [ideas for other things to cover:](#orgc150a3f)
  - [bruce gray on the weekly challenge](#org14552b0)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgfa7cc6c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org8cc7959)
    - [alternate approach to 2:](#orgf4df724)
  - [rob ransbottom dropped by: rir](#orgf6ba2fb)
    - [playing with](#org82000d5)
    - [sather](#org0fbd189)
  - [regex stuff](#org4b40456)
    - [<https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>](#org506382a)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orga0a7d58)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org29d8a51)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org853189d)
  - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgc00d627)
    - [<https://github.com/rufuspollock/awesome-crypto-critique>](#org9469d36)
  - [raku vs python](#org26654b9)
    - [<https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>](#org597ce9a)
    - [um&#x2026; very interrresting.](#org606dafa)
    - [my talk for sv perl](#org54588f1)
  - [bruce gray weekly challenge](#orgbafe9ed)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgf36510c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orge76bde7)
    - [alternate approach to 2:](#orgc97d214)
  - [rob ransbottom dropped by: rir](#org12fc40b)
    - [playing with](#orgbee268e)
    - [sather](#org3aeec3f)
    - [intro to raku ideas](#org364cbf6)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org92cdc82)
    - [some recommended raku talks](#orgca74b3c)
    - [raku vs python](#org4466549)
    - [getting sets to DWIM](#orgb1f7d44)
    - [jonathan worthington, cro-ing](#org0fd53f6)
  - [announcments](#org8dc4606)
    - [January 30th: next raku study group meeting](#orge6ad920)
    - [February 5-6: FOSDEM Raku talks](#orgfbcec4b)
    - [June 21-25: tprc: perl/raku conference](#org1c77f29)


<a id="orgabb2624"></a>

# meeting notes January 16, 2022


<a id="orgd918a93"></a>

## the raku study group


<a id="org023c970"></a>

## usual links


<a id="org3c27027"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org44fb47b"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org1fc5c5e"></a>

## talking about how the sv perl talk went:


<a id="orgc1406a6"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgc150a3f"></a>

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


<a id="org14552b0"></a>

## bruce gray on the weekly challenge


<a id="orgfa7cc6c"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org8cc7959"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgf4df724"></a>

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


<a id="orgf6ba2fb"></a>

## rob ransbottom dropped by: rir


<a id="org82000d5"></a>

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


<a id="org0fbd189"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org4b40456"></a>

## regex stuff


<a id="org506382a"></a>

### <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orga0a7d58"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org29d8a51"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org853189d"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgc00d627"></a>

## fun stuff: take downs of bitcoin, blockchain, web3, etc


<a id="org9469d36"></a>

### <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org26654b9"></a>

## raku vs python


<a id="org597ce9a"></a>

### <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>


<a id="org606dafa"></a>

### um&#x2026; very interrresting.


<a id="org54588f1"></a>

### my talk for sv perl

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgbafe9ed"></a>

## bruce gray weekly challenge


<a id="orgf36510c"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orge76bde7"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgc97d214"></a>

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


<a id="org12fc40b"></a>

## rob ransbottom dropped by: rir


<a id="orgbee268e"></a>

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


<a id="org3aeec3f"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org364cbf6"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org92cdc82"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgca74b3c"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org4466549"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgb1f7d44"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org0fd53f6"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org8dc4606"></a>

## announcments


<a id="orge6ad920"></a>

### January 30th: next raku study group meeting


<a id="orgfbcec4b"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org1c77f29"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
