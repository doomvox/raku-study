- [meeting notes October 23, 2022](#org576abdc)
  - [the raku study group](#org24ba275)
  - [promotion](#orgfe85d14)
    - [get on raku irc](#org0e2bd39)
    - [email liz, suggest a mention in raku weekly news?](#org2171d8a)
    - [post note to reddit/r/rakulang](#orga97e4f9)
  - [topics](#org204b07f)
    - [rob: some issues with topic variables](#orgd5cf8b8)
    - [the modgrid/eurorack problem](#org2bddc7a)
    - [classify](#org58d15ed)
    - [weekly challenge](#orgc97e44e)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#org309b69b)
  - [announcements](#orgb44a38f)
    - [November 6th: the next raku study group meeting](#org0925aad)


<a id="org576abdc"></a>

# meeting notes October 23, 2022


<a id="org24ba275"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orgfe85d14"></a>

## promotion


<a id="org0e2bd39"></a>

### get on raku irc


<a id="org2171d8a"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orga97e4f9"></a>

### post note to reddit/r/rakulang


<a id="org204b07f"></a>

## topics


<a id="orgd5cf8b8"></a>

### rob: some issues with topic variables


<a id="org2bddc7a"></a>

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


<a id="org58d15ed"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgc97e44e"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org309b69b"></a>

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


<a id="orgb44a38f"></a>

## announcements


<a id="org0925aad"></a>

### November 6th: the next raku study group meeting
