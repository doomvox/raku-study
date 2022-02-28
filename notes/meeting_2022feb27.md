- [meeting notes February 27, 2022](#orgf349c10)
  - [the raku study group](#org9d4de0d)
  - [usual links to the meeting material](#orgcc98000)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org5160cf3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgfba8cad)
  - [topics](#org276fe9b)
    - [Making a hash out of intertwined array of strings and integers](#org695471a)
    - [bruce gray on the weekly challenge: factorions](#org8075303)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org5d79061)
  - [topics for another time](#orgb694e54)
    - [examples](#orgdd5ed0b)
    - [issue about doing a ,= with a SetHash on right-hand side](#org8f55acf)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orgfd0906a)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orgaf8b256)
    - [recursive regexs](#org12eea2c)
    - [raku grammars](#orge963a10)
    - [darkroast](#orge22ca8b)
  - [announcements](#org8d835f2)
    - [February 27th: next raku study group meeting](#org86d676c)
    - [June 21-25: tprc: perl/raku conference](#orgde9e22f)


<a id="orgf349c10"></a>

# meeting notes February 27, 2022


<a id="org9d4de0d"></a>

## the raku study group


<a id="orgcc98000"></a>

## usual links to the meeting material


<a id="org5160cf3"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgfba8cad"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org276fe9b"></a>

## topics


<a id="org695471a"></a>

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


<a id="org8075303"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org5d79061"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="orgb694e54"></a>

## topics for another time


<a id="orgdd5ed0b"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org8f55acf"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orgfd0906a"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orgaf8b256"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org12eea2c"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orge963a10"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orge22ca8b"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org8d835f2"></a>

## announcements


<a id="org86d676c"></a>

### February 27th: next raku study group meeting


<a id="orgde9e22f"></a>

### June 21-25: tprc: perl/raku conference
