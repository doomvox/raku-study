- [meeting notes October 23, 2022](#org11b0579)
  - [the raku study group](#org1a0c39f)
  - [promotion](#org1ab2b7a)
    - [get on raku irc](#orgaf20680)
    - [email liz, suggest a mention in raku weekly news?](#orgd5bd503)
    - [post note to reddit/r/rakulang](#org1fd21b9)
  - [topics](#org24b34a5)
    - [the modgrid/eurorack problem](#org6871cc5)
    - [classify](#org231c8c8)
    - [weekly challenge](#org303d536)
  - [announcements](#org283706a)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgccf92bb)
    - [November 6th: the next raku study group meeting](#org5334066)


<a id="org11b0579"></a>

# meeting notes October 23, 2022


<a id="org1a0c39f"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org1ab2b7a"></a>

## promotion


<a id="orgaf20680"></a>

### get on raku irc


<a id="orgd5bd503"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org1fd21b9"></a>

### post note to reddit/r/rakulang


<a id="org24b34a5"></a>

## topics


<a id="org6871cc5"></a>

### the modgrid/eurorack problem

1.  <https://www.modulargrid.net/e/modules/evaluationlists>

2.  q: doing popularity stats and such

3.  william michels soultion

    ```sh
    perl6 -e 'my @a = lines.antipairs; my @b = @a.sort(*.keys.words[0..*-3]).rotor(2 => -1); my @c; do for @b -> $b { @c.push($b) if $b.
    [0].keys.words[0..*-4] eq $b.[1].keys.words[0..*-4] }; say ($_ => (.[0].value - 100) + .[1].value).antipairs for @c.sort( { (.[0].value
    - 100) + .[1].value});'
    ```
    
    1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09/modgrid_popularity_william_michels.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/modgrid<sub>popularity</sub><sub>william</sub><sub>michels.raku</sub>

4.  bruce gray

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09/modgrid>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/modgrid

5.  my thought:

    1.  convert to tsv: flip-split-join-flip
    
        1.  reverse the lines, split on whitespace (up to a limit), join on tabs, reverse again


<a id="org231c8c8"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org303d536"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org283706a"></a>

## announcements


<a id="orgccf92bb"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org5334066"></a>

### November 6th: the next raku study group meeting
