- [meeting notes January 30, 2022](#orgf05155d)
  - [the raku study group](#org293a58d)
    - [Don't Raku the boat](#org44618ab)
  - [usual links](#orgcbea706)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org114d05b)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org22c5c00)
  - [talking about how the sv perl talk went:](#org6a10582)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org31e81c3)
    - [ideas for other things to cover:](#orge8eb1ea)
  - [bruce gray on the weekly challenge](#orgeab5879)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org037db98)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org2b97950)
    - [alternate approach to 2:](#org829e8d0)
  - [rob ransbottom dropped by: rir](#orgc166864)
    - [playing with](#org95b6bac)
    - [sather](#org8473d9d)
  - [topicettes](#orgdd0e64d)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org6c5f772)
    - [raku vs python](#org9fc85c3)
    - [regex stuff](#orgf5ecc57)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org0fcc43d)
    - [custom associatives](#orga697b8c)
    - [future topicettes:](#org7599de4)
    - [jonathan worthington, cro-ing](#orgdcc7f20)
  - [announcments](#orgf73ee3e)
    - [January 30th: next raku study group meeting](#org1d1d2e8)
    - [February 5-6: FOSDEM Raku talks](#org4919243)
    - [June 21-25: tprc: perl/raku conference](#org625e6ea)


<a id="orgf05155d"></a>

# meeting notes January 30, 2022


<a id="org293a58d"></a>

## the raku study group


<a id="org44618ab"></a>

### Don't Raku the boat


<a id="orgcbea706"></a>

## usual links


<a id="org114d05b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org22c5c00"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org6a10582"></a>

## talking about how the sv perl talk went:


<a id="org31e81c3"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orge8eb1ea"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators

    1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
    
    3.  from my slide for recommended raku talks
    
    4.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="orgeab5879"></a>

## bruce gray on the weekly challenge


<a id="org037db98"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org2b97950"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org829e8d0"></a>

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


<a id="orgc166864"></a>

## rob ransbottom dropped by: rir


<a id="org95b6bac"></a>

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


<a id="org8473d9d"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgdd0e64d"></a>

## topicettes


<a id="org6c5f772"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org9fc85c3"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgf5ecc57"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org0fcc43d"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orga697b8c"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org7599de4"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgdcc7f20"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf73ee3e"></a>

## announcments


<a id="org1d1d2e8"></a>

### January 30th: next raku study group meeting


<a id="org4919243"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org625e6ea"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
