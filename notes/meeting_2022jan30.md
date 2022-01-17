- [meeting notes January 30, 2022](#org71b107f)
  - [the raku study group](#org7ed11f8)
    - [Don't Raku the boat](#org7069a61)
  - [usual links](#org6405418)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orga7936b2)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgb443907)
  - [talking about how the sv perl talk went:](#orgf4796d3)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgcf06f22)
    - [ideas for other things to cover:](#orgd5afcc1)
  - [bruce gray on the weekly challenge](#org19a8bfe)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgbef4be7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orga724544)
    - [alternate approach to 2:](#orgf86efdd)
  - [rob ransbottom dropped by: rir](#org80c56b3)
    - [playing with](#org655f848)
    - [sather](#org129bdf6)
  - [topicettes](#orgcbcf6bb)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org42ec0b7)
    - [raku vs python](#org63d05db)
    - [regex stuff](#org6c6ccbd)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orga33e8b9)
    - [custom associatives](#org8713c79)
    - [future topicettes:](#org1f4991b)
    - [jonathan worthington, cro-ing](#orgd588667)
  - [announcments](#org497b821)
    - [January 30th: next raku study group meeting](#org2ae9a59)
    - [February 5-6: FOSDEM Raku talks](#orgc48a6f0)
    - [June 21-25: tprc: perl/raku conference](#orgde38c10)


<a id="org71b107f"></a>

# meeting notes January 30, 2022


<a id="org7ed11f8"></a>

## the raku study group


<a id="org7069a61"></a>

### Don't Raku the boat


<a id="org6405418"></a>

## usual links


<a id="orga7936b2"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgb443907"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgf4796d3"></a>

## talking about how the sv perl talk went:


<a id="orgcf06f22"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgd5afcc1"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  

3.  my slide for recommended raku talks

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  includes:
        
            1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
            
            2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
            
            3.  Hyperoperators, Junctions, etc


<a id="org19a8bfe"></a>

## bruce gray on the weekly challenge


<a id="orgbef4be7"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orga724544"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgf86efdd"></a>

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


<a id="org80c56b3"></a>

## rob ransbottom dropped by: rir


<a id="org655f848"></a>

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


<a id="org129bdf6"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgcbcf6bb"></a>

## topicettes


<a id="org42ec0b7"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org63d05db"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org6c6ccbd"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orga33e8b9"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org8713c79"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org1f4991b"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd588667"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org497b821"></a>

## announcments


<a id="org2ae9a59"></a>

### January 30th: next raku study group meeting


<a id="orgc48a6f0"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgde38c10"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
