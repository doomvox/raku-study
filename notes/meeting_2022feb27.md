- [meeting notes February 27, 2022](#org88d8f37)
  - [the raku study group](#orge0c43b4)
  - [usual links to the meeting material](#org7506740)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgbe2a19a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#org5cf3362)
  - [topics](#org7bc9d0b)
    - [Making a hash out of intertwined array of strings and integers](#orgc903812)
    - [bruce gray on the weekly challenge](#org4641a34)
    - [william michaels objects to saving returns by default in the repl](#orga5143b3)
    - [examples](#org05d1f4c)
    - [issue about doing a ,= with a SetHash on right-hand side](#orga953fed)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org4cc5eed)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orge60aa5c)
    - [recursive regexs](#org0fa0b30)
    - [raku grammars](#orgd0a634c)
    - [darkroast](#org99945ba)
  - [announcements](#orgd486786)
    - [February 27th: next raku study group meeting](#org6c39358)
    - [June 21-25: tprc: perl/raku conference](#org8e62859)


<a id="org88d8f37"></a>

# meeting notes February 27, 2022


<a id="orge0c43b4"></a>

## the raku study group


<a id="org7506740"></a>

## usual links to the meeting material


<a id="orgbe2a19a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="org5cf3362"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="org7bc9d0b"></a>

## topics


<a id="orgc903812"></a>

### Making a hash out of intertwined array of strings and integers

1.  categorize

    1.  <https://docs.raku.org/routine/categorize>

2.  <https://www.reddit.com/r/rakulang/comments/skc52i/making_a_hash_out_of_intertwined_array_of_strings/>

3.  <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27/array_of_hashes.raku>

4.  little known facts: item assignment and list assignment uses different '=' operators

    1.  assigning to $data vs @data is presumably choosing different '=' ops with different precedence
    
    2.  <https://docs.raku.org/language/variables#Item_and_list_assignment>


<a id="org4641a34"></a>

### bruce gray on the weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="orga5143b3"></a>

### william michaels objects to saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>


<a id="org05d1f4c"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="orga953fed"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org4cc5eed"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orge60aa5c"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="org0fa0b30"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="orgd0a634c"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org99945ba"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="orgd486786"></a>

## announcements


<a id="org6c39358"></a>

### February 27th: next raku study group meeting


<a id="org8e62859"></a>

### June 21-25: tprc: perl/raku conference
