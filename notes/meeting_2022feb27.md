- [meeting notes February 27, 2022](#orgb9b2957)
  - [the raku study group](#org3727400)
  - [usual links to the meeting material](#orga0e099d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org25d2c69)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org2cd0e9d)
  - [topics](#orgb5ee87f)
    - [Making a hash out of intertwined array of strings and integers](#org771f68d)
    - [examples](#orge4ea2ae)
    - [issue about doing a ,= with a SetHash on right-hand side](#org9b4f3b1)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org7d62958)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org6391743)
    - [recursive regexs](#org35d0b91)
    - [darkroast](#org95f4fb9)
  - [announcements](#orgbbbc16f)
    - [February 27th: next raku study group meeting](#orga8393b4)
    - [June 21-25: tprc: perl/raku conference](#orgf5f5c27)


<a id="orgb9b2957"></a>

# meeting notes February 27, 2022


<a id="org3727400"></a>

## the raku study group


<a id="orga0e099d"></a>

## usual links to the meeting material


<a id="org25d2c69"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org2cd0e9d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgb5ee87f"></a>

## topics


<a id="org771f68d"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orge4ea2ae"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org9b4f3b1"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org7d62958"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org6391743"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org35d0b91"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org95f4fb9"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgbbbc16f"></a>

## announcements


<a id="orga8393b4"></a>

### February 27th: next raku study group meeting


<a id="orgf5f5c27"></a>

### June 21-25: tprc: perl/raku conference
