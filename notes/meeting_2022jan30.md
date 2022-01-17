- [meeting notes January 30, 2022](#org540b18c)
  - [the raku study group](#org874449a)
    - [Don't Raku the boat](#org94599be)
  - [usual links](#orga05129a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org7cc56f0)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org55263ba)
  - [talking about how the sv perl talk went:](#orgb3777ab)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orge08594e)
    - [ideas for other things to cover:](#org92dc4df)
  - [bruce gray on the weekly challenge](#org2704759)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org0827e8a)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org544674b)
    - [alternate approach to 2:](#orga54f9a3)
  - [rob ransbottom dropped by: rir](#orgd425b85)
    - [playing with](#org2581c96)
    - [sather](#org790649d)
  - [topicettes](#org54171c8)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org99ea378)
    - [raku vs python](#org7420ab0)
    - [regex stuff](#org0d192a0)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org98a1813)
    - [custom associatives](#org204ee5b)
    - [future topicettes:](#orge845b87)
    - [jonathan worthington, cro-ing](#org10793b9)
  - [announcments](#orgaf2ef38)
    - [January 30th: next raku study group meeting](#org05d956e)
    - [February 5-6: FOSDEM Raku talks](#org9b03738)
    - [June 21-25: tprc: perl/raku conference](#org71eead9)


<a id="org540b18c"></a>

# meeting notes January 30, 2022


<a id="org874449a"></a>

## the raku study group


<a id="org94599be"></a>

### Don't Raku the boat


<a id="orga05129a"></a>

## usual links


<a id="org7cc56f0"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org55263ba"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgb3777ab"></a>

## talking about how the sv perl talk went:


<a id="orge08594e"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org92dc4df"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators

    1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
    
    3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    4.  from my slide for recommended raku talks
    
    5.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="org2704759"></a>

## bruce gray on the weekly challenge


<a id="org0827e8a"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org544674b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orga54f9a3"></a>

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


<a id="orgd425b85"></a>

## rob ransbottom dropped by: rir


<a id="org2581c96"></a>

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


<a id="org790649d"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org54171c8"></a>

## topicettes


<a id="org99ea378"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org7420ab0"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org0d192a0"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org98a1813"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org204ee5b"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orge845b87"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org10793b9"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgaf2ef38"></a>

## announcments


<a id="org05d956e"></a>

### January 30th: next raku study group meeting


<a id="org9b03738"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org71eead9"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
