- [meeting notes October 25, 2022](#org1f0cca0)
  - [the raku study group](#orge2447e9)
  - [topics](#org712ac3d)
    - [the modgrid/eurorack problem](#orgc80ac93)
    - [classify](#orgcc8d3ac)
    - [weekly challenge](#orgba51cb1)
  - [announcements](#orgb87f509)
    - [October 23rd: the next raku study group meeting](#org65407f9)


<a id="org1f0cca0"></a>

# meeting notes October 25, 2022


<a id="orge2447e9"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org712ac3d"></a>

## topics


<a id="orgc80ac93"></a>

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

    1.  convert to tsv: reverse-split-join-reverse
    
        1.  reverse the lines, split on whitespace (up to a limit), join on tabs, reverse again


<a id="orgcc8d3ac"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgba51cb1"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgb87f509"></a>

## announcements


<a id="org65407f9"></a>

### October 23rd: the next raku study group meeting
