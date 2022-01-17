- [meeting notes January 30, 2022](#org631f32e)
  - [the raku study group](#org08ed056)
    - [Don't Raku the boat](#orgf69b0fd)
  - [usual links](#orgd713b3c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org5ad4748)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgabbae8a)
  - [talking about how the sv perl talk went:](#orgef16583)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgd620d78)
    - [ideas for other things to cover:](#org45eb8c4)
  - [bruce gray on the weekly challenge](#orgb53170b)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org0f842b9)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org1fc52a3)
    - [alternate approach to 2:](#org77a776f)
  - [rob ransbottom dropped by: rir](#orge9eef13)
    - [playing with](#orgf4f0f3d)
    - [sather](#orgf8949bc)
  - [topicettes](#org4e7cf09)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org66a7778)
    - [raku vs python](#org496e32b)
    - [regex stuff](#org70ca6b3)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org782f601)
    - [custom associatives](#org7960e07)
    - [future topicettes:](#org769f249)
    - [jonathan worthington, cro-ing](#orgf24c1f3)
  - [announcments](#org30438a5)
    - [January 30th: next raku study group meeting](#orgcc8459f)
    - [February 5-6: FOSDEM Raku talks](#org015d760)
    - [June 21-25: tprc: perl/raku conference](#orgeb320a5)


<a id="org631f32e"></a>

# meeting notes January 30, 2022


<a id="org08ed056"></a>

## the raku study group


<a id="orgf69b0fd"></a>

### Don't Raku the boat


<a id="orgd713b3c"></a>

## usual links


<a id="org5ad4748"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgabbae8a"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgef16583"></a>

## talking about how the sv perl talk went:


<a id="orgd620d78"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org45eb8c4"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  Some examples: <https://github.com/doomvox/raku-study/bin/2021feb28>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
    
    3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
    
    4.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    5.  from my slide for recommended raku talks
    
    6.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="orgb53170b"></a>

## bruce gray on the weekly challenge


<a id="org0f842b9"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org1fc52a3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org77a776f"></a>

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


<a id="orge9eef13"></a>

## rob ransbottom dropped by: rir


<a id="orgf4f0f3d"></a>

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


<a id="orgf8949bc"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org4e7cf09"></a>

## topicettes


<a id="org66a7778"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org496e32b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org70ca6b3"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org782f601"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org7960e07"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org769f249"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgf24c1f3"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org30438a5"></a>

## announcments


<a id="orgcc8459f"></a>

### January 30th: next raku study group meeting


<a id="org015d760"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgeb320a5"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
