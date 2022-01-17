- [meeting notes January 16, 2022](#org155d063)
  - [the raku study group](#org0541121)
  - [usual links](#org2ef53a3)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org7a33ded)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgcf6bc06)
  - [talking about how the sv perl talk went:](#org428c798)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgb69ad55)
    - [ideas for other things to cover:](#org8c08e2e)
  - [bruce gray on the weekly challenge](#org2ce0ebe)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org5fbf283)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org19e7024)
    - [alternate approach to 2:](#org57c0a1f)
  - [rob ransbottom dropped by: rir](#orgf511feb)
    - [playing with](#org8a7c115)
    - [sather](#org8160668)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org37857b0)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org9363b48)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org07a91c2)
  - [topicettes](#orgd6b02ec)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org051e066)
    - [raku vs python](#org8cf1ccf)
    - [regex stuff](#orgdf270c9)
  - [old topics:](#org5072163)
    - [custom associatives](#orgdb5fd9f)
    - [future topicettes:](#org58d6f82)
    - [jonathan worthington, cro-ing](#org40815d7)
    - [my talk:](#orgecb0feb)
  - [bruce gray weekly challenge](#org24fe842)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org5b1a695)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org1dd5c1c)
    - [alternate approach to 2:](#org96dc150)
  - [rob ransbottom dropped by: rir](#org41a4e0d)
    - [playing with](#org9537fe7)
    - [sather](#org7ec93d8)
    - [intro to raku ideas](#orgd831623)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org85ef3bf)
    - [some recommended raku talks](#org4dc4e2b)
    - [raku vs python](#orga037e6c)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orge2892b1)
    - [getting sets to DWIM](#org81277c7)
    - [jonathan worthington, cro-ing](#org611942a)
  - [announcments](#orgd664312)
    - [January 30th: next raku study group meeting](#org662e976)
    - [February 5-6: FOSDEM Raku talks](#org9fc5abb)
    - [June 21-25: tprc: perl/raku conference](#orgc5cd77f)


<a id="org155d063"></a>

# meeting notes January 16, 2022


<a id="org0541121"></a>

## the raku study group


<a id="org2ef53a3"></a>

## usual links


<a id="org7a33ded"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgcf6bc06"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org428c798"></a>

## talking about how the sv perl talk went:


<a id="orgb69ad55"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org8c08e2e"></a>

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


<a id="org2ce0ebe"></a>

## bruce gray on the weekly challenge


<a id="org5fbf283"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org19e7024"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org57c0a1f"></a>

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


<a id="orgf511feb"></a>

## rob ransbottom dropped by: rir


<a id="org8a7c115"></a>

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


<a id="org8160668"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org37857b0"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org9363b48"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org07a91c2"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgd6b02ec"></a>

## topicettes


<a id="org051e066"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org8cf1ccf"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgdf270c9"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org5072163"></a>

## old topics:


<a id="orgdb5fd9f"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org58d6f82"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org40815d7"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgecb0feb"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org24fe842"></a>

## bruce gray weekly challenge


<a id="org5b1a695"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org1dd5c1c"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org96dc150"></a>

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


<a id="org41a4e0d"></a>

## rob ransbottom dropped by: rir


<a id="org9537fe7"></a>

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


<a id="org7ec93d8"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd831623"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org85ef3bf"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org4dc4e2b"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orga037e6c"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orge2892b1"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org81277c7"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org611942a"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgd664312"></a>

## announcments


<a id="org662e976"></a>

### January 30th: next raku study group meeting


<a id="org9fc5abb"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgc5cd77f"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
