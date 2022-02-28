- [meeting notes February 27, 2022](#orga1a5899)
  - [the raku study group](#org51ed6fe)
  - [usual links to the meeting material](#org5aa842d)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#org7075bb7)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orge3bb5e5)
  - [topics](#orged25dae)
    - [Making a hash out of intertwined array of strings and integers](#orgdbab481)
    - [bruce gray on the weekly challenge](#org64f9327)
    - [william michaels objects to saving returns by default in the repl](#org40750ed)
    - [examples](#org3425e16)
    - [issue about doing a ,= with a SetHash on right-hand side](#orgaeaf4c1)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org224af68)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#org97397c7)
    - [recursive regexs](#org5019eed)
    - [raku grammars](#org3d87e03)
    - [darkroast](#org5a55bdd)
  - [announcements](#orgf91775c)
    - [February 27th: next raku study group meeting](#org14200ec)
    - [June 21-25: tprc: perl/raku conference](#org8bb92d5)


<a id="orga1a5899"></a>

# meeting notes February 27, 2022


<a id="org51ed6fe"></a>

## the raku study group


<a id="org5aa842d"></a>

## usual links to the meeting material


<a id="org7075bb7"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orge3bb5e5"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orged25dae"></a>

## topics


<a id="orgdbab481"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

3.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>


<a id="org64f9327"></a>

### bruce gray on the weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org40750ed"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="org3425e16"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orgaeaf4c1"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org224af68"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="org97397c7"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org5019eed"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org3d87e03"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org5a55bdd"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgf91775c"></a>

## announcements


<a id="org14200ec"></a>

### February 27th: next raku study group meeting


<a id="org8bb92d5"></a>

### June 21-25: tprc: perl/raku conference
