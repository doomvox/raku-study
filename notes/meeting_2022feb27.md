- [meeting notes February 27, 2022](#org7b39b10)
  - [the raku study group](#orga1f6dff)
  - [usual links to the meeting material](#orgb07dc85)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>](#orgfabf99a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>](#orga10bf50)
  - [topics](#orgaac98bc)
    - [Making a hash out of intertwined array of strings and integers](#orgbf3909a)
    - [bruce gray on the weekly challenge: factorions](#org0502460)
    - [william michaels objects to a proposed feature, saving returns by default in the repl](#org0b8ea05)
    - [examples](#orgc0324a4)
    - [issue about doing a ,= with a SetHash on right-hand side](#org4b209e4)
    - [<http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>](#org05215ae)
    - [<https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>](#orgf7a38f7)
    - [recursive regexs](#orgfdf95fa)
    - [raku grammars](#org907d691)
    - [darkroast](#org4c040b0)
  - [announcements](#org9e8ccd1)
    - [February 27th: next raku study group meeting](#orge673027)
    - [June 21-25: tprc: perl/raku conference](#orgf7615a9)


<a id="org7b39b10"></a>

# meeting notes February 27, 2022


<a id="orga1f6dff"></a>

## the raku study group


<a id="orgb07dc85"></a>

## usual links to the meeting material


<a id="orgfabf99a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb27.md>


<a id="orga10bf50"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2022feb27>


<a id="orgaac98bc"></a>

## topics


<a id="orgbf3909a"></a>

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


<a id="org0502460"></a>

### bruce gray on the weekly challenge: factorions

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK1>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-153/#TASK2>

3.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-153/bruce-gray>


<a id="org0b8ea05"></a>

### william michaels objects to a proposed feature, saving returns by default in the repl

1.  <https://github.com/rakudo/rakudo/pull/4796#issue>

2.  possible objection: two-faced behavior is dangerous, almost invariably confusing


<a id="orgc0324a4"></a>

### examples

1.  <https://github.com/Raku/examples>


<a id="org4b209e4"></a>

### issue about doing a ,= with a SetHash on right-hand side

1.  <https://github.com/rakudo/rakudo/issues/4678>

2.  discussion goes through a number of oddities about Raku

    1.  are sets containers, or things-in-themselves?
    
        1.  quanthashes don't flatten like hashes (not Iteratable)
    
    2.  shades of Russell's Paradox.
    
        1.  lizmat proposes a solution in the direction of ZFC
        
        2.  jonathan worthington objects it doesn't go all the way to prohibit indirect self-ref


<a id="org05215ae"></a>

### <http://clarkema.org/lab/2022/2022-02-09-raku-multiple-grammars/>


<a id="orgf7a38f7"></a>

### <https://www.reddit.com/r/rakulang/comments/ssd1lf/multiple_cooperating_grammars_in_raku_mike_clarke/>


<a id="orgfdf95fa"></a>

### recursive regexs

1.  stackoverflow:

    1.  <https://stackoverflow.com/questions/70913301/what-is-the-correct-raku-recursive-regex-syntax>


<a id="org907d691"></a>

### raku grammars

1.  <https://dev.to/taw/100-languages-speedrun-episode-68-raku-perl-6-grammars-9f0>

2.  "parrot raiser" pick


<a id="org4c040b0"></a>

### darkroast

1.  staging area for new roast tests, lower bar to add more tests than to roast

2.  talk about on "problemsolving" on github?


<a id="org9e8ccd1"></a>

## announcements


<a id="orge673027"></a>

### February 27th: next raku study group meeting


<a id="orgf7615a9"></a>

### June 21-25: tprc: perl/raku conference
