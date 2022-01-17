- [meeting notes January 30, 2022](#org1d93d24)
  - [the raku study group](#orgce5ae11)
    - [Don't Raku the boat](#org29ae9a5)
  - [usual links](#orgc5cf946)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>](#org25790a7)
    - [<https://github.com/doomvox/raku-study/bin/2022jan30>](#org9f037e7)
  - [talking about how the sv perl talk went:](#org31560fa)
    - [<https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>](#org14063ce)
    - [ideas for other things to cover:](#orga0a8354)
  - [bruce gray on the weekly challenge](#org327815a)
    - [<https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>](#org2c0e39d)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>](#org16eca0b)
    - [alternate approach to 2:](#orgc32fd6a)
  - [rob ransbottom dropped by: rir](#org1f9d2cf)
    - [playing with](#org367b777)
    - [sather](#orgc3d1c73)
  - [taw the whiner does shallow looks (I mean "speed runs")](#org1212a59)
    - [<https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>](#orgb3f543c)
    - [<https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>](#orga0799e2)
    - [raku vs python](#orgb666f26)
    - [regex stuff](#orgc5edaba)
  - [topicettes, perhaps](#org96cc47c)
    - [future topicettes:](#orgd676c89)
    - [jonathan worthington, cro-ing](#orgc8af54b)
  - [announcments](#orgcb563c4)
    - [January 30th: next raku study group meeting](#org6806a51)
    - [February 5-6: FOSDEM Raku talks](#org972b77d)
    - [June 21-25: tprc: perl/raku conference](#orgb825663)


<a id="org1d93d24"></a>

# meeting notes January 30, 2022


<a id="orgce5ae11"></a>

## the raku study group


<a id="org29ae9a5"></a>

### Don't Raku the boat


<a id="orgc5cf946"></a>

## usual links


<a id="org25790a7"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan30.md>


<a id="org9f037e7"></a>

### <https://github.com/doomvox/raku-study/bin/2022jan30>


<a id="org31560fa"></a>

## talking about how the sv perl talk went:


<a id="org14063ce"></a>

### <https://github.com/doomvox/raku-study/blob/main//notes/talks/new_year_raku>


<a id="orga0a8354"></a>

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


<a id="org327815a"></a>

## bruce gray on the weekly challenge


<a id="org2c0e39d"></a>

### <https://github.com/Util/perlweeklychallenge-club/tree/branch-for-challenge-147/challenge-147/bruce-gray/raku>


<a id="org16eca0b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-147/#TASK1>


<a id="orgc32fd6a"></a>

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


<a id="org1f9d2cf"></a>

## rob ransbottom dropped by: rir


<a id="org367b777"></a>

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


<a id="orgc3d1c73"></a>

### sather

1.  like eiffel

    1.  <https://www.eiffel.org/doc/eiffel/Learning_Eiffel>

2.  more consistent typing system

    1.  about sather
    
        1.  <https://www1.icsi.berkeley.edu/~sather/>
        
        2.  <https://omohundro.files.wordpress.com/2009/03/omohundro94_the_sather_programming_language.pdf>
        
        3.  <https://www1.icsi.berkeley.edu/~sather/Publications/article.html>


<a id="org1212a59"></a>

## taw the whiner does shallow looks (I mean "speed runs")


<a id="orgb3f543c"></a>

### <https://dev.to/taw/languages-speedrun-episode-26-raku-perl-6-4emf>


<a id="orga0799e2"></a>

### <https://dev.to/taw/100-languages-speedrun-episode-47-raku-perl-6-regular-expressions-4p8n>


<a id="orgb666f26"></a>

### raku vs python

1.  <https://www.reddit.com/r/rakulang/comments/ruyo9j/raku_for_the_the_scientistprogrammer_that_is/>

2.  um&#x2026; very interrresting.


<a id="orgc5edaba"></a>

### regex stuff

1.  <https://docs.raku.org/language/regexes#Tilde_for_nesting_structures>


<a id="org96cc47c"></a>

## topicettes, perhaps


<a id="orgd676c89"></a>

### future topicettes:

1.  getting sets to DWIM

    <https://donaldh.wtf/2021/01/if-sets-would-dwim/>


<a id="orgc8af54b"></a>

### jonathan worthington, cro-ing

1.  <https://raku-advent.blog/2021/12/19/let-it-cro/>


<a id="orgcb563c4"></a>

## announcments


<a id="org6806a51"></a>

### January 30th: next raku study group meeting


<a id="org972b77d"></a>

### February 5-6: FOSDEM Raku talks

1.  <https://www.reddit.com/r/rakulang/comments/rsua3p/raku_talks_at_fosdem/>


<a id="orgb825663"></a>

### June 21-25: tprc: perl/raku conference

1.  <https://perlconference.us/tprc-2022-hou/>
