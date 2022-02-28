- [meeting notes February 27, 2022](#org8564fe0)
  - [the raku study group](#org979dddc)
  - [usual links to the meeting material](#org6c8f42f)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org734d4cb)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orge27dbb1)
  - [topics](#orgf1b327e)
    - [Making a hash out of intertwined array of strings and integers](#orge37fbbc)
    - [bruce gray on the weekly challenge: factorions](#orgb34dc7e)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org997c239)
    - [examples](#org22a1e7b)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgab5b28e)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orgb06ff8d)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org90827d7)
    - [recursive regexs](#orga3654bd)
    - [raku grammars](#orgc0f5a3a)
    - [darkroast](#org2fdb454)
  - [announcements](#org4b33878)
    - [February 27th: next raku study group meeting](#orgb8fa977)
    - [June 21-25: tprc: perl/raku conference](#orgd04ed32)


<a id="org8564fe0"></a>

# meeting notes February 27, 2022


<a id="org979dddc"></a>

## the raku study group


<a id="org6c8f42f"></a>

## usual links to the meeting material


<a id="org734d4cb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orge27dbb1"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgf1b327e"></a>

## topics


<a id="orge37fbbc"></a>

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


<a id="orgb34dc7e"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org997c239"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org22a1e7b"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgab5b28e"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orgb06ff8d"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org90827d7"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orga3654bd"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgc0f5a3a"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org2fdb454"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org4b33878"></a>

## announcements


<a id="orgb8fa977"></a>

### February 27th: next raku study group meeting


<a id="orgd04ed32"></a>

### June 21-25: tprc: perl/raku conference
