- [meeting notes February 27, 2022](#org3931942)
  - [the raku study group](#org79e4f26)
  - [usual links to the meeting material](#orgc257642)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org89979e7)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org2498284)
  - [topics](#org4280207)
    - [Making a hash out of intertwined array of strings and integers](#org08d972f)
    - [examples](#org20ec5d5)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgf9859ef)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org082b739)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orga500d02)
    - [recursive regexs](#orgebecc25)
    - [raku grammars](#orgf5beb48)
    - [darkroast](#org98d60bc)
  - [announcements](#org83f1f06)
    - [February 27th: next raku study group meeting](#org57a8c52)
    - [June 21-25: tprc: perl/raku conference](#org6c58de7)


<a id="org3931942"></a>

# meeting notes February 27, 2022


<a id="org79e4f26"></a>

## the raku study group


<a id="orgc257642"></a>

## usual links to the meeting material


<a id="org89979e7"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org2498284"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org4280207"></a>

## topics


<a id="org08d972f"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org20ec5d5"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgf9859ef"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org082b739"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orga500d02"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orgebecc25"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgf5beb48"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org98d60bc"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org83f1f06"></a>

## announcements


<a id="org57a8c52"></a>

### February 27th: next raku study group meeting


<a id="org6c58de7"></a>

### June 21-25: tprc: perl/raku conference
