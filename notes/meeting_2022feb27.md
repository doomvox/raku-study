- [meeting notes February 27, 2022](#org5652fde)
  - [the raku study group](#org8b3ab03)
  - [usual links to the meeting material](#org2c74ba4)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org89f8c73)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org039f5c4)
  - [topics](#org3e3eb60)
    - [Making a hash out of intertwined array of strings and integers](#org2d7740c)
    - [examples](#orged11cf2)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgcb5f622)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#orgf4b8428)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org92e6de1)
    - [recursive regexs](#org18c5cd4)
    - [brian d foy was tripped up by creating a custom operator with right associativity](#orga0441aa)
    - [darkroast](#org3957e9a)
  - [announcements](#org2b5115a)
    - [February 27th: next raku study group meeting](#org408dec1)
    - [June 21-25: tprc: perl/raku conference](#org10cf777)


<a id="org5652fde"></a>

# meeting notes February 27, 2022


<a id="org8b3ab03"></a>

## the raku study group


<a id="org2c74ba4"></a>

## usual links to the meeting material


<a id="org89f8c73"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org039f5c4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org3e3eb60"></a>

## topics


<a id="org2d7740c"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="orged11cf2"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgcb5f622"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="orgf4b8428"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org92e6de1"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org18c5cd4"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orga0441aa"></a>

### brian d foy was tripped up by creating a custom operator with right associativity

1.  <https://stackoverflow.com/questions/48219788/why-is-perl-6s-right-associativity-not-right>

2.  <file:///home/doom/Dust/Attic/Perl6/why_is_perl6_right_asociativity_not_right-stackoverflow-2018jan.html>


<a id="org3957e9a"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org2b5115a"></a>

## announcements


<a id="org408dec1"></a>

### February 27th: next raku study group meeting


<a id="org10cf777"></a>

### June 21-25: tprc: perl/raku conference
