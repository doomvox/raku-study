- [meeting notes January 30, 2022](#org71a01f5)
  - [the raku study group](#org9d755a4)
    - [Don't Raku the boat](#org2b4eceb)
  - [usual links](#org783934d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org2fff146)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orga5ddadf)
  - [talking about how the sv perl talk went:](#orga5d06f1)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orga7ad218)
    - [ideas for other things to cover:](#org3e695dc)
  - [bruce gray on the weekly challenge](#orgff0efe4)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org5fada47)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org9cc9491)
    - [alternate approach to 2:](#org254e76e)
  - [rob ransbottom dropped by: rir](#orgee51256)
    - [playing with](#org26f8386)
    - [sather](#org6d81796)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org0081464)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org623e0d2)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org30d81f2)
  - [topicettes](#org6d7542e)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgadf0cef)
    - [raku vs python](#org52dad9c)
    - [regex stuff](#orgc5f0b44)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgef47034)
    - [future topicettes:](#org8f5bb61)
    - [jonathan worthington, cro-ing](#org9200945)
  - [announcments](#org4311f11)
    - [January 30th: next raku study group meeting](#orgb54bd46)
    - [February 5-6: FOSDEM Raku talks](#org7de9cbe)
    - [June 21-25: tprc: perl/raku conference](#orga8fb64c)


<a id="org71a01f5"></a>

# meeting notes January 30, 2022


<a id="org9d755a4"></a>

## the raku study group


<a id="org2b4eceb"></a>

### Don't Raku the boat


<a id="org783934d"></a>

## usual links


<a id="org2fff146"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orga5ddadf"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orga5d06f1"></a>

## talking about how the sv perl talk went:


<a id="orga7ad218"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org3e695dc"></a>

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


<a id="orgff0efe4"></a>

## bruce gray on the weekly challenge


<a id="org5fada47"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org9cc9491"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org254e76e"></a>

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


<a id="orgee51256"></a>

## rob ransbottom dropped by: rir


<a id="org26f8386"></a>

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


<a id="org6d81796"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org0081464"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org623e0d2"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org30d81f2"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org6d7542e"></a>

## topicettes


<a id="orgadf0cef"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org52dad9c"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc5f0b44"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgef47034"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org8f5bb61"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org9200945"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org4311f11"></a>

## announcments


<a id="orgb54bd46"></a>

### January 30th: next raku study group meeting


<a id="org7de9cbe"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orga8fb64c"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
