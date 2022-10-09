- [meeting notes October 25, 2022](#org40a0cb4)
  - [the raku study group](#orgf293076)
  - [promotion](#orgcce6f31)
    - [Saturday morning: get on raku irce](#orgc2d0d7b)
    - [email liz, suggest a mention in raku weekly news?](#org4852f7f)
    - [post note to reddit/r/rakulang](#orgd429104)
  - [topics](#org860c148)
    - [rob: some issues with topic variables](#org83ed5a9)
    - [the modgrid/eurorack problem](#org6d9d9ce)
    - [classify](#orgce32d4e)
    - [weekly challenge](#orgb0f00b6)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#org26a55b9)
  - [announcements](#orge50c464)
    - [October 23rd: the next raku study group meeting](#org680c3ca)


<a id="org40a0cb4"></a>

# meeting notes October 25, 2022


<a id="orgf293076"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="orgcce6f31"></a>

## promotion


<a id="orgc2d0d7b"></a>

### Saturday morning: get on raku irce


<a id="org4852f7f"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgd429104"></a>

### post note to reddit/r/rakulang


<a id="org860c148"></a>

## topics


<a id="org83ed5a9"></a>

### rob: some issues with topic variables


<a id="org6d9d9ce"></a>

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


<a id="orgce32d4e"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgb0f00b6"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org26a55b9"></a>

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


<a id="orge50c464"></a>

## announcements


<a id="org680c3ca"></a>

### October 23rd: the next raku study group meeting
