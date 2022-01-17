- [meeting notes January 30, 2022](#org859da87)
  - [the raku study group](#org3cf18f4)
    - [Don't Raku the boat](#org2564a51)
  - [usual links](#org758477b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org7732c89)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgf2b927e)
  - [talking about how the sv perl talk went:](#orgffd17ea)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org8ef3ed8)
    - [ideas for other things to cover:](#org1b90ef5)
  - [bruce gray on the weekly challenge](#orgbeee616)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgae5b3c6)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org8e2c13b)
    - [alternate approach to 2:](#org6ec7b96)
  - [rob ransbottom dropped by: rir](#org10b8507)
    - [playing with](#orgb58f9e8)
    - [sather](#org7e18432)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org6f592ec)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orge38bb5e)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org12f8342)
  - [topicettes](#orgbfdfb1f)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgad8ce79)
    - [raku vs python](#org4f077f4)
    - [regex stuff](#org7d6b9d2)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org3ee1e69)
    - [custom associatives](#orgc27d62c)
    - [future topicettes:](#orgf04a011)
    - [jonathan worthington, cro-ing](#org6d08e33)
  - [announcments](#orgf4afb16)
    - [January 30th: next raku study group meeting](#orga5f005c)
    - [February 5-6: FOSDEM Raku talks](#org380a57f)
    - [June 21-25: tprc: perl/raku conference](#org5f2cfcf)


<a id="org859da87"></a>

# meeting notes January 30, 2022


<a id="org3cf18f4"></a>

## the raku study group


<a id="org2564a51"></a>

### Don't Raku the boat


<a id="org758477b"></a>

## usual links


<a id="org7732c89"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgf2b927e"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgffd17ea"></a>

## talking about how the sv perl talk went:


<a id="org8ef3ed8"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org1b90ef5"></a>

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


<a id="orgbeee616"></a>

## bruce gray on the weekly challenge


<a id="orgae5b3c6"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org8e2c13b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org6ec7b96"></a>

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


<a id="org10b8507"></a>

## rob ransbottom dropped by: rir


<a id="orgb58f9e8"></a>

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


<a id="org7e18432"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org6f592ec"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orge38bb5e"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org12f8342"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgbfdfb1f"></a>

## topicettes


<a id="orgad8ce79"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org4f077f4"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org7d6b9d2"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org3ee1e69"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgc27d62c"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgf04a011"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org6d08e33"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf4afb16"></a>

## announcments


<a id="orga5f005c"></a>

### January 30th: next raku study group meeting


<a id="org380a57f"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org5f2cfcf"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
