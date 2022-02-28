- [meeting notes February 27, 2022](#orgd04321f)
  - [the raku study group](#org6877f3f)
  - [usual links to the meeting material](#org705b160)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgf204924)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgb1a1bb3)
  - [topics](#orgf25acf0)
    - [Nice problem from reddit: Making a hash out of intertwined array of strings and integers](#orgc39eb05)
    - [bruce gray on the weekly challenge: factorions](#orgccbadda)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org4f01265)
  - [topics for another time](#orgbe87dd4)
    - [examples](#orgac7cb2e)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgaafff39)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orgce58822)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orgca0f7af)
    - [recursive regexs](#org96089ea)
    - [raku grammars](#org83c8765)
    - [darkroast](#org9504667)
  - [announcements](#org865fc8a)
    - [March 13th: next raku study group meeting](#orgffe58c3)
    - [June 21-25: tprc: perl/raku conference](#org0daeb2b)


<a id="orgd04321f"></a>

# meeting notes February 27, 2022


<a id="org6877f3f"></a>

## the raku study group


<a id="org705b160"></a>

## usual links to the meeting material


<a id="orgf204924"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgb1a1bb3"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgf25acf0"></a>

## topics


<a id="orgc39eb05"></a>

### Nice problem from reddit: Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

2.  categorize

    1.  <https://docs.raku.org/routine/categorize>

3.  Bad behavior: assigning a series of complex elements to a scalar drops all but the first, and does it silently

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/issue_assigning_list_like_collection_to_scalar.raku>
    
    3.  opened an issue
    
        1.  <https://github.com/rakudo/rakudo/issues/4805>

4.  Rob Ransbottom points out: item assignment and list assignment uses different '=' operators

    1.  assigning to $data vs @data is presumably choosing different '=' ops with different precedence
    
    2.  <https://docs.raku.org/routine/=%20(item%20assignment)>
    
    3.  <https://docs.raku.org/routine/=%20(list%20assignment)>
    
    4.  <https://docs.raku.org/language/variables#Item_and_list_assignment>


<a id="orgccbadda"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org4f01265"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="orgbe87dd4"></a>

## topics for another time


<a id="orgac7cb2e"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgaafff39"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orgce58822"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orgca0f7af"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org96089ea"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org83c8765"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org9504667"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org865fc8a"></a>

## announcements


<a id="orgffe58c3"></a>

### March 13th: next raku study group meeting


<a id="org0daeb2b"></a>

### June 21-25: tprc: perl/raku conference
