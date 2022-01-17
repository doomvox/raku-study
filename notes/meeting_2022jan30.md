- [meeting notes January 30, 2022](#org79aafa6)
  - [the raku study group](#org74d206f)
    - [Don't Raku the boat](#orgf07d435)
  - [usual links](#org5c54f5f)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org63259c8)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#orgf44c7b4)
  - [talking about how the sv perl talk went:](#orgef713f6)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgb365ef2)
    - [ideas for other things to cover:](#orgc4de626)
  - [bruce gray on the weekly challenge](#org7b429ca)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#orgd7c4b08)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org2b2abf8)
    - [alternate approach to 2:](#org3953670)
  - [rob ransbottom dropped by: rir](#orgc1dd936)
    - [playing with](#org6d8bc52)
    - [sather](#org4dfda61)
  - [topicettes](#orge4ec50a)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org1222444)
    - [raku vs python](#org174971c)
    - [regex stuff](#orgbb41cb6)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#org2efd8c7)
    - [custom associatives](#org71731c3)
    - [future topicettes:](#org6e4e56f)
    - [jonathan worthington, cro-ing](#org1f92b32)
  - [announcments](#orge61e8a8)
    - [January 30th: next raku study group meeting](#org5245120)
    - [February 5-6: FOSDEM Raku talks](#orgfcc3040)
    - [June 21-25: tprc: perl/raku conference](#org710c966)


<a id="org79aafa6"></a>

# meeting notes January 30, 2022


<a id="org74d206f"></a>

## the raku study group


<a id="orgf07d435"></a>

### Don't Raku the boat


<a id="org5c54f5f"></a>

## usual links


<a id="org63259c8"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="orgf44c7b4"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="orgef713f6"></a>

## talking about how the sv perl talk went:


<a id="orgb365ef2"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgc4de626"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  

3.  junctions and hyper operators

    1.  from my slide for recommended raku talks
    
    2.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
    
        1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
        
        2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="org7b429ca"></a>

## bruce gray on the weekly challenge


<a id="orgd7c4b08"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org2b2abf8"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org3953670"></a>

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


<a id="orgc1dd936"></a>

## rob ransbottom dropped by: rir


<a id="org6d8bc52"></a>

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


<a id="org4dfda61"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orge4ec50a"></a>

## topicettes


<a id="org1222444"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org174971c"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgbb41cb6"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org2efd8c7"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org71731c3"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org6e4e56f"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org1f92b32"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orge61e8a8"></a>

## announcments


<a id="org5245120"></a>

### January 30th: next raku study group meeting


<a id="orgfcc3040"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org710c966"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
