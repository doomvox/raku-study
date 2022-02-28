- [meeting notes February 27, 2022](#org687e2d3)
  - [the raku study group](#org357f716)
  - [usual links to the meeting material](#orgdd93daf)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org33dc6af)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgbfca9a9)
  - [topics](#orge2a4965)
    - [Making a hash out of intertwined array of strings and integers](#orgfc0020a)
    - [bruce gray on the weekly challenge: factorions](#org47f0a3b)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#orgc36314d)
    - [examples](#orgffcbbc4)
    - [issue about doing a ,= with a SetHash on right-hand side](#org44ddd06)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org646ce79)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org6b2af11)
    - [recursive regexs](#orga6eba40)
    - [raku grammars](#org7310ff8)
    - [darkroast](#org18d55a3)
  - [announcements](#org4d346f1)
    - [February 27th: next raku study group meeting](#org040ce98)
    - [June 21-25: tprc: perl/raku conference](#org54e750a)


<a id="org687e2d3"></a>

# meeting notes February 27, 2022


<a id="org357f716"></a>

## the raku study group


<a id="orgdd93daf"></a>

## usual links to the meeting material


<a id="org33dc6af"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgbfca9a9"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orge2a4965"></a>

## topics


<a id="orgfc0020a"></a>

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


<a id="org47f0a3b"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="orgc36314d"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="orgffcbbc4"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org44ddd06"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org646ce79"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org6b2af11"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orga6eba40"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org7310ff8"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org18d55a3"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org4d346f1"></a>

## announcements


<a id="org040ce98"></a>

### February 27th: next raku study group meeting


<a id="org54e750a"></a>

### June 21-25: tprc: perl/raku conference
