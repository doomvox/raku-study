- [meeting notes January 16, 2022](#orgcb5903c)
  - [the raku study group](#org93c54bc)
  - [usual links](#orgd1b4883)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org95d6781)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgf0ae853)
  - [talking about how the sv perl talk went:](#org45af7f8)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#orgcfee8af)
    - [ideas for other things to cover:](#org6106593)
  - [bruce gray on the weekly challenge](#orga229a22)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org694ed3f)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgb710dd3)
    - [alternate approach to 2:](#org0497567)
  - [rob ransbottom dropped by: rir](#org4ecbaac)
    - [playing with](#orgcc78dfb)
    - [sather](#orgc3d00ed)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org08a380c)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orga437d56)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org257234c)
  - [topicettes](#orgbe19d52)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgde462ad)
    - [raku vs python](#org96bc7d0)
    - [regex stuff](#org789acc8)
  - [old topics:](#orgbb248ad)
    - [custom associatives](#orga96b2d1)
    - [future topicettes:](#orgf36aa8d)
    - [jonathan worthington, cro-ing](#orgafa33fe)
    - [my talk:](#org94012d9)
  - [bruce gray weekly challenge](#org633d5b7)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org34eb9b3)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org32b61b6)
    - [alternate approach to 2:](#orgf5b3945)
  - [rob ransbottom dropped by: rir](#org8ca9e13)
    - [playing with](#org247904a)
    - [sather](#org8ccc0a7)
    - [intro to raku ideas](#org8439c6d)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgc4b4c78)
    - [some recommended raku talks](#org1f826df)
    - [raku vs python](#orgeb8f947)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgd0e8744)
    - [getting sets to DWIM](#org1a336fd)
    - [jonathan worthington, cro-ing](#orgfce141d)
  - [announcments](#org5fa8111)
    - [January 30th: next raku study group meeting](#orgd116db4)
    - [February 5-6: FOSDEM Raku talks](#orgfa9fa21)
    - [June 21-25: tprc: perl/raku conference](#orgf60fd61)


<a id="orgcb5903c"></a>

# meeting notes January 16, 2022


<a id="org93c54bc"></a>

## the raku study group


<a id="orgd1b4883"></a>

## usual links


<a id="org95d6781"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgf0ae853"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org45af7f8"></a>

## talking about how the sv perl talk went:


<a id="orgcfee8af"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org6106593"></a>

### ideas for other things to cover:

1.  pair input, adverb syntax

2.  junctions and hyper operators, etc:

    1.  Some examples: <https://github.com/doomvox/raku-study/bin/2021feb28>
    
        1.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism.pl6
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/hyperism<sub>in</sub><sub>pairs.pl6</sub>
        
        3.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb28/reductionism.pl6
    
    2.  from my slide for recommended raku talks
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>
        
            1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
            
            2.  <https://www.youtube.com/watch?v=elalwvfmYgk>


<a id="orga229a22"></a>

## bruce gray on the weekly challenge


<a id="org694ed3f"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgb710dd3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org0497567"></a>

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


<a id="org4ecbaac"></a>

## rob ransbottom dropped by: rir


<a id="orgcc78dfb"></a>

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


<a id="orgc3d00ed"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org08a380c"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orga437d56"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org257234c"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgbe19d52"></a>

## topicettes


<a id="orgde462ad"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org96bc7d0"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org789acc8"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgbb248ad"></a>

## old topics:


<a id="orga96b2d1"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgf36aa8d"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgafa33fe"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org94012d9"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org633d5b7"></a>

## bruce gray weekly challenge


<a id="org34eb9b3"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org32b61b6"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgf5b3945"></a>

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


<a id="org8ca9e13"></a>

## rob ransbottom dropped by: rir


<a id="org247904a"></a>

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


<a id="org8ccc0a7"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org8439c6d"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgc4b4c78"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org1f826df"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgeb8f947"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgd0e8744"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="org1a336fd"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgfce141d"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org5fa8111"></a>

## announcments


<a id="orgd116db4"></a>

### January 30th: next raku study group meeting


<a id="orgfa9fa21"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgf60fd61"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
