- [meeting notes February 27, 2022](#org3b05211)
  - [the raku study group](#orgf213a85)
  - [usual links to the meeting material](#orge7f615c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgf98038d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org8df6782)
  - [topics](#org7e85c71)
    - [Making a hash out of intertwined array of strings and integers](#org9c29d3f)
    - [examples](#orgea29d36)
    - [issue about doing a ,= with a SetHash on right-hand side](#org81f4274)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org5765f98)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org210e2d1)
    - [recursive regexs](#orgeadc9a4)
    - [darkroast](#orgd933dbe)
  - [announcements](#orge481858)
    - [February 27th: next raku study group meeting](#org3dcb141)
    - [June 21-25: tprc: perl/raku conference](#org3354f94)


<a id="org3b05211"></a>

# meeting notes February 27, 2022


<a id="orgf213a85"></a>

## the raku study group


<a id="orge7f615c"></a>

## usual links to the meeting material


<a id="orgf98038d"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org8df6782"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org7e85c71"></a>

## topics


<a id="org9c29d3f"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orgea29d36"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org81f4274"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org5765f98"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org210e2d1"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orgeadc9a4"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgd933dbe"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orge481858"></a>

## announcements


<a id="org3dcb141"></a>

### February 27th: next raku study group meeting


<a id="org3354f94"></a>

### June 21-25: tprc: perl/raku conference
