- [meeting notes January 30, 2022](#orgc1bc6fc)
  - [the raku study group](#orgda48678)
    - [Don't Raku the boat](#org620b958)
  - [usual links](#org3d22506)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orge16d957)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgb7c9d95)
  - [talking about how the sv perl talk went:](#org5087cb5)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org09f9ace)
    - [ideas for other things to cover:](#orgc7133e4)
  - [bruce gray weekly challenge](#org5969076)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org7fb4b92)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org9533160)
    - [alternate approach to 2:](#orgc479c21)
  - [rob ransbottom dropped by: rir](#org328d2da)
    - [playing with](#org98844c7)
    - [sather](#org61b5e7b)
  - [topicettes](#org4e471dd)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org66adb15)
    - [some recommended raku talks](#orgbb62b1a)
    - [raku vs python](#org49de10d)
    - [regex stuff](#orgfe45c1a)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org3fb82d4)
    - [custom associatives](#org9b108ba)
    - [future topicettes:](#orgd067869)
    - [jonathan worthington, cro-ing](#org0648f76)
  - [announcments](#org27d25ab)
    - [January 30th: next raku study group meeting](#orgc6a49e9)
    - [February 5-6: FOSDEM Raku talks](#org923681e)
    - [June 21-25: tprc: perl/raku conference](#org147761a)


<a id="orgc1bc6fc"></a>

# meeting notes January 30, 2022


<a id="orgda48678"></a>

## the raku study group


<a id="org620b958"></a>

### Don't Raku the boat


<a id="org3d22506"></a>

## usual links


<a id="orge16d957"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgb7c9d95"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org5087cb5"></a>

## talking about how the sv perl talk went:


<a id="org09f9ace"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgc7133e4"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  


<a id="org5969076"></a>

## bruce gray weekly challenge


<a id="org7fb4b92"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org9533160"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgc479c21"></a>

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


<a id="org328d2da"></a>

## rob ransbottom dropped by: rir


<a id="org98844c7"></a>

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


<a id="org61b5e7b"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org4e471dd"></a>

## topicettes


<a id="org66adb15"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgbb62b1a"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org49de10d"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgfe45c1a"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org3fb82d4"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org9b108ba"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgd067869"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org0648f76"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org27d25ab"></a>

## announcments


<a id="orgc6a49e9"></a>

### January 30th: next raku study group meeting


<a id="org923681e"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org147761a"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
