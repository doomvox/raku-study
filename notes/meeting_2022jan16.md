- [meeting notes January 16, 2022](#org3ddb2ba)
  - [the raku study group](#org154ef29)
  - [usual links](#orgb947bcb)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org06fa2dc)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgff659e2)
    - [my talk:](#org19db032)
  - [bruce gray weekly challenge](#orgfaf08e1)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org83bc3a8)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org1093447)
    - [alternate approach to 2:](#org3ddd6af)
  - [rob dropped by: rir](#org65c7ac4)
    - [playing with](#orgc042c1d)
    - [sather](#org5e0d0e0)
    - [intro to raku ideas](#orgfe6c739)
  - [topicettes](#orgb7ad3ef)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org41124e2)
    - [some recommended raku talks](#org6814030)
    - [raku vs python](#org5949ace)
    - [regex stuff](#orgb624156)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org23bac84)
    - [custom associatives](#orgd3e6727)
    - [future topicettes:](#orgb1adf68)
    - [jonathan worthington, cro-ing](#orgcbf0a52)
  - [announcments](#org8638732)
    - [January 30th: next raku study group meeting](#org99b13d6)
    - [February 5-6: FOSDEM Raku talks](#orgd0cf0b0)
    - [June 21-25: tprc: perl/raku conference](#orgd955696)


<a id="org3ddb2ba"></a>

# meeting notes January 16, 2022


<a id="org154ef29"></a>

## the raku study group


<a id="orgb947bcb"></a>

## usual links


<a id="org06fa2dc"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgff659e2"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org19db032"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgfaf08e1"></a>

## bruce gray weekly challenge


<a id="org83bc3a8"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org1093447"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org3ddd6af"></a>

### alternate approach to 2:

```sh
time raku -e 'constant @pents = map ->\n { n *(3*n - 1) div 2 }, 1..*;

my %p = @pents.head(2400).Set;
say @pents.head(2400).combinations(2).first({ %p{.sum} and %p{ [R-] .list } });'

(1560090 7042750)
real 0m6.258s
user 0m5.683s
sys 0m0.157s
```


<a id="org65c7ac4"></a>

## rob dropped by: rir


<a id="orgc042c1d"></a>

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


<a id="org5e0d0e0"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgfe6c739"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgb7ad3ef"></a>

## topicettes


<a id="org41124e2"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org6814030"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org5949ace"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgb624156"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org23bac84"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgd3e6727"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgb1adf68"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgcbf0a52"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org8638732"></a>

## announcments


<a id="org99b13d6"></a>

### January 30th: next raku study group meeting


<a id="orgd0cf0b0"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgd955696"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
