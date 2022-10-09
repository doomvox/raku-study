- [meeting notes October 25, 2022](#org44dd3d8)
  - [the raku study group](#org4050d9f)
  - [promotion](#orga053105)
    - [Saturday morning: get on raku irce](#orgf5f5996)
    - [email liz, suggest a mention in raku weekly news?](#orgc4c6871)
    - [post note to reddit/r/rakulang](#org2429955)
  - [topics](#org862b5a0)
    - [the modgrid/eurorack problem](#org88cdccb)
    - [classify](#org7c6ead1)
    - [weekly challenge](#orgea677c3)
    - [JJ Merelo, "Raku Recipies", Apress](#orgaa6e8c3)
  - [announcements](#org0ead302)
    - [October 23rd: the next raku study group meeting](#org689a600)


<a id="org44dd3d8"></a>

# meeting notes October 25, 2022


<a id="org4050d9f"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="orga053105"></a>

## promotion


<a id="orgf5f5996"></a>

### Saturday morning: get on raku irce


<a id="orgc4c6871"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org2429955"></a>

### post note to reddit/r/rakulang


<a id="org862b5a0"></a>

## topics


<a id="org88cdccb"></a>

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


<a id="org7c6ead1"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgea677c3"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgaa6e8c3"></a>

### JJ Merelo, "Raku Recipies", Apress

1.  some code:

    1.  <https://github.com/JJ/perl6-recipes-apress/blob/09a3465726ce96549946401970ae282baa4ba60d/Chapter-2/get-image-size.rk>

2.  libexif, jpeg metadata

    1.  william michels:
    
        1.  the Perl5 executable "ExifTool":
        
            1.  <https://unix.stackexchange.com/a/676180/227738>
            
            2.  <https://exiftool.org/forum/index.php?topic=9224.msg47655#msg47655>
            
            3.  <https://exiftool.org/forum/index.php?topic=6330.msg31354#msg31354>
            
            4.  <https://exiftool.org/exiftool_pod.html>
            
            5.  <https://exiftool.org/>


<a id="org0ead302"></a>

## announcements


<a id="org689a600"></a>

### October 23rd: the next raku study group meeting
