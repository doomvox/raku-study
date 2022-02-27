- [meeting notes February 27, 2022](#orgf205cd2)
  - [the raku study group](#org044c3b2)
  - [usual links to the meeting material](#orgcf83a6d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org49e8919)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orga7f738b)
  - [topics](#org9f692ec)
    - [Making a hash out of intertwined array of strings and integers](#org3f27891)
  - [The good: There is meat for discussion and exploration in my solutions to this week's Challenge:](#org8761be5)
    - [So, you might add that to your agenda, if it suits you.](#org8105edc)
    - [examples](#org8087ed8)
    - [issue about doing a ,= with a SetHash on right-hand side](#org77cebc6)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org7f6d55e)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orga1e87bd)
    - [recursive regexs](#org7c903bf)
    - [raku grammars](#org8403d71)
    - [darkroast](#orgd167dfd)
  - [announcements](#org7f1e834)
    - [February 27th: next raku study group meeting](#orga84c089)
    - [June 21-25: tprc: perl/raku conference](#orga90bf64)


<a id="orgf205cd2"></a>

# meeting notes February 27, 2022


<a id="org044c3b2"></a>

## the raku study group


<a id="orgcf83a6d"></a>

## usual links to the meeting material


<a id="org49e8919"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orga7f738b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org9f692ec"></a>

## topics


<a id="org3f27891"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org8761be5"></a>

## The good: There is meat for discussion and exploration in my solutions to this week's Challenge:

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org8105edc"></a>

### So, you might add that to your agenda, if it suits you.


<a id="org8087ed8"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org77cebc6"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org7f6d55e"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orga1e87bd"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org7c903bf"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org8403d71"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orgd167dfd"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org7f1e834"></a>

## announcements


<a id="orga84c089"></a>

### February 27th: next raku study group meeting


<a id="orga90bf64"></a>

### June 21-25: tprc: perl/raku conference
