- [meeting notes January 16, 2022](#org072f4c3)
  - [the raku study group](#org4b2b0b2)
  - [usual links](#org85ff21f)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>](#org5ec55b5)
    - [<https://github.com/doomvox/raku-study/bin/2022jan16>](#org188ae74)
  - [talking about how the sv perl talk went:](#org84990ae)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org15d5a06)
    - [ideas for other things to cover:](#orge232f3b)
  - [bruce gray on the weekly challenge](#org5fe5c43)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org7a8614b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orge77d058)
    - [alternate approach to 2:](#orgba5a963)
  - [rob ransbottom dropped by: rir](#org4f330eb)
    - [playing with](#org7e6d374)
    - [sather](#orgd6098b8)
  - [regex stuff](#org1cbc870)
    - [<https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>](#org34ee06d)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org6fe09fb)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#org64be0a1)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#org0d92c86)
  - [fun stuff: take downs of bitcoin, blockchain, web3, etc](#orgfdd02af)
    - [<https://github.com/rufuspollock/awesome-crypto-critique>](#org3f894ee)
  - [raku vs python](#orgc4eef09)
    - [<https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>](#org6fce8de)
    - [um&#x2026; very interrresting.](#orgfad6d7b)
    - [my talk:](#org5995ee2)
  - [bruce gray weekly challenge](#org0251b40)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org69982b4)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#orga4ad1b1)
    - [alternate approach to 2:](#orgb793bc0)
  - [rob ransbottom dropped by: rir](#orga7a8f34)
    - [playing with](#org0923285)
    - [sather](#orga504210)
    - [intro to raku ideas](#org049cb92)
    - [fun stuff: take downs of bitcoin, blockchain, web3&#x2026;](#org71a5428)
    - [some recommended raku talks](#org45c1a77)
    - [raku vs python](#org4796712)
    - [getting sets to DWIM](#org11caf0b)
    - [jonathan worthington, cro-ing](#org8e0b326)
  - [announcments](#org859fe08)
    - [January 30th: next raku study group meeting](#orga04cac6)
    - [February 5-6: FOSDEM Raku talks](#org5088593)
    - [June 21-25: tprc: perl/raku conference](#org4a455a3)


<a id="org072f4c3"></a>

# meeting notes January 16, 2022


<a id="org4b2b0b2"></a>

## the raku study group


<a id="org85ff21f"></a>

## usual links


<a id="org5ec55b5"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan16.md>


<a id="org188ae74"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan16>


<a id="org84990ae"></a>

## talking about how the sv perl talk went:


<a id="org15d5a06"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orge232f3b"></a>

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


<a id="org5fe5c43"></a>

## bruce gray on the weekly challenge


<a id="org7a8614b"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orge77d058"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgba5a963"></a>

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


<a id="org4f330eb"></a>

## rob ransbottom dropped by: rir


<a id="org7e6d374"></a>

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


<a id="orgd6098b8"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org1cbc870"></a>

## regex stuff


<a id="org34ee06d"></a>

### <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org6fe09fb"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="org64be0a1"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="org0d92c86"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgfdd02af"></a>

## fun stuff: take downs of bitcoin, blockchain, web3, etc


<a id="org3f894ee"></a>

### <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="orgc4eef09"></a>

## raku vs python


<a id="org6fce8de"></a>

### <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>


<a id="orgfad6d7b"></a>

### um&#x2026; very interrresting.


<a id="org5995ee2"></a>

### my talk:

<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="org0251b40"></a>

## bruce gray weekly challenge


<a id="org69982b4"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="orga4ad1b1"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgb793bc0"></a>

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


<a id="orga7a8f34"></a>

## rob ransbottom dropped by: rir


<a id="org0923285"></a>

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


<a id="orga504210"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org049cb92"></a>

### intro to raku ideas

1.  pair input, adverb syntax


<a id="org71a5428"></a>

### fun stuff: take downs of bitcoin, blockchain, web3&#x2026;

1.  <https://github.com/rufuspollock/awesome-crypto-critique>


<a id="org45c1a77"></a>

### some recommended raku talks

1.  <https://github.com/doomvox/raku-study/blob/main/notes/talks/new_year_raku/Z8-videos_on_raku.org>

2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/talks/new<sub>year</sub><sub>raku</sub>/Z8-videos<sub>on</sub><sub>raku.org</sub>

    1.  Leon Timmermans, "Raku syntax I miss in other languages', Jun 8, 2021
    
    2.  <https://www.youtube.com/watch?v=elalwvfmYgk>
    
    3.  Hyperoperators, Junctions, etc


<a id="org4796712"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="org11caf0b"></a>

### getting sets to DWIM

1.  <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="org8e0b326"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="org859fe08"></a>

## announcments


<a id="orga04cac6"></a>

### January 30th: next raku study group meeting


<a id="org5088593"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="org4a455a3"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
