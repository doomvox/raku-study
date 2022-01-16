- [meeting notes January 16, 2022](#org7a02b90)
  - [the raku study group](#org5788e92)
  - [usual links](#org95565ea)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org4b17232)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org362269b)
    - [my talk:](#orgfda7349)
  - [bruce gray weekly challenge](#org01b9938)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org5e365aa)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org15feeaf)
    - [alternate approach to 2:](#orga2b766f)
  - [rob dropped by: rir](#org73836ac)
    - [playing with](#orga030186)
    - [sather](#org528bd8a)
    - [intro to raku ideas](#orgd5ac313)
  - [topicettes](#org66157f0)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org81241e7)
    - [some recommended raku talks](#orge86f3d1)
    - [raku vs python](#orgcd2aaf1)
    - [regex stuff](#orgc611435)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgb4b1984)
    - [custom associatives](#org32040df)
    - [future topicettes:](#org4848889)
    - [jonathan worthington, cro-ing](#orga2bb3fd)
  - [announcments](#orgc9e0978)
    - [January 30th: next raku study group meeting](#orgc9d2923)
    - [February 5-6: FOSDEM Raku talks](#org747c12e)
    - [June 21-25: tprc: perl/raku conference](#org836c0d7)


<a id="org7a02b90"></a>

# meeting notes January 16, 2022


<a id="org5788e92"></a>

## the raku study group


<a id="org95565ea"></a>

## usual links


<a id="org4b17232"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org362269b"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="orgfda7349"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org01b9938"></a>

## bruce gray weekly challenge


<a id="org5e365aa"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org15feeaf"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orga2b766f"></a>

### alternate approach to 2:

```sh
time raku -e 'constant @pents = map ->\n { n *(3*n - 1) div 2 }, 1..*;

my %p = @pents.head(2400).Set;
say @pents.head(2400).combinations(2).first({ %p{.sum} and %p{ [R-] .list } });'
```

(1560090 7042750) real 0m6.258s user 0m5.683s sys 0m0.157s


<a id="org73836ac"></a>

## rob dropped by: rir


<a id="orga030186"></a>

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


<a id="org528bd8a"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd5ac313"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org66157f0"></a>

## topicettes


<a id="org81241e7"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orge86f3d1"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgcd2aaf1"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc611435"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgb4b1984"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org32040df"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org4848889"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orga2bb3fd"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgc9e0978"></a>

## announcments


<a id="orgc9d2923"></a>

### January 30th: next raku study group meeting


<a id="org747c12e"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org836c0d7"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
