- [meeting notes January 30, 2022](#orgd68110e)
  - [the raku study group](#org84cf3ee)
    - [Don't Raku the boat](#org08fe18d)
  - [usual links](#org73d580e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org98c00ed)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org2607a37)
  - [talking about how the sv perl talk went:](#org9773d90)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org9aa13ff)
    - [ideas for other things to cover:](#org2b93d2f)
  - [bruce gray on the weekly challenge](#orgba6613b)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgffec52a)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orga649cbe)
    - [alternate approach to 2:](#org762be86)
  - [rob ransbottom dropped by: rir](#org6d3ec13)
    - [playing with](#org0637058)
    - [sather](#org445b5e3)
  - [topicettes](#orgef8046f)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgb7c88c3)
    - [some recommended raku talks](#orga78d691)
    - [raku vs python](#orgcf64072)
    - [regex stuff](#org57e9e5d)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org724dcbb)
    - [custom associatives](#org2b1d4e2)
    - [future topicettes:](#orgc6c51a4)
    - [jonathan worthington, cro-ing](#org757466f)
  - [announcments](#org4779a0c)
    - [January 30th: next raku study group meeting](#org6283df4)
    - [February 5-6: FOSDEM Raku talks](#org5128e79)
    - [June 21-25: tprc: perl/raku conference](#orge6b9020)


<a id="orgd68110e"></a>

# meeting notes January 30, 2022


<a id="org84cf3ee"></a>

## the raku study group


<a id="org08fe18d"></a>

### Don't Raku the boat


<a id="org73d580e"></a>

## usual links


<a id="org98c00ed"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org2607a37"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org9773d90"></a>

## talking about how the sv perl talk went:


<a id="org9aa13ff"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org2b93d2f"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  


<a id="orgba6613b"></a>

## bruce gray on the weekly challenge


<a id="orgffec52a"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orga649cbe"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org762be86"></a>

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


<a id="org6d3ec13"></a>

## rob ransbottom dropped by: rir


<a id="org0637058"></a>

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


<a id="org445b5e3"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgef8046f"></a>

## topicettes


<a id="orgb7c88c3"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orga78d691"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgcf64072"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org57e9e5d"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org724dcbb"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org2b1d4e2"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgc6c51a4"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org757466f"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org4779a0c"></a>

## announcments


<a id="org6283df4"></a>

### January 30th: next raku study group meeting


<a id="org5128e79"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orge6b9020"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
