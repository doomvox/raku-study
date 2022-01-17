- [meeting notes January 30, 2022](#org6d02835)
  - [the raku study group](#orgaf1ec99)
    - [Don't Raku the boat](#org9805849)
  - [usual links](#org147dfe5)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#orgeb56669)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org67c7f3e)
  - [talking about how the sv perl talk went:](#org7544344)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org7edbe7f)
    - [ideas for other things to cover:](#org67d7ae1)
  - [bruce gray weekly challenge](#orgfc76486)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org8fb34ef)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org6336ced)
    - [alternate approach to 2:](#org76113de)
  - [rob ransbottom dropped by: rir](#org30aa2a6)
    - [playing with](#org20eab98)
    - [sather](#org837dbbc)
  - [topicettes](#org82da1cf)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orga399c34)
    - [some recommended raku talks](#org01612c2)
    - [raku vs python](#org7710e8c)
    - [regex stuff](#org4493546)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org0a29f69)
    - [custom associatives](#org96ef36a)
    - [future topicettes:](#org56cf71a)
    - [jonathan worthington, cro-ing](#org96a41cf)
  - [announcments](#orga8e5574)
    - [January 30th: next raku study group meeting](#org4c8eaaa)
    - [February 5-6: FOSDEM Raku talks](#org56e45ed)
    - [June 21-25: tprc: perl/raku conference](#org1738723)


<a id="org6d02835"></a>

# meeting notes January 30, 2022


<a id="orgaf1ec99"></a>

## the raku study group


<a id="org9805849"></a>

### Don't Raku the boat


<a id="org147dfe5"></a>

## usual links


<a id="orgeb56669"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org67c7f3e"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org7544344"></a>

## talking about how the sv perl talk went:


<a id="org7edbe7f"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org67d7ae1"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  


<a id="orgfc76486"></a>

## bruce gray weekly challenge


<a id="org8fb34ef"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org6336ced"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org76113de"></a>

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


<a id="org30aa2a6"></a>

## rob ransbottom dropped by: rir


<a id="org20eab98"></a>

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


<a id="org837dbbc"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org82da1cf"></a>

## topicettes


<a id="orga399c34"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org01612c2"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org7710e8c"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org4493546"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org0a29f69"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org96ef36a"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org56cf71a"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org96a41cf"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orga8e5574"></a>

## announcments


<a id="org4c8eaaa"></a>

### January 30th: next raku study group meeting


<a id="org56e45ed"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org1738723"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
