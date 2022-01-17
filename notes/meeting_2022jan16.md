- [meeting notes January 16, 2022](#org42f770f)
  - [the raku study group](#orgcda2a0d)
  - [usual links](#orgfe0f264)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#orga74f272)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org7f0f040)
  - [talking about how the sv perl talk went:](#org3d7f6e6)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org03249ec)
    - [ideas for other things to cover:](#orgda756ac)
  - [bruce gray on the weekly challenge](#org3518e0e)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org798e3ff)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org8590307)
    - [alternate approach to 2:](#org447e2c3)
  - [rob ransbottom dropped by: rir](#org6deba21)
    - [playing with](#org3888f4c)
    - [sather](#org8181d31)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org2b138de)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org220d6bf)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org3ab46eb)
  - [topicettes](#orgb01b55e)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgdce5c6b)
    - [raku vs python](#orgdcdcd72)
    - [regex stuff](#org73df521)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgbdaea01)
    - [custom associatives](#orgc89a661)
    - [future topicettes:](#orga0c140e)
    - [jonathan worthington, cro-ing](#orgcb3125e)
    - [my talk:](#org89463d2)
  - [bruce gray weekly challenge](#orgf5b9acf)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org0f9358b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgb533d9d)
    - [alternate approach to 2:](#orgeda7e05)
  - [rob ransbottom dropped by: rir](#orgaa9e35d)
    - [playing with](#org4451ac4)
    - [sather](#org92018de)
    - [intro to raku ideas](#orge8834c4)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org3dfcf1d)
    - [some recommended raku talks](#org21f8d2b)
    - [raku vs python](#orgd240cda)
    - [regex stuff](#orgb106cf2)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgf8f85ec)
    - [getting sets to DWIM](#orgd615e73)
    - [jonathan worthington, cro-ing](#orgf979618)
  - [announcments](#org7c1d331)
    - [January 30th: next raku study group meeting](#org50c8217)
    - [February 5-6: FOSDEM Raku talks](#org4e30123)
    - [June 21-25: tprc: perl/raku conference](#orgcbb8021)


<a id="org42f770f"></a>

# meeting notes January 16, 2022


<a id="orgcda2a0d"></a>

## the raku study group


<a id="orgfe0f264"></a>

## usual links


<a id="orga74f272"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org7f0f040"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org3d7f6e6"></a>

## talking about how the sv perl talk went:


<a id="org03249ec"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgda756ac"></a>

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


<a id="org3518e0e"></a>

## bruce gray on the weekly challenge


<a id="org798e3ff"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org8590307"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org447e2c3"></a>

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


<a id="org6deba21"></a>

## rob ransbottom dropped by: rir


<a id="org3888f4c"></a>

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


<a id="org8181d31"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org2b138de"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org220d6bf"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org3ab46eb"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgb01b55e"></a>

## topicettes


<a id="orgdce5c6b"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgdcdcd72"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org73df521"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgbdaea01"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgc89a661"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orga0c140e"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgcb3125e"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org89463d2"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgf5b9acf"></a>

## bruce gray weekly challenge


<a id="org0f9358b"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgb533d9d"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgeda7e05"></a>

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


<a id="orgaa9e35d"></a>

## rob ransbottom dropped by: rir


<a id="org4451ac4"></a>

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


<a id="org92018de"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orge8834c4"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org3dfcf1d"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org21f8d2b"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgd240cda"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgb106cf2"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgf8f85ec"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgd615e73"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgf979618"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org7c1d331"></a>

## announcments


<a id="org50c8217"></a>

### January 30th: next raku study group meeting


<a id="org4e30123"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgcbb8021"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
