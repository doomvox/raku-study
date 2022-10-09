- [meeting notes October 25, 2022](#org832addc)
  - [the raku study group](#org1d8bcb1)
  - [promotion](#orgbb4d9c3)
    - [Saturday morning: get on raku irce](#org1c180c5)
    - [email liz, suggest a mention in raku weekly news?](#orgf2d5f3d)
    - [post note to reddit/r/rakulang](#org03afb53)
  - [topics](#org894d179)
    - [the modgrid/eurorack problem](#org25e4511)
    - [classify](#org7a6b81a)
    - [weekly challenge](#orgd2c0726)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#org311fa7b)
  - [announcements](#orged171ff)
    - [October 23rd: the next raku study group meeting](#orgee11c38)


<a id="org832addc"></a>

# meeting notes October 25, 2022


<a id="org1d8bcb1"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="orgbb4d9c3"></a>

## promotion


<a id="org1c180c5"></a>

### Saturday morning: get on raku irce


<a id="orgf2d5f3d"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org03afb53"></a>

### post note to reddit/r/rakulang


<a id="org894d179"></a>

## topics


<a id="org25e4511"></a>

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


<a id="org7a6b81a"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgd2c0726"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org311fa7b"></a>

### JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)

1.  <https://link.springer.com/book/10.1007/978-1-4842-6258-0>

2.  code examples:

    1.  <https://github.com/Apress/raku-recipes>
    
    2.  <https://github.com/JJ/perl6-recipes-apress/blob/09a3465726ce96549946401970ae282baa4ba60d/Chapter-2/get-image-size.rk>

3.  libexif, jpeg metadata

    1.  william michels:
    
        1.  the Perl5 executable "ExifTool":
        
            1.  <https://unix.stackexchange.com/a/676180/227738>
            
            2.  <https://exiftool.org/forum/index.php?topic=9224.msg47655#msg47655>
            
            3.  <https://exiftool.org/forum/index.php?topic=6330.msg31354#msg31354>
            
            4.  <https://exiftool.org/exiftool_pod.html>
            
            5.  <https://exiftool.org/>


<a id="orged171ff"></a>

## announcements


<a id="orgee11c38"></a>

### October 23rd: the next raku study group meeting
