- [meeting notes October 25, 2022](#orged1b787)
  - [the raku study group](#org22c5ef1)
  - [promotion](#orge161325)
    - [Saturday morning: get on raku irce](#org7e5cf14)
    - [email liz, suggest a mention in raku weekly news?](#org4120f3a)
    - [post note to reddit/r/rakulang](#orga4a02c9)
  - [topics](#orgb3c5453)
    - [the modgrid/eurorack problem](#orgd87d498)
    - [classify](#orgcd01059)
    - [weekly challenge](#orgac7aba6)
    - [JJ Merelo, "Raku Recipies", Apress](#org81a411f)
  - [announcements](#orgaf73808)
    - [October 23rd: the next raku study group meeting](#org0b51d61)


<a id="orged1b787"></a>

# meeting notes October 25, 2022


<a id="org22c5ef1"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="orge161325"></a>

## promotion


<a id="org7e5cf14"></a>

### Saturday morning: get on raku irce


<a id="org4120f3a"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orga4a02c9"></a>

### post note to reddit/r/rakulang


<a id="orgb3c5453"></a>

## topics


<a id="orgd87d498"></a>

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


<a id="orgcd01059"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgac7aba6"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org81a411f"></a>

### JJ Merelo, "Raku Recipies", Apress

code available places like this:

<https://github.com/JJ/perl6-recipes-apress/blob/09a3465726ce96549946401970ae282baa4ba60d/Chapter-2/get-image-size.rk>


<a id="orgaf73808"></a>

## announcements


<a id="org0b51d61"></a>

### October 23rd: the next raku study group meeting
