- [meeting notes October 23, 2022](#orga805da2)
  - [the raku study group](#orgda6c86c)
  - [promotion](#orga601e76)
    - [get on raku irc](#orge62cd87)
    - [email liz, suggest a mention in raku weekly news?](#org0a41c6b)
    - [post note to reddit/r/rakulang](#orgf668492)
  - [topics](#org28b4a6d)
    - [the modgrid/eurorack problem](#orgc6a9442)
    - [classify](#org3aa3b21)
    - [weekly challenge](#org9225224)
    - [JJ Merelo, "Raku Recipes", Apress (aka "Springer Nature", ugh)](#orgfa36fe1)
  - [announcements](#org0603549)
    - [November 6th: the next raku study group meeting](#orgb46f4cd)


<a id="orga805da2"></a>

# meeting notes October 23, 2022


<a id="orgda6c86c"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orga601e76"></a>

## promotion


<a id="orge62cd87"></a>

### get on raku irc


<a id="org0a41c6b"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgf668492"></a>

### post note to reddit/r/rakulang


<a id="org28b4a6d"></a>

## topics


<a id="orgc6a9442"></a>

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


<a id="org3aa3b21"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org9225224"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orgfa36fe1"></a>

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


<a id="org0603549"></a>

## announcements


<a id="orgb46f4cd"></a>

### November 6th: the next raku study group meeting
