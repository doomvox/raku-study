- [meeting notes January 16, 2022](#org8511274)
  - [the raku study group](#orga62672b)
  - [usual links](#org96eab36)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org5a6bc6b)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgc0f6091)
    - [my talk:](#org66ae313)
  - [bruce gray weekly challenge](#org0c941c8)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org0507f94)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orge81be1f)
    - [alternate approach to 2:](#org19ce392)
  - [rob ransbottom dropped by: rir](#orgb0b69b5)
    - [playing with](#org81dffe4)
    - [sather](#org776ffce)
    - [intro to raku ideas](#org0b6a837)
  - [topicettes](#org77e067e)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orge7fcc9a)
    - [some recommended raku talks](#orgcc1a721)
    - [raku vs python](#org72495c0)
    - [regex stuff](#org6241081)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orga1f8155)
    - [custom associatives](#org02a62d7)
    - [future topicettes:](#org3fc0347)
    - [jonathan worthington, cro-ing](#orgac6cb28)
  - [announcments](#orge928e59)
    - [January 30th: next raku study group meeting](#orga5e4350)
    - [February 5-6: FOSDEM Raku talks](#org0c038cb)
    - [June 21-25: tprc: perl/raku conference](#org7e55245)


<a id="org8511274"></a>

# meeting notes January 16, 2022


<a id="orga62672b"></a>

## the raku study group


<a id="org96eab36"></a>

## usual links


<a id="org5a6bc6b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgc0f6091"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org66ae313"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org0c941c8"></a>

## bruce gray weekly challenge


<a id="org0507f94"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orge81be1f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org19ce392"></a>

### alternate approach to 2:

```sh
time raku -e 'constant @pents = map ->\n { n *(3*n - 1) div 2 }, 1..*;

my %p = @pents.head(2400).Set;
say @pents.head(2400).combinations(2).first({ %p{.sum} and %p{ [R-] .list } });'
```

1.  result:

    (1560090 7042750) real 0m6.258s user 0m5.683s sys 0m0.157s


<a id="orgb0b69b5"></a>

## rob ransbottom dropped by: rir


<a id="org81dffe4"></a>

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


<a id="org776ffce"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org0b6a837"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org77e067e"></a>

## topicettes


<a id="orge7fcc9a"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgcc1a721"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org72495c0"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org6241081"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orga1f8155"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org02a62d7"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org3fc0347"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgac6cb28"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orge928e59"></a>

## announcments


<a id="orga5e4350"></a>

### January 30th: next raku study group meeting


<a id="org0c038cb"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org7e55245"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
