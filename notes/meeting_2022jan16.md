- [meeting notes January 16, 2022](#org08056f2)
  - [the raku study group](#org87de035)
  - [usual links](#orgedb9a2c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#orgff9ca01)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#orgc726ce0)
  - [talking about how the sv perl talk went:](#orgd774051)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org83ade29)
    - [ideas for other things to cover:](#org4bec788)
  - [bruce gray on the weekly challenge](#org57b8b9f)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org8821320)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org6eea009)
    - [alternate approach to 2:](#org7fb75ef)
  - [rob ransbottom dropped by: rir](#org963ccd1)
    - [playing with](#org4c736cf)
    - [sather](#orgf06fb6f)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org3920480)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org5d0eac8)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org5b5b3dd)
  - [topicettes](#orgf816cc8)
    - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#org95713d4)
    - [raku vs python](#org729f8bd)
    - [regex stuff](#org3029f57)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orgffa6733)
    - [custom associatives](#orgf9fe4a8)
    - [future topicettes:](#orgfec8cd7)
    - [jonathan worthington, cro-ing](#orgfa64102)
    - [my talk:](#orgf8e9abc)
  - [bruce gray weekly challenge](#org6ff4f2c)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org681efce)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orgbe9a60a)
    - [alternate approach to 2:](#org5abcab7)
  - [rob ransbottom dropped by: rir](#org84ce2f2)
    - [playing with](#org4f3728b)
    - [sather](#org1dbed0b)
    - [intro to raku ideas](#orgc5887e2)
  - [topicettes](#orgd4fe52b)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org76927e4)
    - [some recommended raku talks](#orgffd3b5b)
    - [raku vs python](#org26a2f56)
    - [regex stuff](#orgc314a3b)
  - [old topics, last meeting on the jan 02 (probably just delete, maybe followup)](#orge65dafb)
    - [future topicettes:](#orgc1b6e49)
    - [jonathan worthington, cro-ing](#org3a1f5bb)
  - [announcments](#orgbb463e7)
    - [January 30th: next raku study group meeting](#org57ef2f2)
    - [February 5-6: FOSDEM Raku talks](#org1181d7c)
    - [June 21-25: tprc: perl/raku conference](#orgf192c02)


<a id="org08056f2"></a>

# meeting notes January 16, 2022


<a id="org87de035"></a>

## the raku study group


<a id="orgedb9a2c"></a>

## usual links


<a id="orgff9ca01"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="orgc726ce0"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="orgd774051"></a>

## talking about how the sv perl talk went:


<a id="org83ade29"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org4bec788"></a>

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


<a id="org57b8b9f"></a>

## bruce gray on the weekly challenge


<a id="org8821320"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org6eea009"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org7fb75ef"></a>

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


<a id="org963ccd1"></a>

## rob ransbottom dropped by: rir


<a id="org4c736cf"></a>

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


<a id="orgf06fb6f"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org3920480"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org5d0eac8"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org5b5b3dd"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgf816cc8"></a>

## topicettes


<a id="org95713d4"></a>

### fun stuff: take downs of bitcoin, blockchain, web3, etc

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org729f8bd"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org3029f57"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orgffa6733"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgf9fe4a8"></a>

### custom associatives

1.  brad gilbert write-up:

    1.  <https://stackoverflow.com/questions/63050032/can-i-write-an-object-that-behaves-like-a-hash/63059286#63059286>

2.  secret documentation

    1.  <https://docs.raku.org/language/subscripts#Methods_to_implement_for_associative_subscripting>
    
    2.  <https://docs.raku.org/language/classtut#index-entry-BUILD>
    
    3.  <https://docs.raku.org/language/objects#index-entry-TWEAK>


<a id="orgfec8cd7"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgfa64102"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgf8e9abc"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org6ff4f2c"></a>

## bruce gray weekly challenge


<a id="org681efce"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orgbe9a60a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="org5abcab7"></a>

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


<a id="org84ce2f2"></a>

## rob ransbottom dropped by: rir


<a id="org4f3728b"></a>

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


<a id="org1dbed0b"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="orgc5887e2"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="orgd4fe52b"></a>

## topicettes


<a id="org76927e4"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgffd3b5b"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org26a2f56"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc314a3b"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="orge65dafb"></a>

## old topics, last meeting on the jan 02 (probably just delete, maybe followup)


<a id="orgc1b6e49"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org3a1f5bb"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgbb463e7"></a>

## announcments


<a id="org57ef2f2"></a>

### January 30th: next raku study group meeting


<a id="org1181d7c"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgf192c02"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
