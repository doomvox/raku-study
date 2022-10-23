- [meeting notes October 23, 2022](#orge29e919)
  - [the raku study group](#org05a615b)
  - [topics](#org6c0c97a)
    - [the modgrid/eurorack problem](#orga1d41bf)
    - [classify](#org388eedc)
    - [lizmat on smartmatch asymmetry](#org788a5c8)
    - [Rob's issue with ,= and nested Hashes](#orga5f0011)
    - [weekly challenge](#orgf1b446a)
    - [using a pull request to add notes here is an excellent thing to do](#org7ecb30d)
  - [announcements](#orgdeb9631)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgae1616b)
    - [November 6th: the next raku study group meeting](#org617506c)


<a id="orge29e919"></a>

# meeting notes October 23, 2022


<a id="org05a615b"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org6c0c97a"></a>

## topics


<a id="orga1d41bf"></a>

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


<a id="org388eedc"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org788a5c8"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="orga5f0011"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  detecting containers: <https://stackoverflow.com/questions/68734064/is-there-a-way-to-detect-whether-something-is-immutable>


<a id="orgf1b446a"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org7ecb30d"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="orgdeb9631"></a>

## announcements


<a id="orgae1616b"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org617506c"></a>

### November 6th: the next raku study group meeting
