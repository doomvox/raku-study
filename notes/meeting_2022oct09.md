- [meeting notes October 25, 2022](#orgb8d7bf1)
  - [the raku study group](#org8d13932)
  - [promotion](#org6e02fcb)
    - [Saturday morning: get on raku irce](#org63da801)
    - [email liz, suggest a mention in raku weekly news?](#orge623ce5)
    - [post note to reddit/r/rakulang](#org31c9bd7)
  - [topics](#orga1231be)
    - [the modgrid/eurorack problem](#orgf1c7937)
    - [classify](#orgc4d1f96)
    - [weekly challenge](#orgc73cbd1)
    - [JJ Merelo, "Raku Recipies", Apress](#org954b8ac)
  - [announcements](#org221d982)
    - [October 23rd: the next raku study group meeting](#orge5c6a22)


<a id="orgb8d7bf1"></a>

# meeting notes October 25, 2022


<a id="org8d13932"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org6e02fcb"></a>

## promotion


<a id="org63da801"></a>

### Saturday morning: get on raku irce


<a id="orge623ce5"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org31c9bd7"></a>

### post note to reddit/r/rakulang


<a id="orga1231be"></a>

## topics


<a id="orgf1c7937"></a>

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


<a id="orgc4d1f96"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgc73cbd1"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org954b8ac"></a>

### JJ Merelo, "Raku Recipies", Apress

1.  some code:

    1.  <https://github.com/JJ/perl6-recipes-apress/blob/09a3465726ce96549946401970ae282baa4ba60d/Chapter-2/get-image-size.rk>

2.  libexif, jpeg metadata

    1.  william michels:
    
        1.  the Perl5 executable "ExifTool":
        
            1.  <https://unix.stackexchange.com/a/676180/227738>
            
            2.  <https://exiftool.org/forum/index.php?topic=9224.msg47655#msg47655>
            
            3.  <https://exiftool.org/forum/index.php?topic=6330.msg31354#msg31354>
            
            4.  <https://exiftool.org/exiftool_pod.html>
            
            5.  <https://exiftool.org/>


<a id="org221d982"></a>

## announcements


<a id="orge5c6a22"></a>

### October 23rd: the next raku study group meeting
