- [meeting notes February 27, 2022](#orgb8459bc)
  - [the raku study group](#orgfc887ca)
  - [usual links to the meeting material](#orgb86e243)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgba67f29)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orge4ce0b3)
  - [topics](#org99ab417)
    - [Making a hash out of intertwined array of strings and integers](#org8871ee8)
    - [bruce gray on the weekly challenge: factorions](#orgddf4808)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org29b2277)
  - [topics for another time](#org1f32beb)
    - [examples](#org046d5ac)
    - [issue about doing a ,= with a SetHash on right-hand side](#org231c496)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orge2c6c32)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orgfe9e258)
    - [recursive regexs](#org0f58735)
    - [raku grammars](#org156e874)
    - [darkroast](#orgf81cfa4)
  - [announcements](#org0eeea99)
    - [March 13th: next raku study group meeting](#orgb9ec6f2)
    - [June 21-25: tprc: perl/raku conference](#org8216cb8)


<a id="orgb8459bc"></a>

# meeting notes February 27, 2022


<a id="orgfc887ca"></a>

## the raku study group


<a id="orgb86e243"></a>

## usual links to the meeting material


<a id="orgba67f29"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orge4ce0b3"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org99ab417"></a>

## topics


<a id="org8871ee8"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

3.  Bad behavior: assigning a series of complex elements to a scalar drops all but the first, and does it silently

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/issue_assigning_list_like_collection_to_scalar.raku>
    
    3.  opened an issue
    
        1.  <https://github.com/rakudo/rakudo/issues/4805>

4.  little known facts: item assignment and list assignment uses different '=' operators

    1.  assigning to $data vs @data is presumably choosing different '=' ops with different precedence
    
    2.  <https://docs.raku.org/routine/=%20(item%20assignment)>
    
    3.  <https://docs.raku.org/routine/=%20(list%20assignment)>
    
    4.  <https://docs.raku.org/language/variables#Item_and_list_assignment>


<a id="orgddf4808"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org29b2277"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org1f32beb"></a>

## topics for another time


<a id="org046d5ac"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org231c496"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orge2c6c32"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orgfe9e258"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org0f58735"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org156e874"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orgf81cfa4"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org0eeea99"></a>

## announcements


<a id="orgb9ec6f2"></a>

### March 13th: next raku study group meeting


<a id="org8216cb8"></a>

### June 21-25: tprc: perl/raku conference
