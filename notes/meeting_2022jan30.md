- [meeting notes January 30, 2022](#orgc758528)
  - [the raku study group](#orgf308742)
    - [Don't Raku the boat](#org83ae6cb)
  - [usual links](#org4d3dadf)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org273b30f)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org548724d)
  - [talking about how the sv perl talk went:](#org546aea3)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgf5a7c11)
    - [ideas for other things to cover:](#orgba68a1f)
  - [bruce gray on the weekly challenge](#orgad8c73a)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org6880560)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org5afd0f2)
    - [alternate approach to 2:](#org392e7a6)
  - [rob ransbottom dropped by: rir](#orge367b7d)
    - [playing with](#orge760052)
    - [sather](#org7aeefa7)
  - [topicettes](#orgd134bfb)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org3f83ad8)
    - [raku vs python](#orgc5669e6)
    - [regex stuff](#org1c53a71)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org3a2db21)
    - [custom associatives](#orgfa1ea47)
    - [future topicettes:](#org7209bd4)
    - [jonathan worthington, cro-ing](#orgca0e708)
  - [announcments](#org7f91188)
    - [January 30th: next raku study group meeting](#org47969ec)
    - [February 5-6: FOSDEM Raku talks](#org17f5187)
    - [June 21-25: tprc: perl/raku conference](#org60b6914)


<a id="orgc758528"></a>

# meeting notes January 30, 2022


<a id="orgf308742"></a>

## the raku study group


<a id="org83ae6cb"></a>

### Don't Raku the boat


<a id="org4d3dadf"></a>

## usual links


<a id="org273b30f"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org548724d"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org546aea3"></a>

## talking about how the sv perl talk went:


<a id="orgf5a7c11"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgba68a1f"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
    
    3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    4.  from my slide for recommended raku talks
    
    5.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="orgad8c73a"></a>

## bruce gray on the weekly challenge


<a id="org6880560"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org5afd0f2"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org392e7a6"></a>

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


<a id="orge367b7d"></a>

## rob ransbottom dropped by: rir


<a id="orge760052"></a>

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


<a id="org7aeefa7"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd134bfb"></a>

## topicettes


<a id="org3f83ad8"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgc5669e6"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org1c53a71"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org3a2db21"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgfa1ea47"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org7209bd4"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgca0e708"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7f91188"></a>

## announcments


<a id="org47969ec"></a>

### January 30th: next raku study group meeting


<a id="org17f5187"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org60b6914"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
