- [meeting notes October 23, 2022](#org2c65803)
  - [the raku study group](#orgc892507)
  - [promotion](#org0d37888)
    - [get on raku irc](#org88cd6e4)
    - [email liz, suggest a mention in raku weekly news?](#org31725eb)
    - [post note to reddit/r/rakulang](#org346584b)
  - [topics](#orgae35a41)
    - [the modgrid/eurorack problem](#orgfe0b259)
    - [lizmat on smartmatch asymmetry](#orgc485e79)
    - [classify](#org4297fd6)
    - [weekly challenge](#org17463a9)
  - [announcements](#org39cd1d9)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org05d7f44)
    - [November 6th: the next raku study group meeting](#org96832e7)


<a id="org2c65803"></a>

# meeting notes October 23, 2022


<a id="orgc892507"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org0d37888"></a>

## promotion


<a id="org88cd6e4"></a>

### get on raku irc


<a id="org31725eb"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org346584b"></a>

### post note to reddit/r/rakulang


<a id="orgae35a41"></a>

## topics


<a id="orgfe0b259"></a>

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


<a id="orgc485e79"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org4297fd6"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org17463a9"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org39cd1d9"></a>

## announcements


<a id="org05d7f44"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org96832e7"></a>

### November 6th: the next raku study group meeting
