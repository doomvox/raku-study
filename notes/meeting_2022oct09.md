- [meeting notes October 25, 2022](#org894b472)
  - [the raku study group](#orgae619c7)
  - [promotion](#orgac04e44)
    - [Saturday morning: get on raku irce](#orgae33778)
    - [email liz, suggest a mention in raku weekly news?](#org8fa6896)
    - [post note to reddit/r/rakulang](#org88abcf7)
  - [topics](#org15bbb95)
    - [the modgrid/eurorack problem](#orgc7da4b1)
    - [classify](#org79d767d)
    - [weekly challenge](#org6ee2472)
    - [JJ Merelo, "Raku Recipies", Apress](#org317bada)
  - [announcements](#org421ccd2)
    - [October 23rd: the next raku study group meeting](#org29e5b3c)


<a id="org894b472"></a>

# meeting notes October 25, 2022


<a id="orgae619c7"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="orgac04e44"></a>

## promotion


<a id="orgae33778"></a>

### Saturday morning: get on raku irce


<a id="org8fa6896"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org88abcf7"></a>

### post note to reddit/r/rakulang


<a id="org15bbb95"></a>

## topics


<a id="orgc7da4b1"></a>

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


<a id="org79d767d"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org6ee2472"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org317bada"></a>

### JJ Merelo, "Raku Recipies", Apress

1.  some code:

    1.  <https://github.com/JJ/perl6-recipes-apress/blob/09a3465726ce96549946401970ae282baa4ba60d/Chapter-2/get-image-size.rk>


<a id="org421ccd2"></a>

## announcements


<a id="org29e5b3c"></a>

### October 23rd: the next raku study group meeting
