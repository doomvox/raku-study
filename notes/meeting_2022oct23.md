- [meeting notes October 23, 2022](#org2f77083)
  - [the raku study group](#orgcebfecf)
  - [promotion](#orga77a049)
    - [get on raku irc](#org9a51fdf)
    - [email liz, suggest a mention in raku weekly news?](#org3c5af26)
    - [post note to reddit/r/rakulang](#orgd647f48)
  - [topics](#org8d21ffc)
    - [the modgrid/eurorack problem](#org3a30e77)
    - [lizmat on smartmatch assymetry](#org7d4d3be)
    - [classify](#org00d6c79)
    - [weekly challenge](#org31ee532)
  - [announcements](#org626f31b)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org268053a)
    - [November 6th: the next raku study group meeting](#orgad70dde)


<a id="org2f77083"></a>

# meeting notes October 23, 2022


<a id="orgcebfecf"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orga77a049"></a>

## promotion


<a id="org9a51fdf"></a>

### get on raku irc


<a id="org3c5af26"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgd647f48"></a>

### post note to reddit/r/rakulang


<a id="org8d21ffc"></a>

## topics


<a id="org3a30e77"></a>

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


<a id="org7d4d3be"></a>

### lizmat on smartmatch assymetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org00d6c79"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org31ee532"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org626f31b"></a>

## announcements


<a id="org268053a"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgad70dde"></a>

### November 6th: the next raku study group meeting
