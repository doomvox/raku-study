- [meeting notes October 25, 2022](#org3278de0)
  - [the raku study group](#org61526f9)
  - [promotion](#org6c1b9f3)
    - [Saturday morning: get on raku irce](#org9e44199)
    - [email liz, suggest a mention in raku weekly news?](#org1f33233)
    - [post note to reddit/r/rakulang](#org2980dcb)
  - [topics](#org4ad716c)
    - [the modgrid/eurorack problem](#org328b971)
    - [classify](#org3eb4dcc)
    - [weekly challenge](#orgcda3bea)
  - [announcements](#org7eedb6c)
    - [October 23rd: the next raku study group meeting](#org8818cbd)


<a id="org3278de0"></a>

# meeting notes October 25, 2022


<a id="org61526f9"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org6c1b9f3"></a>

## promotion


<a id="org9e44199"></a>

### Saturday morning: get on raku irce


<a id="org1f33233"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org2980dcb"></a>

### post note to reddit/r/rakulang


<a id="org4ad716c"></a>

## topics


<a id="org328b971"></a>

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


<a id="org3eb4dcc"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgcda3bea"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org7eedb6c"></a>

## announcements


<a id="org8818cbd"></a>

### October 23rd: the next raku study group meeting
