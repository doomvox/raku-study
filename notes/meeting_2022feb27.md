- [meeting notes February 27, 2022](#org9d818d1)
  - [the raku study group](#orgd36fd93)
  - [usual links to the meeting material](#orgd6fc56a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgec75ede)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org3c16cdf)
  - [topics](#org09888ea)
    - [Making a hash out of intertwined array of strings and integers](#orgdee4743)
    - [bruce gray on the weekly challenge](#orge852950)
    - [william michaels objects to saving returns by default in the repl](#org6dcb451)
    - [examples](#org6c52786)
    - [issue about doing a ,= with a SetHash on right-hand side](#org082d77d)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org363502e)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org269d740)
    - [recursive regexs](#org36aa65f)
    - [raku grammars](#org9f649e8)
    - [darkroast](#org4d737c9)
  - [announcements](#orga281e34)
    - [February 27th: next raku study group meeting](#orgb3d2f96)
    - [June 21-25: tprc: perl/raku conference](#org7585f68)


<a id="org9d818d1"></a>

# meeting notes February 27, 2022


<a id="orgd36fd93"></a>

## the raku study group


<a id="orgd6fc56a"></a>

## usual links to the meeting material


<a id="orgec75ede"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org3c16cdf"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org09888ea"></a>

## topics


<a id="orgdee4743"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

3.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>

4.  little known facts: item assignment and list assignment uses different '=' operators

    1.  assigning to $data vs @data is presumably choosing different '=' ops with different precedence
    
    2.  <https://docs.raku.org/routine/=%20(item%20assignment)>
    
    3.  <https://docs.raku.org/routine/=%20(list%20assignment)>
    
    4.  <https://docs.raku.org/language/variables#Item_and_list_assignment>


<a id="orge852950"></a>

### bruce gray on the weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org6dcb451"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="org6c52786"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org082d77d"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org363502e"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org269d740"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org36aa65f"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org9f649e8"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org4d737c9"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orga281e34"></a>

## announcements


<a id="orgb3d2f96"></a>

### February 27th: next raku study group meeting


<a id="org7585f68"></a>

### June 21-25: tprc: perl/raku conference
