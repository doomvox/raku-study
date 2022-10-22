- [meeting notes October 23, 2022](#org1210b94)
  - [the raku study group](#org4ff2481)
  - [promotion](#org4efafcd)
    - [get on raku irc](#org377c1f7)
    - [email liz, suggest a mention in raku weekly news?](#orgb6d4873)
    - [post note to reddit/r/rakulang](#org2a71835)
  - [topics](#org44f4ff6)
    - [the modgrid/eurorack problem](#org106ec2e)
    - [lizmat on smartmatch asymmetry](#orgc8cdaa6)
    - [classify](#orgbf144d0)
    - [weekly challenge](#org5c5dc77)
  - [announcements](#org9225068)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org5787ac1)
    - [November 6th: the next raku study group meeting](#org1091d5d)


<a id="org1210b94"></a>

# meeting notes October 23, 2022


<a id="org4ff2481"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org4efafcd"></a>

## promotion


<a id="org377c1f7"></a>

### get on raku irc


<a id="orgb6d4873"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org2a71835"></a>

### post note to reddit/r/rakulang


<a id="org44f4ff6"></a>

## topics


<a id="org106ec2e"></a>

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


<a id="orgc8cdaa6"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="orgbf144d0"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org5c5dc77"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org9225068"></a>

## announcements


<a id="org5787ac1"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org1091d5d"></a>

### November 6th: the next raku study group meeting
