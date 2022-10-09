- [meeting notes October 25, 2022](#org7571e1a)
  - [the raku study group](#org3c95370)
  - [promotion](#org097af7e)
    - [Saturday morning: get on raku irce](#org70e42b4)
    - [email liz, suggest a mention in raku weekly news?](#orgab86d58)
    - [post note to reddit/r/rakulang](#orgb5ee5fb)
  - [topics](#orga29ce3f)
    - [rob: some issues with topic variables](#org3230514)
    - [the modgrid/eurorack problem](#orgf0614ad)
    - [classify](#orgcff0600)
    - [weekly challenge](#orge4e621b)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#orgf8335ec)
  - [announcements](#orgd211669)
    - [October 23rd: the next raku study group meeting](#orge94ec4c)


<a id="org7571e1a"></a>

# meeting notes October 25, 2022


<a id="org3c95370"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org097af7e"></a>

## promotion


<a id="org70e42b4"></a>

### Saturday morning: get on raku irce


<a id="orgab86d58"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgb5ee5fb"></a>

### post note to reddit/r/rakulang


<a id="orga29ce3f"></a>

## topics


<a id="org3230514"></a>

### rob: some issues with topic variables


<a id="orgf0614ad"></a>

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


<a id="orgcff0600"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orge4e621b"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgf8335ec"></a>

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


<a id="orgd211669"></a>

## announcements


<a id="orge94ec4c"></a>

### October 23rd: the next raku study group meeting
