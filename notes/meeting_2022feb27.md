- [meeting notes February 27, 2022](#org3eb18c1)
  - [the raku study group](#orgf576887)
  - [usual links to the meeting material](#org8d51a92)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org3826ab1)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org610a642)
  - [topics](#orgac7150f)
    - [Nice problem from reddit: Making a hash out of intertwined array of strings and integers](#org9c42f33)
    - [bruce gray on the weekly challenge: factorions](#org4e8a36a)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org550233b)
  - [topics for another time](#org023916a)
    - [examples](#org3ba7059)
    - [issue about doing a ,= with a SetHash on right-hand side](#org8a1ae95)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org1cd88b1)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org31ac9a7)
    - [recursive regexs](#org187395e)
    - [raku grammars](#orgc9b410d)
    - [darkroast](#org99d3e78)
  - [announcements](#orgfbecf32)
    - [March 13th: next raku study group meeting](#org4ef58e0)
    - [June 21-25: tprc: perl/raku conference](#org271bac2)


<a id="org3eb18c1"></a>

# meeting notes February 27, 2022


<a id="orgf576887"></a>

## the raku study group


<a id="org8d51a92"></a>

## usual links to the meeting material


<a id="org3826ab1"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org610a642"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgac7150f"></a>

## topics


<a id="org9c42f33"></a>

### Nice problem from reddit: Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

2.  categorize

    1.  <https://docs.raku.org/routine/categorize>

3.  Bad behavior: assigning a series of complex elements to a scalar drops all but the first, and does it silently

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/issue_assigning_list_like_collection_to_scalar.raku>
    
    3.  opened an issue
    
        1.  <https://github.com/rakudo/rakudo/issues/4805>

4.  rob rainsbottom points out: item assignment and list assignment uses different '=' operators

    1.  assigning to $data vs @data is presumably choosing different '=' ops with different precedence
    
    2.  <https://docs.raku.org/routine/=%20(item%20assignment)>
    
    3.  <https://docs.raku.org/routine/=%20(list%20assignment)>
    
    4.  <https://docs.raku.org/language/variables#Item_and_list_assignment>


<a id="org4e8a36a"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org550233b"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org023916a"></a>

## topics for another time


<a id="org3ba7059"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org8a1ae95"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org1cd88b1"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org31ac9a7"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org187395e"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgc9b410d"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org99d3e78"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgfbecf32"></a>

## announcements


<a id="org4ef58e0"></a>

### March 13th: next raku study group meeting


<a id="org271bac2"></a>

### June 21-25: tprc: perl/raku conference
