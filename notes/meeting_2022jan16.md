- [meeting notes January 16, 2022](#org93302c4)
  - [the raku study group](#org738a532)
  - [usual links](#org2a1553f)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#orgce0b768)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org191c398)
  - [talking about how the sv perl talk went:](#org596094e)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgb631df8)
    - [ideas for other things to cover:](#orgb885ffe)
  - [bruce gray on the weekly challenge](#orgb27420e)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org6b6111f)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgcc8cebd)
    - [alternate approach to 2:](#orgd311de1)
  - [rob ransbottom dropped by: rir](#org5b851ba)
    - [playing with](#org8de68ff)
    - [sather](#org0077a74)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orge1ec895)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org1334ca3)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orgd8f1086)
  - [topicettes](#org29a2067)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgf464a20)
    - [raku vs python](#orgfcb3d4a)
    - [regex stuff](#orgf90c328)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org5ba2b35)
    - [custom associatives](#org21fae19)
    - [future topicettes:](#orgf7e128a)
    - [jonathan worthington, cro-ing](#orgea81257)
    - [my talk:](#org4f8f773)
  - [bruce gray weekly challenge](#orgd492023)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org18aee2d)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org617c478)
    - [alternate approach to 2:](#org1108210)
  - [rob ransbottom dropped by: rir](#org2a60028)
    - [playing with](#org1dfe0c8)
    - [sather](#org63fad1e)
    - [intro to raku ideas](#orgb5db613)
  - [topicettes](#orgb2d2480)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org9d4080d)
    - [some recommended raku talks](#org6ececc7)
    - [raku vs python](#org9eae09d)
    - [regex stuff](#orgd60a16d)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orge730486)
    - [future topicettes:](#orge34e67f)
    - [jonathan worthington, cro-ing](#org348816f)
  - [announcments](#org1b2731f)
    - [January 30th: next raku study group meeting](#orgd8a9a73)
    - [February 5-6: FOSDEM Raku talks](#orgc0333f3)
    - [June 21-25: tprc: perl/raku conference](#org6c9c5f1)


<a id="org93302c4"></a>

# meeting notes January 16, 2022


<a id="org738a532"></a>

## the raku study group


<a id="org2a1553f"></a>

## usual links


<a id="orgce0b768"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org191c398"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org596094e"></a>

## talking about how the sv perl talk went:


<a id="orgb631df8"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgb885ffe"></a>

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


<a id="orgb27420e"></a>

## bruce gray on the weekly challenge


<a id="org6b6111f"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgcc8cebd"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgd311de1"></a>

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


<a id="org5b851ba"></a>

## rob ransbottom dropped by: rir


<a id="org8de68ff"></a>

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


<a id="org0077a74"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orge1ec895"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org1334ca3"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orgd8f1086"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org29a2067"></a>

## topicettes


<a id="orgf464a20"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgfcb3d4a"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgf90c328"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org5ba2b35"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org21fae19"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgf7e128a"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgea81257"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org4f8f773"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgd492023"></a>

## bruce gray weekly challenge


<a id="org18aee2d"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org617c478"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org1108210"></a>

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


<a id="org2a60028"></a>

## rob ransbottom dropped by: rir


<a id="org1dfe0c8"></a>

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


<a id="org63fad1e"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgb5db613"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgb2d2480"></a>

## topicettes


<a id="org9d4080d"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org6ececc7"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org9eae09d"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgd60a16d"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orge730486"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orge34e67f"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org348816f"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org1b2731f"></a>

## announcments


<a id="orgd8a9a73"></a>

### January 30th: next raku study group meeting


<a id="orgc0333f3"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org6c9c5f1"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
