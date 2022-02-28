- [meeting notes February 27, 2022](#org96a738d)
  - [the raku study group](#orgbcb4a66)
  - [usual links to the meeting material](#org8b33a08)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org16bfb60)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org7482cd4)
  - [topics](#orge47be91)
    - [Making a hash out of intertwined array of strings and integers](#org5968603)
    - [bruce gray on the weekly challenge: factorions](#orga9c3b1c)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org8376f41)
  - [topics for another time](#org7141bcc)
    - [examples](#orgfad6852)
    - [issue about doing a ,= with a SetHash on right-hand side](#org8e522d6)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org43594ee)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orga929c37)
    - [recursive regexs](#org80376d5)
    - [raku grammars](#org4d3cd9e)
    - [darkroast](#org31c55e5)
  - [announcements](#orgb081003)
    - [March 13th: next raku study group meeting](#org81321f9)
    - [June 21-25: tprc: perl/raku conference](#org15a6a4a)


<a id="org96a738d"></a>

# meeting notes February 27, 2022


<a id="orgbcb4a66"></a>

## the raku study group


<a id="org8b33a08"></a>

## usual links to the meeting material


<a id="org16bfb60"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org7482cd4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orge47be91"></a>

## topics


<a id="org5968603"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

3.  Bad behavior: assigning a series of complex elements to a scalar drops all but the first, and does it silently

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>
    
        **\*\*** <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/issue_assigning_list_like_collection_to_scalar.raku>
    
    2.  opened an issue
    
        1.  <https://github.com/rakudo/rakudo/issues/4805>

4.  little known facts: item assignment and list assignment uses different '=' operators

    1.  assigning to $data vs @data is presumably choosing different '=' ops with different precedence
    
    2.  <https://docs.raku.org/routine/=%20(item%20assignment)>
    
    3.  <https://docs.raku.org/routine/=%20(list%20assignment)>
    
    4.  <https://docs.raku.org/language/variables#Item_and_list_assignment>


<a id="orga9c3b1c"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org8376f41"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org7141bcc"></a>

## topics for another time


<a id="orgfad6852"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org8e522d6"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org43594ee"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orga929c37"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org80376d5"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org4d3cd9e"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org31c55e5"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgb081003"></a>

## announcements


<a id="org81321f9"></a>

### March 13th: next raku study group meeting


<a id="org15a6a4a"></a>

### June 21-25: tprc: perl/raku conference
