- [meeting notes February 27, 2022](#org1a2d6b3)
  - [the raku study group](#orgb6511b9)
  - [usual links to the meeting material](#org40697d3)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org9d6696a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orgc9b09dd)
  - [topics](#org1627c0f)
    - [Making a hash out of intertwined array of strings and integers](#org7def22d)
  - [The good: There is meat for discussion and exploration in my solutions to this week's Challenge:](#org4fdd025)
    - [So, you might add that to your agenda, if it suits you.](#org55576bb)
    - [examples](#org92ad2a0)
    - [issue about doing a ,= with a SetHash on right-hand side](#org1f8fb15)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org3adaa06)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org1ea308d)
    - [recursive regexs](#org3529da5)
    - [raku grammars](#org6f5c8a7)
    - [darkroast](#org3d4f887)
  - [announcements](#org1d56e76)
    - [February 27th: next raku study group meeting](#org7c5c723)
    - [June 21-25: tprc: perl/raku conference](#orgfa2bad5)


<a id="org1a2d6b3"></a>

# meeting notes February 27, 2022


<a id="orgb6511b9"></a>

## the raku study group


<a id="org40697d3"></a>

## usual links to the meeting material


<a id="org9d6696a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orgc9b09dd"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org1627c0f"></a>

## topics


<a id="org7def22d"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org4fdd025"></a>

## The good: There is meat for discussion and exploration in my solutions to this week's Challenge:

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org55576bb"></a>

### So, you might add that to your agenda, if it suits you.


<a id="org92ad2a0"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org1f8fb15"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org3adaa06"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org1ea308d"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org3529da5"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org6f5c8a7"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org3d4f887"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org1d56e76"></a>

## announcements


<a id="org7c5c723"></a>

### February 27th: next raku study group meeting


<a id="orgfa2bad5"></a>

### June 21-25: tprc: perl/raku conference
