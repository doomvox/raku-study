- [meeting notes January 30, 2022](#org5023b79)
  - [the raku study group](#org735ce9a)
    - [Don't Raku the boat](#org1abf176)
  - [usual links](#orgcd2121d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org38d3801)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgbbfcfc4)
  - [talking about how the sv perl talk went:](#org69a01e0)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orga2a7515)
    - [ideas for other things to cover:](#orgc178bfd)
  - [bruce gray on the weekly challenge](#org240a163)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org4c4d73b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org6d32273)
    - [alternate approach to 2:](#org3cf5975)
  - [rob ransbottom dropped by: rir](#orgbb779f9)
    - [playing with](#org13f16ee)
    - [sather](#orgc0fa00b)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orgb2d7819)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org9cbe5a1)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org877ebf6)
  - [topicettes](#org06d848d)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org3440f43)
    - [raku vs python](#org1a2bd98)
    - [regex stuff](#org51b687b)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgfe24b42)
    - [custom associatives](#org7e7315f)
    - [future topicettes:](#org44e1843)
    - [jonathan worthington, cro-ing](#orgef8d7c0)
  - [announcments](#org932cd4c)
    - [January 30th: next raku study group meeting](#org8176b72)
    - [February 5-6: FOSDEM Raku talks](#org7620a52)
    - [June 21-25: tprc: perl/raku conference](#org95905ab)


<a id="org5023b79"></a>

# meeting notes January 30, 2022


<a id="org735ce9a"></a>

## the raku study group


<a id="org1abf176"></a>

### Don't Raku the boat


<a id="orgcd2121d"></a>

## usual links


<a id="org38d3801"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgbbfcfc4"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org69a01e0"></a>

## talking about how the sv perl talk went:


<a id="orga2a7515"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgc178bfd"></a>

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


<a id="org240a163"></a>

## bruce gray on the weekly challenge


<a id="org4c4d73b"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org6d32273"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org3cf5975"></a>

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


<a id="orgbb779f9"></a>

## rob ransbottom dropped by: rir


<a id="org13f16ee"></a>

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


<a id="orgc0fa00b"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgb2d7819"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org9cbe5a1"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org877ebf6"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org06d848d"></a>

## topicettes


<a id="org3440f43"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org1a2bd98"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org51b687b"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgfe24b42"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org7e7315f"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org44e1843"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgef8d7c0"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org932cd4c"></a>

## announcments


<a id="org8176b72"></a>

### January 30th: next raku study group meeting


<a id="org7620a52"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org95905ab"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
