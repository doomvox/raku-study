- [meeting notes October 25, 2022](#orgef9e14c)
  - [the raku study group](#org8cb44d2)
  - [topics](#org851d4c8)
    - [the modgrid/eurorack problem](#orge6ef086)
    - [classify](#orgfac9a9a)
    - [weekly challenge](#orge354048)
  - [announcements](#orgb53343b)
    - [October 23rd: the next raku study group meeting](#orgf1d0436)


<a id="orgef9e14c"></a>

# meeting notes October 25, 2022


<a id="org8cb44d2"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org851d4c8"></a>

## topics


<a id="orge6ef086"></a>

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


<a id="orgfac9a9a"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orge354048"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgb53343b"></a>

## announcements


<a id="orgf1d0436"></a>

### October 23rd: the next raku study group meeting
