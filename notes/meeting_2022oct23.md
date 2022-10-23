- [meeting notes October 23, 2022](#orgd32d3f9)
  - [the raku study group](#orgff29506)
  - [promotion](#org38c43cb)
    - [get on raku irc](#orgac92282)
    - [email liz, suggest a mention in raku weekly news?](#org40e2af0)
    - [post note to reddit/r/rakulang](#orgfa9d4d7)
  - [topics](#org0ebec4b)
    - [the modgrid/eurorack problem](#org07116e6)
    - [lizmat on smartmatch asymmetry](#org7b74677)
    - [Rob's issue with ,= and nested Hashes](#org6062f1b)
    - [classify](#org12a2b89)
    - [weekly challenge](#org1976304)
    - [using a pull request to add notes here is an excellent thing to do](#org79614e4)
  - [announcements](#org20b54f1)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org4a5c0c9)
    - [November 6th: the next raku study group meeting](#org29bdd58)


<a id="orgd32d3f9"></a>

# meeting notes October 23, 2022


<a id="orgff29506"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org38c43cb"></a>

## promotion


<a id="orgac92282"></a>

### get on raku irc


<a id="org40e2af0"></a>

### email liz, suggest a mention in raku weekly news?


<a id="orgfa9d4d7"></a>

### post note to reddit/r/rakulang


<a id="org0ebec4b"></a>

## topics


<a id="org07116e6"></a>

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


<a id="org7b74677"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org6062f1b"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>


<a id="org12a2b89"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org1976304"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org79614e4"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="org20b54f1"></a>

## announcements


<a id="org4a5c0c9"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org29bdd58"></a>

### November 6th: the next raku study group meeting
