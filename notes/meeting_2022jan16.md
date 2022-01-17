- [meeting notes January 16, 2022](#org5920483)
  - [the raku study group](#org9c4e5c4)
  - [usual links](#org36a5706)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org6d9323e)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org27962b5)
  - [talking about how the sv perl talk went:](#orgb6b0261)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org92704b4)
    - [ideas for other things to cover:](#org318c413)
  - [bruce gray on the weekly challenge](#orgad3c37e)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org6b1fce1)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org0b9839a)
    - [alternate approach to 2:](#org49bd914)
  - [rob ransbottom dropped by: rir](#orgdae693b)
    - [playing with](#orge6d12c0)
    - [sather](#org4ccaf78)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org64b38c7)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgf86803e)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orgbe54d99)
  - [topicettes](#org6ab25bd)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgc55c79a)
    - [raku vs python](#org5336baf)
    - [regex stuff](#orgc7e4ce8)
    - [my talk:](#org8bd7d68)
  - [bruce gray weekly challenge](#orgdf1348b)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org9da05c8)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org312684a)
    - [alternate approach to 2:](#org2d4c024)
  - [rob ransbottom dropped by: rir](#org8ce3775)
    - [playing with](#org582724e)
    - [sather](#org69d957f)
    - [intro to raku ideas](#orgb34b647)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#orgdbce635)
    - [some recommended raku talks](#orgdedbb3d)
    - [raku vs python](#orgf96e3b4)
  - [old topics:](#org7a6512e)
    - [custom associatives](#orgb56cfab)
    - [future topicettes:](#org716fcd8)
    - [jonathan worthington, cro-ing](#org5f44866)
    - [getting sets to DWIM](#org81c9885)
    - [jonathan worthington, cro-ing](#orgc1de05c)
  - [announcments](#orgc1fe0e3)
    - [January 30th: next raku study group meeting](#orgd9035ca)
    - [February 5-6: FOSDEM Raku talks](#orgaf18b59)
    - [June 21-25: tprc: perl/raku conference](#orgee75bef)


<a id="org5920483"></a>

# meeting notes January 16, 2022


<a id="org9c4e5c4"></a>

## the raku study group


<a id="org36a5706"></a>

## usual links


<a id="org6d9323e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org27962b5"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="orgb6b0261"></a>

## talking about how the sv perl talk went:


<a id="org92704b4"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org318c413"></a>

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


<a id="orgad3c37e"></a>

## bruce gray on the weekly challenge


<a id="org6b1fce1"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org0b9839a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org49bd914"></a>

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


<a id="orgdae693b"></a>

## rob ransbottom dropped by: rir


<a id="orge6d12c0"></a>

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
    
    3.  some regex stuff
    
        1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org4ccaf78"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org64b38c7"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgf86803e"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orgbe54d99"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="org6ab25bd"></a>

## topicettes


<a id="orgc55c79a"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org5336baf"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc7e4ce8"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org8bd7d68"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orgdf1348b"></a>

## bruce gray weekly challenge


<a id="org9da05c8"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org312684a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org2d4c024"></a>

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


<a id="org8ce3775"></a>

## rob ransbottom dropped by: rir


<a id="org582724e"></a>

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


<a id="org69d957f"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgb34b647"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgdbce635"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgdedbb3d"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="orgf96e3b4"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org7a6512e"></a>

## old topics:


<a id="orgb56cfab"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="org716fcd8"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org5f44866"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org81c9885"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgc1de05c"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgc1fe0e3"></a>

## announcments


<a id="orgd9035ca"></a>

### January 30th: next raku study group meeting


<a id="orgaf18b59"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgee75bef"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
