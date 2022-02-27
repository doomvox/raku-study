- [meeting notes February 27, 2022](#org07ebdfb)
  - [the raku study group](#org2030c5e)
  - [usual links to the meeting material](#orgcf04301)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org1eb380f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org4b58692)
  - [topics](#org6353b16)
    - [Making a hash out of intertwined array of strings and integers](#orgb641769)
  - [bruce gray wants to talk weekly challenge](#org0b43ad2)
  - [](#org898fb02)
    - [examples](#org43020cf)
    - [issue about doing a ,= with a SetHash on right-hand side](#org6943746)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org2304235)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orge8a68da)
    - [recursive regexs](#org57cf488)
    - [raku grammars](#orgccaabc9)
    - [darkroast](#org062abbd)
  - [announcements](#org8b1175d)
    - [February 27th: next raku study group meeting](#org4d45843)
    - [June 21-25: tprc: perl/raku conference](#org0d48435)


<a id="org07ebdfb"></a>

# meeting notes February 27, 2022


<a id="org2030c5e"></a>

## the raku study group


<a id="orgcf04301"></a>

## usual links to the meeting material


<a id="org1eb380f"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org4b58692"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org6353b16"></a>

## topics


<a id="orgb641769"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>


<a id="org0b43ad2"></a>

## bruce gray wants to talk weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org898fb02"></a>

## 


<a id="org43020cf"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org6943746"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org2304235"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orge8a68da"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org57cf488"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgccaabc9"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org062abbd"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org8b1175d"></a>

## announcements


<a id="org4d45843"></a>

### February 27th: next raku study group meeting


<a id="org0d48435"></a>

### June 21-25: tprc: perl/raku conference
