- [meeting notes January 30, 2022](#org36d1b05)
  - [the raku study group](#org4ec5252)
    - [Raku the boat ashore, you.](#org07d2c75)
  - [usual links](#orgfef8765)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org5619390)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org1ed4045)
    - [my talk:](#org169050c)
  - [bruce gray weekly challenge](#org321cc07)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgc9c86a0)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org2611de2)
    - [alternate approach to 2:](#orgd7c08a7)
  - [rob ransbottom dropped by: rir](#org8b8fd44)
    - [playing with](#org0b804b8)
    - [sather](#orgb5158c1)
    - [intro to raku ideas](#orgd7dd1fe)
  - [topicettes](#orgc3ee04b)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org99af732)
    - [some recommended raku talks](#org3dbd175)
    - [raku vs python](#org1c61ca0)
    - [regex stuff](#org00738ea)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgc612e41)
    - [custom associatives](#org5303653)
    - [future topicettes:](#orgcb8714c)
    - [jonathan worthington, cro-ing](#orge72dfbc)
  - [announcments](#org7960b42)
    - [January 30th: next raku study group meeting](#org30a5907)
    - [February 5-6: FOSDEM Raku talks](#org9ed7d52)
    - [June 21-25: tprc: perl/raku conference](#org458c021)


<a id="org36d1b05"></a>

# meeting notes January 30, 2022


<a id="org4ec5252"></a>

## the raku study group


<a id="org07d2c75"></a>

### Raku the boat ashore, you.


<a id="orgfef8765"></a>

## usual links


<a id="org5619390"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org1ed4045"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org169050c"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org321cc07"></a>

## bruce gray weekly challenge


<a id="orgc9c86a0"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org2611de2"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgd7c08a7"></a>

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


<a id="org8b8fd44"></a>

## rob ransbottom dropped by: rir


<a id="org0b804b8"></a>

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


<a id="orgb5158c1"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgd7dd1fe"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgc3ee04b"></a>

## topicettes


<a id="org99af732"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org3dbd175"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org1c61ca0"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org00738ea"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgc612e41"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org5303653"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgcb8714c"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orge72dfbc"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7960b42"></a>

## announcments


<a id="org30a5907"></a>

### January 30th: next raku study group meeting


<a id="org9ed7d52"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org458c021"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
