- [meeting notes January 30, 2022](#org0db2d78)
  - [the raku study group](#org8f8bcf1)
    - [Don't Raku the boat](#orge17280a)
  - [usual links](#orgf11b579)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org8fc2772)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgc276721)
  - [talking about how the sv perl talk went:](#org6aed885)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org0e3ada5)
    - [ideas for other things to cover:](#orgf0c25ef)
  - [bruce gray on the weekly challenge](#org8d1111c)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org822f0d4)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org4bc963d)
    - [alternate approach to 2:](#org95309ca)
  - [rob ransbottom dropped by: rir](#orgc834cdc)
    - [playing with](#org55c9381)
    - [sather](#orgb123e84)
  - [topicettes](#org9d6d35d)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org4121720)
    - [raku vs python](#org09eff06)
    - [regex stuff](#org296072d)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org64a1ec6)
    - [custom associatives](#org962aab9)
    - [future topicettes:](#org04162c2)
    - [jonathan worthington, cro-ing](#org0e8f79f)
  - [announcments](#orgd80df7d)
    - [January 30th: next raku study group meeting](#org08352b8)
    - [February 5-6: FOSDEM Raku talks](#org375faaa)
    - [June 21-25: tprc: perl/raku conference](#orgc22b7e4)


<a id="org0db2d78"></a>

# meeting notes January 30, 2022


<a id="org8f8bcf1"></a>

## the raku study group


<a id="orge17280a"></a>

### Don't Raku the boat


<a id="orgf11b579"></a>

## usual links


<a id="org8fc2772"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgc276721"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org6aed885"></a>

## talking about how the sv perl talk went:


<a id="org0e3ada5"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgf0c25ef"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  Some examples: <https://github.com/doomvox/raku-study/bin/2021feb28>
    
        1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
        
        3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    2.  from my slide for recommended raku talks
    
    3.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="org8d1111c"></a>

## bruce gray on the weekly challenge


<a id="org822f0d4"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org4bc963d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org95309ca"></a>

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


<a id="orgc834cdc"></a>

## rob ransbottom dropped by: rir


<a id="org55c9381"></a>

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


<a id="orgb123e84"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org9d6d35d"></a>

## topicettes


<a id="org4121720"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org09eff06"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org296072d"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org64a1ec6"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org962aab9"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org04162c2"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org0e8f79f"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgd80df7d"></a>

## announcments


<a id="org08352b8"></a>

### January 30th: next raku study group meeting


<a id="org375faaa"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgc22b7e4"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
