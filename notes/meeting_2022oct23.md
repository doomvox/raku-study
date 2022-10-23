- [meeting notes October 23, 2022](#orgd03abfc)
  - [the raku study group](#org72fd561)
  - [promotion](#org6da17d4)
    - [get on raku irc](#org80580b9)
    - [email liz, suggest a mention in raku weekly news?](#orgb87144c)
    - [post note to reddit/r/rakulang](#org8e9476f)
  - [topics](#org1bfca45)
    - [the modgrid/eurorack problem](#orgdaa1665)
    - [lizmat on smartmatch asymmetry](#org6cdc289)
    - [Rob Ransbottom issue](#org7c97bf9)
    - [classify](#org466750b)
    - [weekly challenge](#org1a161f4)
  - [announcements](#org979d335)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org1fb0058)
    - [November 6th: the next raku study group meeting](#orgda0bea8)


<a id="orgd03abfc"></a>

# meeting notes October 23, 2022


<a id="org72fd561"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org6da17d4"></a>

## promotion


<a id="org80580b9"></a>

### get on raku irc


<a id="orgb87144c"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org8e9476f"></a>

### post note to reddit/r/rakulang


<a id="org1bfca45"></a>

## topics


<a id="orgdaa1665"></a>

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


<a id="org6cdc289"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org7c97bf9"></a>

### Rob Ransbottom issue

1.  Marton Polgar has commentary

    1.  <https://github.com/doomvox/raku-study/pull/1>
    
        1.  Commit Summary 24916ee Adding note of an issue from Rob that I checked out
        
            <https://github.com/doomvox/raku-study/pull/1.patch> <https://github.com/doomvox/raku-study/pull/1.diff>


<a id="org466750b"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org1a161f4"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org979d335"></a>

## announcements


<a id="org1fb0058"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgda0bea8"></a>

### November 6th: the next raku study group meeting
