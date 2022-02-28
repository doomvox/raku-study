- [meeting notes February 27, 2022](#orgc863dfa)
  - [the raku study group](#orgc0241ab)
  - [usual links to the meeting material](#org62e36c2)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgbbb5e3e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org2f1db42)
  - [topics](#org582589a)
    - [Making a hash out of intertwined array of strings and integers](#org44c8019)
    - [bruce gray on the weekly challenge: factorions](#orgcabb1bf)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org5b72c4f)
    - [examples](#org113845c)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgf74dcd9)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org51bd4ef)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org634eb66)
    - [recursive regexs](#org4dec935)
    - [raku grammars](#org3d0b0ab)
    - [darkroast](#orgd92f553)
  - [announcements](#orgf54a772)
    - [February 27th: next raku study group meeting](#org3c640e7)
    - [June 21-25: tprc: perl/raku conference](#orgf6cde94)


<a id="orgc863dfa"></a>

# meeting notes February 27, 2022


<a id="orgc0241ab"></a>

## the raku study group


<a id="org62e36c2"></a>

## usual links to the meeting material


<a id="orgbbb5e3e"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org2f1db42"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org582589a"></a>

## topics


<a id="org44c8019"></a>

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


<a id="orgcabb1bf"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org5b72c4f"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org113845c"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgf74dcd9"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org51bd4ef"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org634eb66"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org4dec935"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org3d0b0ab"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orgd92f553"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgf54a772"></a>

## announcements


<a id="org3c640e7"></a>

### February 27th: next raku study group meeting


<a id="orgf6cde94"></a>

### June 21-25: tprc: perl/raku conference
