- [meeting notes January 16, 2022](#orgd4003d7)
  - [the raku study group](#orgb470a5e)
  - [usual links](#org34413fa)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org168f428)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org7f9dbcf)
  - [talking about how the sv perl talk went:](#org09467a2)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org720295c)
    - [ideas for other things to cover:](#org34dd427)
  - [bruce gray on the weekly challenge](#orge025838)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgdf6419e)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgcb7ef64)
    - [alternate approach to 2:](#orge530c9f)
  - [rob ransbottom dropped by: rir](#org66d5bb8)
    - [playing with](#orgeda6114)
    - [sather](#org24165ff)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orga21f3eb)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgd51b0c6)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orgd8469b8)
  - [topicettes](#org6ecadf8)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org153522d)
    - [raku vs python](#org01960d7)
    - [regex stuff](#orgc795f87)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orge926f3f)
    - [custom associatives](#org43e99f8)
    - [future topicettes:](#org301e816)
    - [jonathan worthington, cro-ing](#org225a8f0)
    - [my talk:](#org4ce717e)
  - [bruce gray weekly challenge](#orga1889a4)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orga68e08d)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org96e0895)
    - [alternate approach to 2:](#org5d1b5ef)
  - [rob ransbottom dropped by: rir](#orgd884874)
    - [playing with](#org6dcdc61)
    - [sather](#org24c54c1)
    - [intro to raku ideas](#orgf7e8c82)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgf9e5e76)
    - [some recommended raku talks](#org6c80ba9)
    - [raku vs python](#org44081fd)
    - [some regex stuff](#org6309d8f)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org7de24f9)
    - [getting sets to DWIM](#org5632b66)
    - [jonathan worthington, cro-ing](#orgd555f8d)
  - [announcments](#orge789bab)
    - [January 30th: next raku study group meeting](#orga4f9c15)
    - [February 5-6: FOSDEM Raku talks](#org69cff0c)
    - [June 21-25: tprc: perl/raku conference](#orged21a08)


<a id="orgd4003d7"></a>

# meeting notes January 16, 2022


<a id="orgb470a5e"></a>

## the raku study group


<a id="org34413fa"></a>

## usual links


<a id="org168f428"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org7f9dbcf"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org09467a2"></a>

## talking about how the sv perl talk went:


<a id="org720295c"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org34dd427"></a>

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


<a id="orge025838"></a>

## bruce gray on the weekly challenge


<a id="orgdf6419e"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgcb7ef64"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orge530c9f"></a>

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


<a id="org66d5bb8"></a>

## rob ransbottom dropped by: rir


<a id="orgeda6114"></a>

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


<a id="org24165ff"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orga21f3eb"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgd51b0c6"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orgd8469b8"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org6ecadf8"></a>

## topicettes


<a id="org153522d"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org01960d7"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc795f87"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orge926f3f"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org43e99f8"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org301e816"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org225a8f0"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org4ce717e"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orga1889a4"></a>

## bruce gray weekly challenge


<a id="orga68e08d"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org96e0895"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org5d1b5ef"></a>

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


<a id="orgd884874"></a>

## rob ransbottom dropped by: rir


<a id="org6dcdc61"></a>

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


<a id="org24c54c1"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgf7e8c82"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgf9e5e76"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org6c80ba9"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org44081fd"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org6309d8f"></a>

### some regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org7de24f9"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org5632b66"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd555f8d"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orge789bab"></a>

## announcments


<a id="orga4f9c15"></a>

### January 30th: next raku study group meeting


<a id="org69cff0c"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orged21a08"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
