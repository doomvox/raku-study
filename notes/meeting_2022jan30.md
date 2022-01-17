- [meeting notes January 30, 2022](#orgf2d483d)
  - [the raku study group](#orgff33cf1)
    - [Don't Raku the boat](#org2ee54c7)
  - [usual links](#org51d3e39)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org9d1e9ca)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgbc5bd2b)
  - [talking about how the sv perl talk went:](#orge6d57a9)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org50afe0f)
    - [ideas for other things to cover:](#org4dd9ca9)
  - [bruce gray on the weekly challenge](#orga9c64f4)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org0bad9cb)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org655e22e)
    - [alternate approach to 2:](#orgcbf8ec5)
  - [rob ransbottom dropped by: rir](#orgf4e95b4)
    - [playing with](#org6f88ce1)
    - [sather](#orgeab685f)
  - [taw the whiner does shallow looks (I mean "speed runs")](#orgd20c1c5)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgad7c9db)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orga202cf5)
  - [topicettes](#orgc7d2b23)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org074bed1)
    - [raku vs python](#org038bde5)
    - [regex stuff](#orgc40c57e)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org01c43b7)
    - [custom associatives](#org8c5e978)
    - [future topicettes:](#org27bd6ad)
    - [jonathan worthington, cro-ing](#org6094235)
  - [announcments](#org3202283)
    - [January 30th: next raku study group meeting](#org040a1bc)
    - [February 5-6: FOSDEM Raku talks](#org4a47f29)
    - [June 21-25: tprc: perl/raku conference](#org9c2d920)


<a id="orgf2d483d"></a>

# meeting notes January 30, 2022


<a id="orgff33cf1"></a>

## the raku study group


<a id="org2ee54c7"></a>

### Don't Raku the boat


<a id="org51d3e39"></a>

## usual links


<a id="org9d1e9ca"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgbc5bd2b"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orge6d57a9"></a>

## talking about how the sv perl talk went:


<a id="org50afe0f"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org4dd9ca9"></a>

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


<a id="orga9c64f4"></a>

## bruce gray on the weekly challenge


<a id="org0bad9cb"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org655e22e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgcbf8ec5"></a>

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


<a id="orgf4e95b4"></a>

## rob ransbottom dropped by: rir


<a id="org6f88ce1"></a>

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


<a id="orgeab685f"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd20c1c5"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgad7c9db"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orga202cf5"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgc7d2b23"></a>

## topicettes


<a id="org074bed1"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org038bde5"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc40c57e"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org01c43b7"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org8c5e978"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org27bd6ad"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org6094235"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org3202283"></a>

## announcments


<a id="org040a1bc"></a>

### January 30th: next raku study group meeting


<a id="org4a47f29"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org9c2d920"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
