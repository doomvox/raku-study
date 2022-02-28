- [meeting notes February 27, 2022](#orgd2b86e6)
  - [the raku study group](#org7bc9dee)
  - [usual links to the meeting material](#orgaf79509)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org05390f9)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org8c31211)
  - [topics](#orgb789013)
    - [Making a hash out of intertwined array of strings and integers](#org33b774e)
    - [bruce gray on the weekly challenge: factorions](#org71a2569)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org7c30804)
    - [examples](#org3ff621c)
    - [issue about doing a ,= with a SetHash on right-hand side](#org9d0a117)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org3d02f9b)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org59ebf52)
    - [recursive regexs](#orgc7408ae)
    - [raku grammars](#org7797cdd)
    - [darkroast](#org847750e)
  - [announcements](#org59bb6dd)
    - [February 27th: next raku study group meeting](#orgee4f45e)
    - [June 21-25: tprc: perl/raku conference](#org8ce949a)


<a id="orgd2b86e6"></a>

# meeting notes February 27, 2022


<a id="org7bc9dee"></a>

## the raku study group


<a id="orgaf79509"></a>

## usual links to the meeting material


<a id="org05390f9"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org8c31211"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgb789013"></a>

## topics


<a id="org33b774e"></a>

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


<a id="org71a2569"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org7c30804"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org3ff621c"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org9d0a117"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org3d02f9b"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org59ebf52"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orgc7408ae"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org7797cdd"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org847750e"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org59bb6dd"></a>

## announcements


<a id="orgee4f45e"></a>

### February 27th: next raku study group meeting


<a id="org8ce949a"></a>

### June 21-25: tprc: perl/raku conference
