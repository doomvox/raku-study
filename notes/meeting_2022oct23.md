- [meeting notes October 23, 2022](#orgf4fb9a4)
  - [the raku study group](#orge648586)
  - [promotion](#orgc1a22c8)
    - [get on raku irc](#orgacdd2dd)
    - [email liz, suggest a mention in raku weekly news?](#org042216b)
    - [post note to reddit/r/rakulang](#org3ff8f25)
  - [topics](#org869faa3)
    - [the modgrid/eurorack problem](#orgcdd60d3)
    - [lizmat on smartmatch asymmetry](#orgbab34fa)
    - [Rob's issue with ,= and nested Hashes](#orgfd9b871)
    - [classify](#org7420b55)
    - [weekly challenge](#org7af6e93)
  - [announcements](#org0cd53f3)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgacb44bf)
    - [November 6th: the next raku study group meeting](#org1e1c58c)


<a id="orgf4fb9a4"></a>

# meeting notes October 23, 2022


<a id="orge648586"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orgc1a22c8"></a>

## promotion


<a id="orgacdd2dd"></a>

### get on raku irc


<a id="org042216b"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org3ff8f25"></a>

### post note to reddit/r/rakulang


<a id="org869faa3"></a>

## topics


<a id="orgcdd60d3"></a>

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


<a id="orgbab34fa"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="orgfd9b871"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>


<a id="org7420b55"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org7af6e93"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org0cd53f3"></a>

## announcements


<a id="orgacb44bf"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org1e1c58c"></a>

### November 6th: the next raku study group meeting
