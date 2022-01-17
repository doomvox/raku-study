- [meeting notes January 30, 2022](#orgdda5649)
  - [the raku study group](#orged2217b)
    - [Don't Raku the boat](#org1db04fb)
  - [usual links](#orgf113d5d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org706679d)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orge5f1488)
  - [talking about how the sv perl talk went:](#org99a9b04)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org06568cb)
    - [ideas for other things to cover:](#org6202ffa)
  - [bruce gray on the weekly challenge](#org3bb344d)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgad6e51c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org0c5c18f)
    - [alternate approach to 2:](#orgfada050)
  - [rob ransbottom dropped by: rir](#org66a24a6)
    - [playing with](#orge4b60ed)
    - [sather](#orge422610)
  - [topicettes](#org4de51e6)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org466519f)
    - [raku vs python](#org4a1700f)
    - [regex stuff](#orgbe5e972)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgf0f867e)
    - [custom associatives](#org6fb6d34)
    - [future topicettes:](#org4eb9b53)
    - [jonathan worthington, cro-ing](#org5f4d848)
  - [announcments](#orgc0f0521)
    - [January 30th: next raku study group meeting](#orge6f9ab7)
    - [February 5-6: FOSDEM Raku talks](#orgd2b964f)
    - [June 21-25: tprc: perl/raku conference](#org1ee405f)


<a id="orgdda5649"></a>

# meeting notes January 30, 2022


<a id="orged2217b"></a>

## the raku study group


<a id="org1db04fb"></a>

### Don't Raku the boat


<a id="orgf113d5d"></a>

## usual links


<a id="org706679d"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orge5f1488"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org99a9b04"></a>

## talking about how the sv perl talk went:


<a id="org06568cb"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org6202ffa"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators

    1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
    
    2.  from my slide for recommended raku talks
    
    3.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="org3bb344d"></a>

## bruce gray on the weekly challenge


<a id="orgad6e51c"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org0c5c18f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgfada050"></a>

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


<a id="org66a24a6"></a>

## rob ransbottom dropped by: rir


<a id="orge4b60ed"></a>

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


<a id="orge422610"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org4de51e6"></a>

## topicettes


<a id="org466519f"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org4a1700f"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgbe5e972"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgf0f867e"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org6fb6d34"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org4eb9b53"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org5f4d848"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgc0f0521"></a>

## announcments


<a id="orge6f9ab7"></a>

### January 30th: next raku study group meeting


<a id="orgd2b964f"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org1ee405f"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
