- [meeting notes October 25, 2022](#org50fbe86)
  - [the raku study group](#org645a30a)
  - [promotion](#org5de5de3)
    - [Saturday morning: get on raku irc](#org128ef27)
    - [email liz, suggest a mention in raku weekly news?](#org8ee0a11)
    - [post note to reddit/r/rakulang](#org5584256)
  - [topics](#org0017d4e)
    - [rob: some issues with topic variables](#orgbc0d402)
    - [the modgrid/eurorack problem](#org96bbe76)
    - [classify](#org88fec75)
    - [weekly challenge](#org3983510)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#org0d3d529)
  - [announcements](#org5709a6e)
    - [October 23rd: the next raku study group meeting](#orgd498291)


<a id="org50fbe86"></a>

# meeting notes October 25, 2022


<a id="org645a30a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org5de5de3"></a>

## promotion


<a id="org128ef27"></a>

### Saturday morning: get on raku irc


<a id="org8ee0a11"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org5584256"></a>

### post note to reddit/r/rakulang


<a id="org0017d4e"></a>

## topics


<a id="orgbc0d402"></a>

### rob: some issues with topic variables


<a id="org96bbe76"></a>

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


<a id="org88fec75"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org3983510"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org0d3d529"></a>

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


<a id="org5709a6e"></a>

## announcements


<a id="orgd498291"></a>

### October 23rd: the next raku study group meeting
