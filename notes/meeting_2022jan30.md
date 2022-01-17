- [meeting notes January 30, 2022](#org96ebe0b)
  - [the raku study group](#org313ddf1)
    - [Don't Raku the boat](#org683a016)
  - [usual links](#org25fc2d9)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orge31cd61)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org585f3c9)
  - [talking about how the sv perl talk went:](#org1687088)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org2150dd1)
    - [ideas for other things to cover:](#org22706a3)
  - [bruce gray on the weekly challenge](#org581e0f8)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orga13c054)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgbf0c1e1)
    - [alternate approach to 2:](#org391e7f6)
  - [rob ransbottom dropped by: rir](#orgc04e4bf)
    - [playing with](#org70338d3)
    - [sather](#orgb9c7fb4)
  - [topicettes](#orgbbbd3b8)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org5eb76da)
    - [raku vs python](#org21db4f7)
    - [regex stuff](#org7a42228)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org2a5a731)
    - [custom associatives](#orgedba327)
    - [future topicettes:](#org26f328b)
    - [jonathan worthington, cro-ing](#orgd997104)
  - [announcments](#orgb1ae4bc)
    - [January 30th: next raku study group meeting](#orge316db3)
    - [February 5-6: FOSDEM Raku talks](#org5642522)
    - [June 21-25: tprc: perl/raku conference](#orgb571165)


<a id="org96ebe0b"></a>

# meeting notes January 30, 2022


<a id="org313ddf1"></a>

## the raku study group


<a id="org683a016"></a>

### Don't Raku the boat


<a id="org25fc2d9"></a>

## usual links


<a id="orge31cd61"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org585f3c9"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org1687088"></a>

## talking about how the sv perl talk went:


<a id="org2150dd1"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org22706a3"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  

3.  junctions and hyper operators

    1.  from my slide for recommended raku talks
    
    2.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
        
        3.  Hyperoperators, Junctions, etc


<a id="org581e0f8"></a>

## bruce gray on the weekly challenge


<a id="orga13c054"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgbf0c1e1"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org391e7f6"></a>

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


<a id="orgc04e4bf"></a>

## rob ransbottom dropped by: rir


<a id="org70338d3"></a>

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


<a id="orgb9c7fb4"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgbbbd3b8"></a>

## topicettes


<a id="org5eb76da"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org21db4f7"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org7a42228"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org2a5a731"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgedba327"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org26f328b"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgd997104"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgb1ae4bc"></a>

## announcments


<a id="orge316db3"></a>

### January 30th: next raku study group meeting


<a id="org5642522"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgb571165"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
