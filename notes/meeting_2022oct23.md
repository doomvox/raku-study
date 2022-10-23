- [meeting notes October 23, 2022](#orgd5e8bd8)
  - [the raku study group](#org58263c3)
  - [promotion](#org39126ff)
    - [get on raku irc](#org0a2f946)
    - [email liz, suggest a mention in raku weekly news?](#org7805476)
    - [post note to reddit/r/rakulang](#org7cfce09)
  - [topics](#org6fc5daf)
    - [the modgrid/eurorack problem](#orgba1fdcc)
    - [lizmat on smartmatch asymmetry](#orgcdf960c)
    - [Rob's issue with ,= and nested Hashes](#org6cde2eb)
    - [classify](#org95cc059)
    - [weekly challenge](#org15c874b)
  - [announcements](#orgd8d4150)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgac9d2b5)
    - [November 6th: the next raku study group meeting](#org5a3a50f)


<a id="orgd5e8bd8"></a>

# meeting notes October 23, 2022


<a id="org58263c3"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org39126ff"></a>

## promotion


<a id="org0a2f946"></a>

### get on raku irc


<a id="org7805476"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org7cfce09"></a>

### post note to reddit/r/rakulang


<a id="org6fc5daf"></a>

## topics


<a id="orgba1fdcc"></a>

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


<a id="orgcdf960c"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org6cde2eb"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>


<a id="org95cc059"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org15c874b"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgd8d4150"></a>

## announcements


<a id="orgac9d2b5"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org5a3a50f"></a>

### November 6th: the next raku study group meeting
