- [meeting notes October 25, 2022](#org619cb8a)
  - [the raku study group](#org66ea58c)
  - [topics](#orgd167358)
    - [the modgrid/eurorack problem](#org4875e84)
    - [classify](#orgb1f59b5)
    - [weekly challenge](#org60aa672)
  - [announcements](#org6fbc734)
    - [October 23rd: the next raku study group meeting](#org32f61be)


<a id="org619cb8a"></a>

# meeting notes October 25, 2022


<a id="org66ea58c"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="orgd167358"></a>

## topics


<a id="org4875e84"></a>

### the modgrid/eurorack problem

1.  <https://www.modulargrid.net/e/modules/evaluationlists>

2.  q: doing popularity stats and such

3.  william michels soultion

    ```sh
    perl6 -e 'my @a = lines.antipairs; my @b = @a.sort(*.keys.words[0..*-3]).rotor(2 => -1); my @c; do for @b -> $b { @c.push($b) if $b.
    [0].keys.words[0..*-4] eq $b.[1].keys.words[0..*-4] }; say ($_ => (.[0].value - 100) + .[1].value).antipairs for @c.sort( { (.[0].value
    - 100) + .[1].value});'
    ```

4.  bruce gray

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/modgrid


<a id="orgb1f59b5"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org60aa672"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org6fbc734"></a>

## announcements


<a id="org32f61be"></a>

### October 23rd: the next raku study group meeting
