- [meeting notes October 25, 2022](#org12e943b)
  - [the raku study group](#org38b7a28)
  - [promotion](#org3cf6085)
    - [Saturday morning: get on raku irce](#org256cace)
    - [email liz, suggest a mention in raku weekly news?](#orgf116e49)
    - [post note to reddit/r/rakulang](#org2a86df0)
  - [topics](#orgce0f10b)
    - [the modgrid/eurorack problem](#orga0f8411)
    - [classify](#orgd182067)
    - [weekly challenge](#org0cdd094)
    - [JJ Merelo, "Raku Recipies", Apress](#org5b12a5d)
  - [announcements](#org7fa96b7)
    - [October 23rd: the next raku study group meeting](#orgdcd1e53)


<a id="org12e943b"></a>

# meeting notes October 25, 2022


<a id="org38b7a28"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org3cf6085"></a>

## promotion


<a id="org256cace"></a>

### Saturday morning: get on raku irce


<a id="orgf116e49"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org2a86df0"></a>

### post note to reddit/r/rakulang


<a id="orgce0f10b"></a>

## topics


<a id="orga0f8411"></a>

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


<a id="orgd182067"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org0cdd094"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org5b12a5d"></a>

### JJ Merelo, "Raku Recipies", Apress

1.  code examples:

    1.  <https://github.com/Apress/raku-recipes>
    
    2.  <https://github.com/JJ/perl6-recipes-apress/blob/09a3465726ce96549946401970ae282baa4ba60d/Chapter-2/get-image-size.rk>

2.  libexif, jpeg metadata

    1.  william michels:
    
        1.  the Perl5 executable "ExifTool":
        
            1.  <https://unix.stackexchange.com/a/676180/227738>
            
            2.  <https://exiftool.org/forum/index.php?topic=9224.msg47655#msg47655>
            
            3.  <https://exiftool.org/forum/index.php?topic=6330.msg31354#msg31354>
            
            4.  <https://exiftool.org/exiftool_pod.html>
            
            5.  <https://exiftool.org/>


<a id="org7fa96b7"></a>

## announcements


<a id="orgdcd1e53"></a>

### October 23rd: the next raku study group meeting
