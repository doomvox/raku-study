- [meeting notes February 27, 2022](#orgbe3b5f3)
  - [the raku study group](#orga88a37b)
  - [usual links to the meeting material](#org3717a95)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgd1195fe)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org4d2403c)
  - [topics](#orgf705373)
    - [Making a hash out of intertwined array of strings and integers](#org14ea325)
    - [bruce gray on the weekly challenge: factorions](#org619dd11)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org96ffaaa)
    - [examples](#org14ad5c1)
    - [issue about doing a ,= with a SetHash on right-hand side](#org247961c)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org91d7697)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org2c141a9)
    - [recursive regexs](#org8849959)
    - [raku grammars](#orgb1e3e8b)
    - [darkroast](#org96878a5)
  - [announcements](#org062e5e6)
    - [February 27th: next raku study group meeting](#orgd5f6f21)
    - [June 21-25: tprc: perl/raku conference](#org9e2ec6d)


<a id="orgbe3b5f3"></a>

# meeting notes February 27, 2022


<a id="orga88a37b"></a>

## the raku study group


<a id="org3717a95"></a>

## usual links to the meeting material


<a id="orgd1195fe"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org4d2403c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgf705373"></a>

## topics


<a id="org14ea325"></a>

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


<a id="org619dd11"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org96ffaaa"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="org14ad5c1"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org247961c"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org91d7697"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org2c141a9"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org8849959"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgb1e3e8b"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org96878a5"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org062e5e6"></a>

## announcements


<a id="orgd5f6f21"></a>

### February 27th: next raku study group meeting


<a id="org9e2ec6d"></a>

### June 21-25: tprc: perl/raku conference
