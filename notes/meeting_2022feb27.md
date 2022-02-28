- [meeting notes February 27, 2022](#org8e85c64)
  - [the raku study group](#org99ac1ff)
  - [usual links to the meeting material](#org2e36ccf)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org70b89eb)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgab50903)
  - [topics](#org20f8dd8)
    - [Making a hash out of intertwined array of strings and integers](#org56606da)
    - [bruce gray on the weekly challenge: factorions](#org74da6bf)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org0bdf739)
  - [topics for another time](#org5f32768)
    - [examples](#org271a287)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgc32d143)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org46ce9e9)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org0b08dd6)
    - [recursive regexs](#orgb9fdf26)
    - [raku grammars](#org73d7a1a)
    - [darkroast](#org8f255b8)
  - [announcements](#orge111900)
    - [March 13th: next raku study group meeting](#orgbc986d3)
    - [June 21-25: tprc: perl/raku conference](#orgdc49fd8)


<a id="org8e85c64"></a>

# meeting notes February 27, 2022


<a id="org99ac1ff"></a>

## the raku study group


<a id="org2e36ccf"></a>

## usual links to the meeting material


<a id="org70b89eb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgab50903"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org20f8dd8"></a>

## topics


<a id="org56606da"></a>

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


<a id="org74da6bf"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org0bdf739"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="org5f32768"></a>

## topics for another time


<a id="org271a287"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgc32d143"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org46ce9e9"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org0b08dd6"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orgb9fdf26"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org73d7a1a"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org8f255b8"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orge111900"></a>

## announcements


<a id="orgbc986d3"></a>

### March 13th: next raku study group meeting


<a id="orgdc49fd8"></a>

### June 21-25: tprc: perl/raku conference
