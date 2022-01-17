- [meeting notes January 16, 2022](#orgb200350)
  - [the raku study group](#org7095a2f)
  - [usual links](#org5c57f5d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org5869f8f)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgdd4fbce)
  - [talking about how the sv perl talk went:](#org56d26c3)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org98980ac)
    - [ideas for other things to cover:](#org27789b4)
  - [bruce gray on the weekly challenge](#org24b72fc)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org23fb14d)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgc5c49a0)
    - [alternate approach to 2:](#org30c4722)
  - [rob ransbottom dropped by: rir](#org0ac18b4)
    - [playing with](#org8ba788b)
    - [sather](#org511451e)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org319fe71)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgfbee7d0)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org76ccb92)
  - [topicettes](#org432399b)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org1080571)
    - [raku vs python](#org12a18e8)
    - [regex stuff](#orgcbe687c)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org0c86b66)
    - [custom associatives](#org2dedb88)
    - [future topicettes:](#org7972c81)
    - [jonathan worthington, cro-ing](#org9e25edc)
    - [my talk:](#orgd05a9b2)
  - [bruce gray weekly challenge](#orgb97a693)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org1231b23)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org478649a)
    - [alternate approach to 2:](#orgbd4b4fb)
  - [rob ransbottom dropped by: rir](#orge0a776e)
    - [playing with](#orgb1d34d5)
    - [sather](#org30e86d1)
    - [intro to raku ideas](#orgd0fccaa)
  - [topicettes](#org3984cf5)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org63bb485)
    - [some recommended raku talks](#org8dd8527)
    - [raku vs python](#orgb4f753b)
    - [regex stuff](#orgfb52906)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org022d161)
    - [getting sets to DWIM](#org4c048f5)
    - [jonathan worthington, cro-ing](#org6792d45)
  - [announcments](#orgf19d403)
    - [January 30th: next raku study group meeting](#org9d7ad08)
    - [February 5-6: FOSDEM Raku talks](#orgabc7b31)
    - [June 21-25: tprc: perl/raku conference](#orgfb7b525)


<a id="orgb200350"></a>

# meeting notes January 16, 2022


<a id="org7095a2f"></a>

## the raku study group


<a id="org5c57f5d"></a>

## usual links


<a id="org5869f8f"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgdd4fbce"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org56d26c3"></a>

## talking about how the sv perl talk went:


<a id="org98980ac"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org27789b4"></a>

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


<a id="org24b72fc"></a>

## bruce gray on the weekly challenge


<a id="org23fb14d"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgc5c49a0"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org30c4722"></a>

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


<a id="org0ac18b4"></a>

## rob ransbottom dropped by: rir


<a id="org8ba788b"></a>

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


<a id="org511451e"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org319fe71"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgfbee7d0"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org76ccb92"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org432399b"></a>

## topicettes


<a id="org1080571"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org12a18e8"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgcbe687c"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org0c86b66"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org2dedb88"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org7972c81"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org9e25edc"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgd05a9b2"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgb97a693"></a>

## bruce gray weekly challenge


<a id="org1231b23"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org478649a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgbd4b4fb"></a>

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


<a id="orge0a776e"></a>

## rob ransbottom dropped by: rir


<a id="orgb1d34d5"></a>

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


<a id="org30e86d1"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd0fccaa"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org3984cf5"></a>

## topicettes


<a id="org63bb485"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org8dd8527"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgb4f753b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgfb52906"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org022d161"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org4c048f5"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org6792d45"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf19d403"></a>

## announcments


<a id="org9d7ad08"></a>

### January 30th: next raku study group meeting


<a id="orgabc7b31"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgfb7b525"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
