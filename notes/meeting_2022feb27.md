- [meeting notes February 27, 2022](#orgd84c364)
  - [the raku study group](#org0a4dfa7)
  - [usual links to the meeting material](#orga30968a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org856f627)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org8ba5959)
  - [topics](#org0acf767)
    - [Making a hash out of intertwined array of strings and integers](#org436ffb9)
    - [bruce gray on the weekly challenge](#orga06d2e8)
    - [william michaels objects to saving returns by default in the repl](#orgbc5941b)
    - [examples](#orga300d6d)
    - [issue about doing a ,= with a SetHash on right-hand side](#orge25c254)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org4fe61ba)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org5d700e3)
    - [recursive regexs](#org5b0cbc0)
    - [raku grammars](#orga6367ca)
    - [darkroast](#org575f8b7)
  - [announcements](#org72d4b96)
    - [February 27th: next raku study group meeting](#org1142a85)
    - [June 21-25: tprc: perl/raku conference](#org98df152)


<a id="orgd84c364"></a>

# meeting notes February 27, 2022


<a id="org0a4dfa7"></a>

## the raku study group


<a id="orga30968a"></a>

## usual links to the meeting material


<a id="org856f627"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org8ba5959"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org0acf767"></a>

## topics


<a id="org436ffb9"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orga06d2e8"></a>

### bruce gray on the weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="orgbc5941b"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="orga300d6d"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orge25c254"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org4fe61ba"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org5d700e3"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org5b0cbc0"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orga6367ca"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org575f8b7"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org72d4b96"></a>

## announcements


<a id="org1142a85"></a>

### February 27th: next raku study group meeting


<a id="org98df152"></a>

### June 21-25: tprc: perl/raku conference

\## <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>
