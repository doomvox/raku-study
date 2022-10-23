- [meeting notes October 23, 2022](#org575ea22)
  - [the raku study group](#org81aaf29)
  - [topics](#org0e97d1d)
    - [the modgrid/eurorack problem](#orged07f03)
    - [classify](#orgdea2872)
    - [lizmat on smartmatch asymmetry](#orgccd4bfe)
    - [Rob's issue with ,= and nested Hashes](#org780f46c)
    - [weekly challenge](#org823573e)
    - [using a pull request to add notes here is an excellent thing to do](#orga251e47)
  - [announcements](#org118a14f)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgb194f79)
    - [November 6th: the next raku study group meeting](#org75cf7bd)


<a id="org575ea22"></a>

# meeting notes October 23, 2022


<a id="org81aaf29"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org0e97d1d"></a>

## topics


<a id="orged07f03"></a>

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


<a id="orgdea2872"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgccd4bfe"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org780f46c"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  detecting containers: <https://stackoverflow.com/questions/68734064/is-there-a-way-to-detect-whether-something-is-immutable>


<a id="org823573e"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-187/>

    1.  magic triplets (really: find numbers from a list that form triangles)


<a id="orga251e47"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="org118a14f"></a>

## announcements


<a id="orgb194f79"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org75cf7bd"></a>

### November 6th: the next raku study group meeting
