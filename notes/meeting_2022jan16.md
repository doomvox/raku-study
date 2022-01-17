- [meeting notes January 16, 2022](#org6676977)
  - [the raku study group](#orga016ee8)
  - [usual links](#orgc64cb21)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org408df47)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org29487ed)
  - [talking about how the sv perl talk went:](#org62d6e35)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org7540a33)
    - [ideas for other things to cover:](#org19c5510)
  - [bruce gray on the weekly challenge](#org999746f)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org20d4de1)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org5d3c9ab)
    - [alternate approach to 2:](#orgd5f81bd)
  - [rob ransbottom dropped by: rir](#org336fe0a)
    - [playing with](#org633443e)
    - [sather](#orge12cbc2)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orge88b19f)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org3d74a41)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orgc1f1622)
  - [topicettes](#org4d2eda7)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgede292f)
    - [raku vs python](#org568810b)
    - [regex stuff](#orgf1b20d9)
  - [old topics:](#orgd04b1f2)
    - [custom associatives](#org79833d9)
    - [future topicettes:](#org6ab95f4)
    - [jonathan worthington, cro-ing](#orge7f7abf)
    - [my talk:](#orga2c5113)
  - [bruce gray weekly challenge](#org729fa14)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org1160ca3)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org2ff45ff)
    - [alternate approach to 2:](#org97d2e36)
  - [rob ransbottom dropped by: rir](#org4a1062a)
    - [playing with](#orge63c211)
    - [sather](#org6b34ec0)
    - [intro to raku ideas](#org86120b8)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org407d8b0)
    - [some recommended raku talks](#org00f0692)
    - [raku vs python](#org124548a)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org4f675c9)
    - [getting sets to DWIM](#org72571e4)
    - [jonathan worthington, cro-ing](#orgcde50bd)
  - [announcments](#orga118bbf)
    - [January 30th: next raku study group meeting](#org21e6bc6)
    - [February 5-6: FOSDEM Raku talks](#org0f15ff9)
    - [June 21-25: tprc: perl/raku conference](#org3231d56)


<a id="org6676977"></a>

# meeting notes January 16, 2022


<a id="orga016ee8"></a>

## the raku study group


<a id="orgc64cb21"></a>

## usual links


<a id="org408df47"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org29487ed"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org62d6e35"></a>

## talking about how the sv perl talk went:


<a id="org7540a33"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org19c5510"></a>

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


<a id="org999746f"></a>

## bruce gray on the weekly challenge


<a id="org20d4de1"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org5d3c9ab"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgd5f81bd"></a>

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


<a id="org336fe0a"></a>

## rob ransbottom dropped by: rir


<a id="org633443e"></a>

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


<a id="orge12cbc2"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orge88b19f"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org3d74a41"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orgc1f1622"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org4d2eda7"></a>

## topicettes


<a id="orgede292f"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org568810b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgf1b20d9"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgd04b1f2"></a>

## old topics:


<a id="org79833d9"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org6ab95f4"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orge7f7abf"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orga2c5113"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org729fa14"></a>

## bruce gray weekly challenge


<a id="org1160ca3"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org2ff45ff"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org97d2e36"></a>

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


<a id="org4a1062a"></a>

## rob ransbottom dropped by: rir


<a id="orge63c211"></a>

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


<a id="org6b34ec0"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org86120b8"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org407d8b0"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org00f0692"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org124548a"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org4f675c9"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org72571e4"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgcde50bd"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orga118bbf"></a>

## announcments


<a id="org21e6bc6"></a>

### January 30th: next raku study group meeting


<a id="org0f15ff9"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org3231d56"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
