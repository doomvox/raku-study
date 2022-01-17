- [meeting notes January 16, 2022](#orgf54cf95)
  - [the raku study group](#org2a4e48e)
  - [usual links](#orgc70b660)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org77a44e3)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org642da90)
  - [talking about how the sv perl talk went:](#org9c0ec3a)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org16e2301)
    - [ideas for other things to cover:](#orgc7f0a06)
  - [bruce gray on the weekly challenge](#orge998cf6)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org6d31144)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgcf02ccd)
    - [alternate approach to 2:](#org8058a92)
  - [rob ransbottom dropped by: rir](#org7cabef6)
    - [playing with](#org0cf842b)
    - [sather](#org2035147)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orgada8ffa)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org346066a)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org1d64003)
  - [topicettes](#orgcfead1c)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org4cd2f79)
    - [raku vs python](#org0b3ba5b)
    - [regex stuff](#orgd054cb2)
  - [old topics:](#org33306d2)
    - [custom associatives](#org6a64325)
    - [future topicettes:](#orgeed3b17)
    - [jonathan worthington, cro-ing](#orgc618b39)
    - [my talk:](#org19434ad)
  - [bruce gray weekly challenge](#orge344fd0)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgb09945a)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orge288643)
    - [alternate approach to 2:](#org92dcda3)
  - [rob ransbottom dropped by: rir](#org36f1b6a)
    - [playing with](#org1703833)
    - [sather](#org9af5e4b)
    - [intro to raku ideas](#org675d74e)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org5991984)
    - [some recommended raku talks](#org0a11a69)
    - [raku vs python](#org58cd43a)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org37acf55)
    - [getting sets to DWIM](#org915a09f)
    - [jonathan worthington, cro-ing](#orgd8170b2)
  - [announcments](#orge3d9e86)
    - [January 30th: next raku study group meeting](#orgd752c02)
    - [February 5-6: FOSDEM Raku talks](#orga9eb8c0)
    - [June 21-25: tprc: perl/raku conference](#orga280ba3)


<a id="orgf54cf95"></a>

# meeting notes January 16, 2022


<a id="org2a4e48e"></a>

## the raku study group


<a id="orgc70b660"></a>

## usual links


<a id="org77a44e3"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org642da90"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org9c0ec3a"></a>

## talking about how the sv perl talk went:


<a id="org16e2301"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgc7f0a06"></a>

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


<a id="orge998cf6"></a>

## bruce gray on the weekly challenge


<a id="org6d31144"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgcf02ccd"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org8058a92"></a>

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


<a id="org7cabef6"></a>

## rob ransbottom dropped by: rir


<a id="org0cf842b"></a>

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


<a id="org2035147"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgada8ffa"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org346066a"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org1d64003"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgcfead1c"></a>

## topicettes


<a id="org4cd2f79"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org0b3ba5b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgd054cb2"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org33306d2"></a>

## old topics:


<a id="org6a64325"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgeed3b17"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgc618b39"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org19434ad"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orge344fd0"></a>

## bruce gray weekly challenge


<a id="orgb09945a"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orge288643"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org92dcda3"></a>

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


<a id="org36f1b6a"></a>

## rob ransbottom dropped by: rir


<a id="org1703833"></a>

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


<a id="org9af5e4b"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org675d74e"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org5991984"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org0a11a69"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org58cd43a"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org37acf55"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org915a09f"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd8170b2"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orge3d9e86"></a>

## announcments


<a id="orgd752c02"></a>

### January 30th: next raku study group meeting


<a id="orga9eb8c0"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orga280ba3"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
