- [meeting notes January 16, 2022](#org030c6cc)
  - [the raku study group](#org767c5f8)
  - [usual links](#orgf125437)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org6c575ac)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orge3fa752)
    - [my talk:](#orgfe93844)
  - [bruce gray weekly challenge](#orge563934)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgd3d7a20)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org39d5bc9)
    - [alternate approach to 2:](#orgbd022a8)
  - [rob ransbottom dropped by: rir](#orgd21fe94)
    - [playing with](#org883c472)
    - [sather](#org838bed3)
    - [intro to raku ideas](#org17d1f88)
  - [topicettes](#org711b8a6)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org6b005b8)
    - [some recommended raku talks](#org2bf7e2f)
    - [raku vs python](#org9a533d0)
    - [regex stuff](#org7307098)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org7a516fb)
    - [custom associatives](#orgc4e268c)
    - [future topicettes:](#org978151f)
    - [jonathan worthington, cro-ing](#org5db2f20)
  - [announcments](#org69ccce6)
    - [January 30th: next raku study group meeting](#orgf94fd9c)
    - [February 5-6: FOSDEM Raku talks](#orgfad0d45)
    - [June 21-25: tprc: perl/raku conference](#orga510fc5)


<a id="org030c6cc"></a>

# meeting notes January 16, 2022


<a id="org767c5f8"></a>

## the raku study group


<a id="orgf125437"></a>

## usual links


<a id="org6c575ac"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orge3fa752"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="orgfe93844"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orge563934"></a>

## bruce gray weekly challenge


<a id="orgd3d7a20"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org39d5bc9"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgbd022a8"></a>

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


<a id="orgd21fe94"></a>

## rob ransbottom dropped by: rir


<a id="org883c472"></a>

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


<a id="org838bed3"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org17d1f88"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org711b8a6"></a>

## topicettes


<a id="org6b005b8"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org2bf7e2f"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org9a533d0"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org7307098"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org7a516fb"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgc4e268c"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org978151f"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org5db2f20"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org69ccce6"></a>

## announcments


<a id="orgf94fd9c"></a>

### January 30th: next raku study group meeting


<a id="orgfad0d45"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orga510fc5"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
