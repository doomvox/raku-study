- [meeting notes February 27, 2022](#org215a620)
  - [the raku study group](#org3c8b80e)
  - [usual links to the meeting material](#org7bfd02a)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org5ecde3b)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgccc5f48)
  - [topics](#org7caab2a)
    - [Making a hash out of intertwined array of strings and integers](#orgc01947d)
    - [examples](#org086aa1e)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgf341e86)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org09c1f86)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org1817217)
    - [recursive regexs](#org1557ed8)
    - [brian d foy was tripped up by creating a custom operator with right associativity](#orged6ff8e)
    - [darkroast](#orgb3e1e59)
  - [announcements](#org08018c4)
    - [February 27th: next raku study group meeting](#orgc47eec3)
    - [June 21-25: tprc: perl/raku conference](#org4d47e3e)


<a id="org215a620"></a>

# meeting notes February 27, 2022


<a id="org3c8b80e"></a>

## the raku study group


<a id="org7bfd02a"></a>

## usual links to the meeting material


<a id="org5ecde3b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgccc5f48"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org7caab2a"></a>

## topics


<a id="orgc01947d"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org086aa1e"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgf341e86"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org09c1f86"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org1817217"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org1557ed8"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orged6ff8e"></a>

### brian d foy was tripped up by creating a custom operator with right associativity

1.  <https://stackoverflow.com/questions/48219788/why-is-perl-6s-right-associativity-not-right>

2.  <file:///home/doom/Dust/Attic/Perl6/why_is_perl6_right_asociativity_not_right-stackoverflow-2018jan.html>

3.  right associativity explained

    1.  <https://stackoverflow.com/questions/930486/what-is-associativity-of-operators-and-why-is-it-important?rq=1>


<a id="orgb3e1e59"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org08018c4"></a>

## announcements


<a id="orgc47eec3"></a>

### February 27th: next raku study group meeting


<a id="org4d47e3e"></a>

### June 21-25: tprc: perl/raku conference
