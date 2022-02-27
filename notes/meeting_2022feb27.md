- [meeting notes February 27, 2022](#org3f1641d)
  - [the raku study group](#orgec3d7d5)
  - [usual links to the meeting material](#org61a61b2)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgb1c3515)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgde8073d)
  - [topics](#orgbccef24)
    - [Making a hash out of intertwined array of strings and integers](#orgc5769a2)
  - [bruce gray wants to talk weekly challenge](#org96c1fde)
    - [examples](#orgf691a04)
    - [issue about doing a ,= with a SetHash on right-hand side](#org96b83bb)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orga2c1c9a)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org09b866a)
    - [recursive regexs](#org7915fde)
    - [raku grammars](#orgdbc316f)
    - [darkroast](#orgee35796)
  - [announcements](#org2eed480)
    - [February 27th: next raku study group meeting](#orge5e8998)
    - [June 21-25: tprc: perl/raku conference](#org9599d4f)


<a id="org3f1641d"></a>

# meeting notes February 27, 2022


<a id="orgec3d7d5"></a>

## the raku study group


<a id="org61a61b2"></a>

## usual links to the meeting material


<a id="orgb1c3515"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgde8073d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgbccef24"></a>

## topics


<a id="orgc5769a2"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org96c1fde"></a>

## bruce gray wants to talk weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="orgf691a04"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org96b83bb"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orga2c1c9a"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org09b866a"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org7915fde"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgdbc316f"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orgee35796"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org2eed480"></a>

## announcements


<a id="orge5e8998"></a>

### February 27th: next raku study group meeting


<a id="org9599d4f"></a>

### June 21-25: tprc: perl/raku conference
