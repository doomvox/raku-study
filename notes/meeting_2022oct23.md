- [meeting notes October 23, 2022](#orgef3ec71)
  - [the raku study group](#org2092d3e)
  - [promotion](#org787583f)
    - [get on raku irc](#orgc933779)
    - [email liz, suggest a mention in raku weekly news?](#org0a1f8d1)
    - [post note to reddit/r/rakulang](#org8fef483)
  - [topics](#orge80c4fd)
    - [the modgrid/eurorack problem](#orga255792)
    - [lizmat on smartmatch asymmetry](#org61053f0)
    - [classify](#org2879c87)
    - [weekly challenge](#orga76b284)
  - [announcements](#orgdcd7279)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgc21c454)
    - [November 6th: the next raku study group meeting](#orgd503b34)


<a id="orgef3ec71"></a>

# meeting notes October 23, 2022


<a id="org2092d3e"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org787583f"></a>

## promotion


<a id="orgc933779"></a>

### get on raku irc


<a id="org0a1f8d1"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org8fef483"></a>

### post note to reddit/r/rakulang


<a id="orge80c4fd"></a>

## topics


<a id="orga255792"></a>

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


<a id="org61053f0"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org2879c87"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orga76b284"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgdcd7279"></a>

## announcements


<a id="orgc21c454"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgd503b34"></a>

### November 6th: the next raku study group meeting
