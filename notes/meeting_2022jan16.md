- [meeting notes January 16, 2022](#org945c1d3)
  - [the raku study group](#orgf80924e)
  - [usual links](#org2783c8d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#orga0dc8f6)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org5b6ce16)
  - [talking about how the sv perl talk went:](#org2e26c82)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org472bbb7)
    - [ideas for other things to cover:](#orgf314bd6)
  - [bruce gray on the weekly challenge](#orgb4cbf56)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org28fd9dc)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgad0c4a8)
    - [alternate approach to 2:](#orgc2c56ac)
  - [rob ransbottom dropped by: rir](#org41a5b18)
    - [playing with](#orgf1931d7)
    - [sather](#org5a1c8a3)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orgf46b780)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org6af7bff)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org2e99167)
  - [topicettes](#org3099a3e)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org7575a47)
    - [raku vs python](#org4a54fe8)
    - [regex stuff](#org6a954f0)
  - [old topics:](#orgd699fe0)
    - [custom associatives](#orgc636453)
    - [future topicettes:](#org35f4adb)
    - [jonathan worthington, cro-ing](#org6580e49)
    - [my talk:](#org32fc353)
  - [bruce gray weekly challenge](#orgaaa90f2)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org637e1d9)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org0089ef8)
    - [alternate approach to 2:](#org304558b)
  - [rob ransbottom dropped by: rir](#org0891afa)
    - [playing with](#orgf4456cd)
    - [sather](#org60c2e62)
    - [intro to raku ideas](#org13c39a3)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org324fe99)
    - [some recommended raku talks](#orgd39da8f)
    - [raku vs python](#org7c34a4b)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgb4de419)
    - [getting sets to DWIM](#org9eff5de)
    - [jonathan worthington, cro-ing](#orgf2d32ba)
  - [announcments](#org9c5e38c)
    - [January 30th: next raku study group meeting](#org6ef1059)
    - [February 5-6: FOSDEM Raku talks](#orga79ee99)
    - [June 21-25: tprc: perl/raku conference](#org01b28f9)


<a id="org945c1d3"></a>

# meeting notes January 16, 2022


<a id="orgf80924e"></a>

## the raku study group


<a id="org2783c8d"></a>

## usual links


<a id="orga0dc8f6"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org5b6ce16"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org2e26c82"></a>

## talking about how the sv perl talk went:


<a id="org472bbb7"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgf314bd6"></a>

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


<a id="orgb4cbf56"></a>

## bruce gray on the weekly challenge


<a id="org28fd9dc"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgad0c4a8"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgc2c56ac"></a>

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


<a id="org41a5b18"></a>

## rob ransbottom dropped by: rir


<a id="orgf1931d7"></a>

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


<a id="org5a1c8a3"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgf46b780"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org6af7bff"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org2e99167"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org3099a3e"></a>

## topicettes


<a id="org7575a47"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org4a54fe8"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org6a954f0"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgd699fe0"></a>

## old topics:


<a id="orgc636453"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org35f4adb"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org6580e49"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org32fc353"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgaaa90f2"></a>

## bruce gray weekly challenge


<a id="org637e1d9"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org0089ef8"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org304558b"></a>

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


<a id="org0891afa"></a>

## rob ransbottom dropped by: rir


<a id="orgf4456cd"></a>

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


<a id="org60c2e62"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org13c39a3"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org324fe99"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgd39da8f"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org7c34a4b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgb4de419"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org9eff5de"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgf2d32ba"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org9c5e38c"></a>

## announcments


<a id="org6ef1059"></a>

### January 30th: next raku study group meeting


<a id="orga79ee99"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org01b28f9"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
