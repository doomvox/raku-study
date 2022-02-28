- [meeting notes February 27, 2022](#org892a6ae)
  - [the raku study group](#org1499ee8)
  - [usual links to the meeting material](#orgea3b333)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org304953f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgad5576e)
  - [topics](#orgd8428c6)
    - [Nice problem from reddit: Making a hash out of intertwined array of strings and integers](#org1a9e3b0)
    - [bruce gray on the weekly challenge: factorions](#org94555f8)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org51b22ac)
  - [topics for another time](#orge16ffd9)
    - [examples](#org2a5a466)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgb3e70c7)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org346da15)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org122b9fc)
    - [recursive regexs](#org26e3433)
    - [raku grammars](#org28e320d)
    - [darkroast](#orgfa6f0db)
  - [announcements](#org8a31c81)
    - [March 13th: next raku study group meeting](#org7fec97d)
    - [June 21-25: tprc: perl/raku conference](#orgfa1ddb7)


<a id="org892a6ae"></a>

# meeting notes February 27, 2022


<a id="org1499ee8"></a>

## the raku study group


<a id="orgea3b333"></a>

## usual links to the meeting material


<a id="org304953f"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgad5576e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgd8428c6"></a>

## topics


<a id="org1a9e3b0"></a>

### Nice problem from reddit: Making a hash out of intertwined array of strings and integers

1.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

2.  categorize

    1.  <https://docs.raku.org/routine/categorize>

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


<a id="org94555f8"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org51b22ac"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="orge16ffd9"></a>

## topics for another time


<a id="org2a5a466"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgb3e70c7"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org346da15"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org122b9fc"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org26e3433"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org28e320d"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orgfa6f0db"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org8a31c81"></a>

## announcements


<a id="org7fec97d"></a>

### March 13th: next raku study group meeting


<a id="orgfa1ddb7"></a>

### June 21-25: tprc: perl/raku conference
