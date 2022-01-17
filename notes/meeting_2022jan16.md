- [meeting notes January 16, 2022](#org11ff900)
  - [the raku study group](#org832e739)
  - [usual links](#org5a4d0ab)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org31b1eef)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org7a56fcf)
    - [my talk:](#orgcb3972f)
  - [bruce gray weekly challenge](#orgb256556)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orge9f560f)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org878816e)
    - [alternate approach to 2:](#org29c00b1)
  - [rob ransbottom dropped by: rir](#org8443a67)
    - [playing with](#org360e107)
    - [sather](#org5749d44)
    - [intro to raku ideas](#orga7a900f)
  - [topicettes](#org13b77f9)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org950be3f)
    - [some recommended raku talks](#orgaf0635d)
    - [raku vs python](#org559680b)
    - [regex stuff](#orgee9fb51)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org7ee035f)
    - [custom associatives](#org7b7e0ea)
    - [future topicettes:](#orgbec0584)
    - [jonathan worthington, cro-ing](#orgc803142)
  - [announcments](#orgcfd443a)
    - [January 30th: next raku study group meeting](#org2f5e130)
    - [February 5-6: FOSDEM Raku talks](#orgf070dd7)
    - [June 21-25: tprc: perl/raku conference](#org09897ad)


<a id="org11ff900"></a>

# meeting notes January 16, 2022


<a id="org832e739"></a>

## the raku study group


<a id="org5a4d0ab"></a>

## usual links


<a id="org31b1eef"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org7a56fcf"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="orgcb3972f"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgb256556"></a>

## bruce gray weekly challenge


<a id="orge9f560f"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org878816e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org29c00b1"></a>

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


<a id="org8443a67"></a>

## rob ransbottom dropped by: rir


<a id="org360e107"></a>

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


<a id="org5749d44"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orga7a900f"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org13b77f9"></a>

## topicettes


<a id="org950be3f"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgaf0635d"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org559680b"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgee9fb51"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org7ee035f"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org7b7e0ea"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgbec0584"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgc803142"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgcfd443a"></a>

## announcments


<a id="org2f5e130"></a>

### January 30th: next raku study group meeting


<a id="orgf070dd7"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org09897ad"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
