- [meeting notes February 27, 2022](#orgc543ca2)
  - [the raku study group](#org54dc026)
  - [usual links to the meeting material](#org2fd7d4d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgeb66f6b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org97f2eb0)
  - [topics](#org7e8aa0b)
    - [Making a hash out of intertwined array of strings and integers](#org7a16c9f)
    - [bruce gray on the weekly challenge](#org5b5d4c0)
    - [william michaels objects to saving returns by default in the repl](#org4f56d1e)
    - [examples](#org57df3c6)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgbc173d9)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orga09e55d)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org473536e)
    - [recursive regexs](#orgb1b7052)
    - [raku grammars](#org3d17235)
    - [darkroast](#org6306ed9)
  - [announcements](#orgdf138e9)
    - [February 27th: next raku study group meeting](#org8ef872a)
    - [June 21-25: tprc: perl/raku conference](#org954074c)


<a id="orgc543ca2"></a>

# meeting notes February 27, 2022


<a id="org54dc026"></a>

## the raku study group


<a id="org2fd7d4d"></a>

## usual links to the meeting material


<a id="orgeb66f6b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org97f2eb0"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org7e8aa0b"></a>

## topics


<a id="org7a16c9f"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org5b5d4c0"></a>

### bruce gray on the weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org4f56d1e"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="org57df3c6"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgbc173d9"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orga09e55d"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org473536e"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orgb1b7052"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org3d17235"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org6306ed9"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgdf138e9"></a>

## announcements


<a id="org8ef872a"></a>

### February 27th: next raku study group meeting


<a id="org954074c"></a>

### June 21-25: tprc: perl/raku conference
