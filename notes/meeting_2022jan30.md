- [meeting notes January 30, 2022](#org1ee76b2)
  - [the raku study group](#org1b7c4e1)
    - [Don't Raku the boat](#org5f0d4a4)
  - [usual links](#orge18a378)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org231bf72)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org095b011)
  - [talking about how the sv perl talk went:](#orge744a29)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org65c091c)
    - [ideas for other things to cover:](#org6199b34)
  - [bruce gray on the weekly challenge](#orgc4f4d69)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgbe0c8b3)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org00944c1)
    - [alternate approach to 2:](#org0345168)
  - [rob ransbottom dropped by: rir](#orgc490d80)
    - [playing with](#org5ae42ec)
    - [sather](#orgb041cba)
  - [topicettes](#org9dcc3b2)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgb05e4fa)
    - [raku vs python](#orgd3b39da)
    - [regex stuff](#org76d9fca)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org066ff86)
    - [custom associatives](#org296f5c5)
    - [future topicettes:](#orga5856f0)
    - [jonathan worthington, cro-ing](#org26fc41e)
  - [announcments](#org280c029)
    - [January 30th: next raku study group meeting](#org0ca32a0)
    - [February 5-6: FOSDEM Raku talks](#orgd5a482c)
    - [June 21-25: tprc: perl/raku conference](#org5857ded)


<a id="org1ee76b2"></a>

# meeting notes January 30, 2022


<a id="org1b7c4e1"></a>

## the raku study group


<a id="org5f0d4a4"></a>

### Don't Raku the boat


<a id="orge18a378"></a>

## usual links


<a id="org231bf72"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org095b011"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orge744a29"></a>

## talking about how the sv perl talk went:


<a id="org65c091c"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org6199b34"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  

3.  junctions and hyper operators

    1.  from my slide for recommended raku talks
    
    2.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
        
        3.  Hyperoperators, Junctions, etc


<a id="orgc4f4d69"></a>

## bruce gray on the weekly challenge


<a id="orgbe0c8b3"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org00944c1"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org0345168"></a>

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


<a id="orgc490d80"></a>

## rob ransbottom dropped by: rir


<a id="org5ae42ec"></a>

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


<a id="orgb041cba"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org9dcc3b2"></a>

## topicettes


<a id="orgb05e4fa"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgd3b39da"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org76d9fca"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org066ff86"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org296f5c5"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orga5856f0"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org26fc41e"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org280c029"></a>

## announcments


<a id="org0ca32a0"></a>

### January 30th: next raku study group meeting


<a id="orgd5a482c"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org5857ded"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
