- [meeting notes January 30, 2022](#org6715d4e)
  - [the raku study group](#org850f5e9)
    - [Don't Raku the boat](#org65764dc)
  - [usual links](#orgf719060)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgb0b6235)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgac87bd7)
  - [talking about how the sv perl talk went:](#orgbda396a)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orge91a303)
    - [ideas for other things to cover:](#org36230f9)
  - [bruce gray on the weekly challenge](#org4e36069)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgd0222a8)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org52147c0)
    - [alternate approach to 2:](#org0953a67)
  - [rob ransbottom dropped by: rir](#org1e62fc4)
    - [playing with](#org7d774aa)
    - [sather](#orgca84f06)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orga14159a)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orga20ca0e)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orgaca554d)
  - [topicettes](#orgb60727b)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org9bd3d0c)
    - [raku vs python](#orgff32cfb)
    - [regex stuff](#org6ceb164)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org5641a52)
    - [custom associatives](#orgd9aef08)
    - [future topicettes:](#org9566d77)
    - [jonathan worthington, cro-ing](#org212f0c4)
  - [announcments](#orgd149cab)
    - [January 30th: next raku study group meeting](#org0677af0)
    - [February 5-6: FOSDEM Raku talks](#org4fda647)
    - [June 21-25: tprc: perl/raku conference](#org30b2932)


<a id="org6715d4e"></a>

# meeting notes January 30, 2022


<a id="org850f5e9"></a>

## the raku study group


<a id="org65764dc"></a>

### Don't Raku the boat


<a id="orgf719060"></a>

## usual links


<a id="orgb0b6235"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgac87bd7"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgbda396a"></a>

## talking about how the sv perl talk went:


<a id="orge91a303"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org36230f9"></a>

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


<a id="org4e36069"></a>

## bruce gray on the weekly challenge


<a id="orgd0222a8"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org52147c0"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org0953a67"></a>

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


<a id="org1e62fc4"></a>

## rob ransbottom dropped by: rir


<a id="org7d774aa"></a>

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


<a id="orgca84f06"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orga14159a"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orga20ca0e"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orgaca554d"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgb60727b"></a>

## topicettes


<a id="org9bd3d0c"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgff32cfb"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org6ceb164"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org5641a52"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgd9aef08"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org9566d77"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org212f0c4"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgd149cab"></a>

## announcments


<a id="org0677af0"></a>

### January 30th: next raku study group meeting


<a id="org4fda647"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org30b2932"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
