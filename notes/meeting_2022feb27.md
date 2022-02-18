- [meeting notes February 27, 2022](#org1222d44)
  - [the raku study group](#org0584286)
  - [usual links to the meeting material](#org3a2ed7c)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org4347088)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgd78c088)
  - [topics](#orgbbb1edf)
    - [Making a hash out of intertwined array of strings and integers](#org27dda11)
    - [examples](#org9f37b1c)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgadd99f0)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org197f21b)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org965e1e2)
    - [recursive regexs](#org112bae4)
    - [brian d foy was tripped up by creating a custom operator with right associativity](#orgb1b8dfa)
    - [darkroast](#org55e055b)
  - [announcements](#org8d7e581)
    - [February 27th: next raku study group meeting](#org7d6c4c0)
    - [June 21-25: tprc: perl/raku conference](#org8b89b2d)


<a id="org1222d44"></a>

# meeting notes February 27, 2022


<a id="org0584286"></a>

## the raku study group


<a id="org3a2ed7c"></a>

## usual links to the meeting material


<a id="org4347088"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgd78c088"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgbbb1edf"></a>

## topics


<a id="org27dda11"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org9f37b1c"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgadd99f0"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org197f21b"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org965e1e2"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org112bae4"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgb1b8dfa"></a>

### brian d foy was tripped up by creating a custom operator with right associativity

1.  <https://stackoverflow.com/questions/48219788/why-is-perl-6s-right-associativity-not-right>


<a id="org55e055b"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org8d7e581"></a>

## announcements


<a id="org7d6c4c0"></a>

### February 27th: next raku study group meeting


<a id="org8b89b2d"></a>

### June 21-25: tprc: perl/raku conference
