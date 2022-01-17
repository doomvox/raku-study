- [meeting notes January 30, 2022](#org46378bd)
  - [the raku study group](#org98b2f7a)
    - [Don't Raku the boat](#org4d1a3c0)
  - [usual links](#org5e91f60)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org87a7501)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org1cf682e)
  - [talking about how the sv perl talk went:](#orgc754442)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgb083143)
    - [ideas for other things to cover:](#orgdf24df9)
  - [bruce gray on the weekly challenge](#org78bd29f)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgdc43688)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgf3c6c34)
    - [alternate approach to 2:](#org220cd28)
  - [rob ransbottom dropped by: rir](#orgcfa3f45)
    - [playing with](#orgc652289)
    - [sather](#org57e7fb6)
  - [topicettes](#org66182f6)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org67c09c3)
    - [raku vs python](#org73865f1)
    - [regex stuff](#orgf5ec871)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org4e5405a)
    - [custom associatives](#orgeaed934)
    - [future topicettes:](#orgbf51341)
    - [jonathan worthington, cro-ing](#orgcdd6835)
  - [announcments](#orgd9db099)
    - [January 30th: next raku study group meeting](#org34e81ba)
    - [February 5-6: FOSDEM Raku talks](#orgf054a84)
    - [June 21-25: tprc: perl/raku conference](#org5897428)


<a id="org46378bd"></a>

# meeting notes January 30, 2022


<a id="org98b2f7a"></a>

## the raku study group


<a id="org4d1a3c0"></a>

### Don't Raku the boat


<a id="org5e91f60"></a>

## usual links


<a id="org87a7501"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org1cf682e"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgc754442"></a>

## talking about how the sv perl talk went:


<a id="orgb083143"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgdf24df9"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  

3.  junctions and hyper operators

    1.  from my slide for recommended raku talks
    
    2.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="org78bd29f"></a>

## bruce gray on the weekly challenge


<a id="orgdc43688"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgf3c6c34"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org220cd28"></a>

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


<a id="orgcfa3f45"></a>

## rob ransbottom dropped by: rir


<a id="orgc652289"></a>

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


<a id="org57e7fb6"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org66182f6"></a>

## topicettes


<a id="org67c09c3"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org73865f1"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgf5ec871"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org4e5405a"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgeaed934"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgbf51341"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgcdd6835"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgd9db099"></a>

## announcments


<a id="org34e81ba"></a>

### January 30th: next raku study group meeting


<a id="orgf054a84"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org5897428"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
