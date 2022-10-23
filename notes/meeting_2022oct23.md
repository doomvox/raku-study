- [meeting notes October 23, 2022](#orgde16187)
  - [the raku study group](#org9ffbda3)
  - [topics](#orgc738e23)
    - [the modgrid/eurorack problem](#orgbc81945)
    - [classify](#org538c45b)
    - [lizmat on smartmatch asymmetry](#org3936904)
    - [Rob's issue with ,= and nested Hashes](#org90a99bb)
    - [weekly challenge](#org5928512)
    - [using a pull request to add notes here is an excellent thing to do](#orgd326485)
  - [announcements](#orga4162c4)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgcab08c7)
    - [November 6th: the next raku study group meeting](#orgaa60e6d)


<a id="orgde16187"></a>

# meeting notes October 23, 2022


<a id="org9ffbda3"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orgc738e23"></a>

## topics


<a id="orgbc81945"></a>

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


<a id="org538c45b"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org3936904"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org90a99bb"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  detecting containers: <https://stackoverflow.com/questions/68734064/is-there-a-way-to-detect-whether-something-is-immutable>


<a id="org5928512"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-187/>

    1.  magic triplets (really: find numbers from a list that form triangles)


<a id="orgd326485"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="orga4162c4"></a>

## announcements


<a id="orgcab08c7"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgaa60e6d"></a>

### November 6th: the next raku study group meeting
