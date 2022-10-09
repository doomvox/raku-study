- [meeting notes October 09, 2022](#org22b80ce)
  - [the raku study group](#orgca16772)
  - [promotion](#org3c4990f)
    - [get on raku irc](#org8884222)
    - [email liz, suggest a mention in raku weekly news?](#org1677779)
    - [post note to reddit/r/rakulang](#orgaa82fc3)
  - [topics](#org566c176)
    - [rob: some issues with topic variables](#org5644f00)
    - [the modgrid/eurorack problem](#org536d7d0)
    - [classify](#org65973e2)
    - [weekly challenge](#org516b4a4)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#org7fdcda6)
  - [announcements](#orgc6f47ea)
    - [October 23rd: the next raku study group meeting](#org06b3007)


<a id="org22b80ce"></a>

# meeting notes October 09, 2022


<a id="orgca16772"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org3c4990f"></a>

## promotion


<a id="org8884222"></a>

### get on raku irc


<a id="org1677779"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgaa82fc3"></a>

### post note to reddit/r/rakulang


<a id="org566c176"></a>

## topics


<a id="org5644f00"></a>

### rob: some issues with topic variables


<a id="org536d7d0"></a>

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


<a id="org65973e2"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org516b4a4"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org7fdcda6"></a>

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


<a id="orgc6f47ea"></a>

## announcements


<a id="org06b3007"></a>

### October 23rd: the next raku study group meeting
