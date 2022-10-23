- [meeting notes October 23, 2022](#org2aa09e8)
  - [the raku study group](#org4c70308)
  - [topics](#org969e531)
    - [the modgrid/eurorack problem](#orgec50eb9)
    - [lizmat on smartmatch asymmetry](#orgd881223)
    - [Rob's issue with ,= and nested Hashes](#orgdeb3829)
    - [classify](#org96fa163)
    - [weekly challenge](#org1210afd)
    - [using a pull request to add notes here is an excellent thing to do](#orga3b990c)
  - [announcements](#org4989d30)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org6cd3144)
    - [November 6th: the next raku study group meeting](#orgfd38385)


<a id="org2aa09e8"></a>

# meeting notes October 23, 2022


<a id="org4c70308"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org969e531"></a>

## topics


<a id="orgec50eb9"></a>

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


<a id="orgd881223"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="orgdeb3829"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>


<a id="org96fa163"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org1210afd"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orga3b990c"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="org4989d30"></a>

## announcements


<a id="org6cd3144"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgfd38385"></a>

### November 6th: the next raku study group meeting
