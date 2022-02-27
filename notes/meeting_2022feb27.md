- [meeting notes February 27, 2022](#org1a78fcf)
  - [the raku study group](#orged7fb0a)
  - [usual links to the meeting material](#org1ceabc6)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgf6819a1)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org45a8fbd)
  - [topics](#orge87bc30)
    - [Making a hash out of intertwined array of strings and integers](#orgc63b495)
    - [bruce gray wants to talk weekly challenge](#orga3e160c)
    - [william michaels objects to saving returns by default in the repl](#org139605f)
    - [examples](#org09f7c1f)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgd37de2a)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org4aabe29)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orgfa5a76d)
    - [recursive regexs](#org7c32138)
    - [raku grammars](#org394282e)
    - [darkroast](#org725e3da)
  - [announcements](#org6727f78)
    - [February 27th: next raku study group meeting](#org5c6adc8)
    - [June 21-25: tprc: perl/raku conference](#org8327fb5)


<a id="org1a78fcf"></a>

# meeting notes February 27, 2022


<a id="orged7fb0a"></a>

## the raku study group


<a id="org1ceabc6"></a>

## usual links to the meeting material


<a id="orgf6819a1"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org45a8fbd"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orge87bc30"></a>

## topics


<a id="orgc63b495"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orga3e160c"></a>

### bruce gray wants to talk weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org139605f"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="org09f7c1f"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgd37de2a"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org4aabe29"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orgfa5a76d"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org7c32138"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org394282e"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org725e3da"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org6727f78"></a>

## announcements


<a id="org5c6adc8"></a>

### February 27th: next raku study group meeting


<a id="org8327fb5"></a>

### June 21-25: tprc: perl/raku conference
