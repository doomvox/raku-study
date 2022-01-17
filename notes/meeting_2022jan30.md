- [meeting notes January 30, 2022](#org57ff305)
  - [the raku study group](#org45475c3)
    - [Don't Raku the boat](#org24bec44)
  - [usual links](#org29eaf03)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org498b788)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgdcd9da2)
  - [talking about how the sv perl talk went:](#orgbbdb975)
  - [bruce gray weekly challenge](#org37d20c9)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org66e9733)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org72e11c1)
    - [alternate approach to 2:](#org2232ef3)
  - [rob ransbottom dropped by: rir](#org19b6f2d)
    - [playing with](#org898daad)
    - [sather](#org3031e2e)
    - [intro to raku ideas](#org0c8e45c)
  - [topicettes](#orgfe2c24c)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org267ebd6)
    - [some recommended raku talks](#orgef4f187)
    - [raku vs python](#orgc8da8b6)
    - [regex stuff](#org89baaa9)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgfbbf0da)
    - [custom associatives](#org2855787)
    - [future topicettes:](#org40f5497)
    - [jonathan worthington, cro-ing](#org3afb2a4)
  - [announcments](#orgda1a3dc)
    - [January 30th: next raku study group meeting](#org220f38c)
    - [February 5-6: FOSDEM Raku talks](#org4efcdd6)
    - [June 21-25: tprc: perl/raku conference](#org4573fe4)


<a id="org57ff305"></a>

# meeting notes January 30, 2022


<a id="org45475c3"></a>

## the raku study group


<a id="org24bec44"></a>

### Don't Raku the boat


<a id="org29eaf03"></a>

## usual links


<a id="org498b788"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgdcd9da2"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgbbdb975"></a>

## talking about how the sv perl talk went:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org37d20c9"></a>

## bruce gray weekly challenge


<a id="org66e9733"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org72e11c1"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org2232ef3"></a>

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


<a id="org19b6f2d"></a>

## rob ransbottom dropped by: rir


<a id="org898daad"></a>

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


<a id="org3031e2e"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org0c8e45c"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgfe2c24c"></a>

## topicettes


<a id="org267ebd6"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgef4f187"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgc8da8b6"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org89baaa9"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgfbbf0da"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org2855787"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org40f5497"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org3afb2a4"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgda1a3dc"></a>

## announcments


<a id="org220f38c"></a>

### January 30th: next raku study group meeting


<a id="org4efcdd6"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org4573fe4"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
