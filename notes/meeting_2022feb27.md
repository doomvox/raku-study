- [meeting notes February 27, 2022](#org2b72849)
  - [the raku study group](#orgf329cda)
  - [usual links to the meeting material](#org2fd4c23)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org9a783ae)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgc615708)
  - [topics](#org1fdb420)
    - [Making a hash out of intertwined array of strings and integers](#orgcf0f451)
    - [bruce gray on the weekly challenge](#orge609b43)
    - [william michaels objects to saving returns by default in the repl](#org450e5e2)
    - [examples](#orgf7ae11e)
    - [issue about doing a ,= with a SetHash on right-hand side](#org39366b9)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org11a49a4)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orgeec8842)
    - [recursive regexs](#org0f7f6e8)
    - [raku grammars](#org7499a56)
    - [darkroast](#orga8b8b2d)
  - [announcements](#orgb1ddfc4)
    - [February 27th: next raku study group meeting](#orgfc4cb54)
    - [June 21-25: tprc: perl/raku conference](#orgc8a2a78)


<a id="org2b72849"></a>

# meeting notes February 27, 2022


<a id="orgf329cda"></a>

## the raku study group


<a id="org2fd4c23"></a>

## usual links to the meeting material


<a id="org9a783ae"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgc615708"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org1fdb420"></a>

## topics


<a id="orgcf0f451"></a>

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


<a id="orge609b43"></a>

### bruce gray on the weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org450e5e2"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="orgf7ae11e"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org39366b9"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org11a49a4"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orgeec8842"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org0f7f6e8"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org7499a56"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="orga8b8b2d"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgb1ddfc4"></a>

## announcements


<a id="orgfc4cb54"></a>

### February 27th: next raku study group meeting


<a id="orgc8a2a78"></a>

### June 21-25: tprc: perl/raku conference
