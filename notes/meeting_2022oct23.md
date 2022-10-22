- [meeting notes October 23, 2022](#org4058da7)
  - [the raku study group](#orgf4b56a5)
  - [promotion](#orga18660a)
    - [get on raku irc](#orga4ba590)
    - [email liz, suggest a mention in raku weekly news?](#org7a5ffd9)
    - [post note to reddit/r/rakulang](#org1f72b5a)
  - [topics](#org2db9900)
    - [the modgrid/eurorack problem](#org916e07d)
    - [classify](#org66cb47b)
    - [weekly challenge](#org5807607)
  - [announcements](#org5cda189)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org050e2d0)
    - [November 6th: the next raku study group meeting](#org83b0966)


<a id="org4058da7"></a>

# meeting notes October 23, 2022


<a id="orgf4b56a5"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orga18660a"></a>

## promotion


<a id="orga4ba590"></a>

### get on raku irc


<a id="org7a5ffd9"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org1f72b5a"></a>

### post note to reddit/r/rakulang


<a id="org2db9900"></a>

## topics


<a id="org916e07d"></a>

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


<a id="org66cb47b"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org5807607"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org5cda189"></a>

## announcements


<a id="org050e2d0"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org83b0966"></a>

### November 6th: the next raku study group meeting
