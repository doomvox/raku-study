- [meeting notes February 27, 2022](#org2f772b1)
  - [the raku study group](#org1bb9493)
  - [usual links to the meeting material](#org533e0b9)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org23b5a66)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org03b7dc2)
  - [topics](#org735419b)
    - [Making a hash out of intertwined array of strings and integers](#org21cb976)
    - [bruce gray on the weekly challenge: factorions](#org91aa7ac)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#orgc7b625e)
  - [topics for another time](#org8632f04)
    - [examples](#org0afdc18)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgac203b9)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orgc82af5b)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org46a9130)
    - [recursive regexs](#orge2e8d84)
    - [raku grammars](#org642e829)
    - [darkroast](#org0b4fd2e)
  - [announcements](#orge62586c)
    - [February 27th: next raku study group meeting](#org9b0631e)
    - [June 21-25: tprc: perl/raku conference](#org6786c68)


<a id="org2f772b1"></a>

# meeting notes February 27, 2022


<a id="org1bb9493"></a>

## the raku study group


<a id="org533e0b9"></a>

## usual links to the meeting material


<a id="org23b5a66"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org03b7dc2"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org735419b"></a>

## topics


<a id="org21cb976"></a>

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


<a id="org91aa7ac"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="orgc7b625e"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org8632f04"></a>

## topics for another time


<a id="org0afdc18"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgac203b9"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orgc82af5b"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org46a9130"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orge2e8d84"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org642e829"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org0b4fd2e"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orge62586c"></a>

## announcements


<a id="org9b0631e"></a>

### February 27th: next raku study group meeting


<a id="org6786c68"></a>

### June 21-25: tprc: perl/raku conference
