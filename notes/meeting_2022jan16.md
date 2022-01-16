- [meeting notes January 16, 2022](#orgf702dfd)
  - [the raku study group](#org7bc8311)
  - [usual links](#orgebdc053)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org3c93f1b)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgf24368d)
    - [my talk:](#org59b2ec8)
  - [bruce gray weekly challenge](#orgcc673f5)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgea22244)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org1846565)
    - [alternate approach to 2:](#org21f849c)
  - [rob dropped by: rir](#org5188f51)
    - [playing with](#orgf1e617d)
    - [sather](#orgcb8a341)
    - [intro to raku ideas](#orga274d45)
  - [topicettes](#orge48d215)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org6dce8dd)
    - [some recommended raku talks](#org9207316)
    - [raku vs python](#org13802c3)
    - [regex stuff](#orgba3bc6b)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgc6452e7)
    - [custom associatives](#org134682a)
    - [future topicettes:](#orga8c3a26)
    - [jonathan worthington, cro-ing](#org7cd575d)
  - [announcments](#org69c805f)
    - [January 30th: next raku study group meeting](#org9874324)
    - [February 5-6: FOSDEM Raku talks](#orgff2ab8e)
    - [June 21-25: tprc: perl/raku conference](#org5dc2d23)


<a id="orgf702dfd"></a>

# meeting notes January 16, 2022


<a id="org7bc8311"></a>

## the raku study group


<a id="orgebdc053"></a>

## usual links


<a id="org3c93f1b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgf24368d"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org59b2ec8"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgcc673f5"></a>

## bruce gray weekly challenge


<a id="orgea22244"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org1846565"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org21f849c"></a>

### alternate approach to 2:

```sh
time raku -e 'constant @pents = map ->\n { n *(3*n - 1) div 2 }, 1..*;

my %p = @pents.head(2400).Set;
say @pents.head(2400).combinations(2).first({ %p{.sum} and %p{ [R-] .list } });'
```

1.  result:

    (1560090 7042750) real 0m6.258s user 0m5.683s sys 0m0.157s


<a id="org5188f51"></a>

## rob dropped by: rir


<a id="orgf1e617d"></a>

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


<a id="orgcb8a341"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orga274d45"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orge48d215"></a>

## topicettes


<a id="org6dce8dd"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org9207316"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org13802c3"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgba3bc6b"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgc6452e7"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org134682a"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orga8c3a26"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org7cd575d"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org69c805f"></a>

## announcments


<a id="org9874324"></a>

### January 30th: next raku study group meeting


<a id="orgff2ab8e"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org5dc2d23"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
