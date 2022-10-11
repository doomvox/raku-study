- [meeting notes October 09, 2022](#org1c2594f)
  - [the raku study group](#orgbc72199)
  - [promotion](#org2504748)
    - [get on raku irc](#org56cdb04)
    - [email liz, suggest a mention in raku weekly news?](#org950e16f)
    - [post note to reddit/r/rakulang](#orgae26675)
  - [topics](#orgf67487e)
    - [rob: some issues with topic variables](#orgf04fb54)
    - [the modgrid/eurorack problem](#org330a797)
    - [classify](#org1fde927)
    - [weekly challenge](#orgd50e9f6)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#orgba9c776)
  - [announcements](#org31b25c9)
    - [October 23rd: the next raku study group meeting](#org550f51e)


<a id="org1c2594f"></a>

# meeting notes October 09, 2022


<a id="orgbc72199"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org2504748"></a>

## promotion


<a id="org56cdb04"></a>

### get on raku irc


<a id="org950e16f"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgae26675"></a>

### post note to reddit/r/rakulang


<a id="orgf67487e"></a>

## topics


<a id="orgf04fb54"></a>

### rob: some issues with topic variables


<a id="org330a797"></a>

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

    1.  convert to tsv: flip-split-join-flip
    
        1.  reverse the lines, split on whitespace (up to a limit), join on tabs, reverse again


<a id="org1fde927"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgd50e9f6"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgba9c776"></a>

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


<a id="org31b25c9"></a>

## announcements


<a id="org550f51e"></a>

### October 23rd: the next raku study group meeting
