- [meeting notes October 23, 2022](#org04b5e79)
  - [the raku study group](#org55541da)
  - [promotion](#org6672b2b)
    - [get on raku irc](#org6701095)
    - [email liz, suggest a mention in raku weekly news?](#orge4dbda5)
    - [post note to reddit/r/rakulang](#orgc51e2e5)
  - [topics](#orgb80997f)
    - [the modgrid/eurorack problem](#org30a79a9)
    - [classify](#orge7aac66)
    - [weekly challenge](#org5bc503f)
  - [announcements](#org0226854)
    - [November 6th: the next raku study group meeting](#orgc6161ad)


<a id="org04b5e79"></a>

# meeting notes October 23, 2022


<a id="org55541da"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org6672b2b"></a>

## promotion


<a id="org6701095"></a>

### get on raku irc


<a id="orge4dbda5"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgc51e2e5"></a>

### post note to reddit/r/rakulang


<a id="orgb80997f"></a>

## topics


<a id="org30a79a9"></a>

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


<a id="orge7aac66"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org5bc503f"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>

2.  libexif, jpeg metadata

    1.  william michels:
    
        1.  the Perl5 executable "ExifTool":
        
            1.  <https://unix.stackexchange.com/a/676180/227738>
            
            2.  <https://exiftool.org/forum/index.php?topic=9224.msg47655#msg47655>
            
            3.  <https://exiftool.org/forum/index.php?topic=6330.msg31354#msg31354>
            
            4.  <https://exiftool.org/exiftool_pod.html>
            
            5.  <https://exiftool.org/>


<a id="org0226854"></a>

## announcements


<a id="orgc6161ad"></a>

### November 6th: the next raku study group meeting
