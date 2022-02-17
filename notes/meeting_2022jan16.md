- [meeting notes January 16, 2022](#orgf583279)
  - [the raku study group](#orgb2df074)
  - [usual links](#org532f975)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#orgc02b2b4)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022jan16>](#org1eb19c5)
  - [talking about how the sv perl talk went:](#orgdce3580)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orge64b43a)
    - [ideas for other things to cover:](#orgd9d58b4)
  - [bruce gray on the weekly challenge](#orgf2675a5)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org981833d)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org2f701f2)
    - [alternate approach to 2:](#orga881908)
  - [rob ransbottom dropped by: rir](#org87b8bc3)
    - [playing with](#org59307bf)
    - [sather](#org7e1e453)
  - [regex stuff](#org95ead61)
    - [<https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>](#org23ac30c)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orge94c7f6)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org634b89e)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org6c5a211)
  - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org5407ba1)
    - [<https://github.com/rufuspollock/awesome-crypto-critique>](#org79565a2)
  - [raku vs python](#org46d77ee)
    - [<https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>](#orgdc442da)
    - [um&#x2026; very interrresting.](#orgdf74c02)
    - [my talk for sv perl](#org0630bf2)
  - [bruce gray weekly challenge](#org2415b44)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org2c27752)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org8d530fc)
    - [alternate approach to 2:](#orgf6647d1)
  - [rob ransbottom dropped by: rir](#orgcfecd59)
    - [playing with](#org6f4640a)
    - [sather](#org0580cd1)
    - [intro to raku ideas](#org9458530)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org30b21f2)
    - [some recommended raku talks](#orgfb9e428)
    - [raku vs python](#org1d8201f)
    - [getting sets to DWIM](#orgc79b4a8)
    - [jonathan worthington, cro-ing](#orgc6f23d8)
  - [announcments](#org3565c6a)
    - [January 30th: next raku study group meeting](#org4c3d212)
    - [February 5-6: FOSDEM Raku talks](#orgf6789e5)
    - [June 21-25: tprc: perl/raku conference](#org668c453)


<a id="orgf583279"></a>

# meeting notes January 16, 2022


<a id="orgb2df074"></a>

## the raku study group


<a id="org532f975"></a>

## usual links


<a id="orgc02b2b4"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org1eb19c5"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022jan16>


<a id="orgdce3580"></a>

## talking about how the sv perl talk went:


<a id="orge64b43a"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgd9d58b4"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  Some examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021feb28>
    
        1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
        
        3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    2.  from my slide for recommended raku talks
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
        
            1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
            
            2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="orgf2675a5"></a>

## bruce gray on the weekly challenge


<a id="org981833d"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org2f701f2"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orga881908"></a>

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


<a id="org87b8bc3"></a>

## rob ransbottom dropped by: rir


<a id="org59307bf"></a>

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


<a id="org7e1e453"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org95ead61"></a>

## regex stuff


<a id="org23ac30c"></a>

### <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orge94c7f6"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org634b89e"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org6c5a211"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org5407ba1"></a>

## fun stuff: take downs of bitcoin, blockchain, web3, etc


<a id="org79565a2"></a>

### <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org46d77ee"></a>

## raku vs python


<a id="orgdc442da"></a>

### <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>


<a id="orgdf74c02"></a>

### um&#x2026; very interrresting.


<a id="org0630bf2"></a>

### my talk for sv perl

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org2415b44"></a>

## bruce gray weekly challenge


<a id="org2c27752"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org8d530fc"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgf6647d1"></a>

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


<a id="orgcfecd59"></a>

## rob ransbottom dropped by: rir


<a id="org6f4640a"></a>

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


<a id="org0580cd1"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org9458530"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org30b21f2"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgfb9e428"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org1d8201f"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc79b4a8"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgc6f23d8"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org3565c6a"></a>

## announcments


<a id="org4c3d212"></a>

### January 30th: next raku study group meeting


<a id="orgf6789e5"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org668c453"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
