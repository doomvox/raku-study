- [meeting notes October 23, 2022](#org01c0da5)
  - [the raku study group](#org5de397c)
  - [topics](#org25c8601)
    - [the modgrid/eurorack problem](#org001e841)
    - [classify](#org78e806e)
    - [Rob's issue with ,= and nested Hashes](#org577278a)
    - [weekly challenge](#org7839cf8)
    - [using a pull request to add notes here is an excellent thing to do](#org3e9e31e)
    - [lizmat on smartmatch asymmetry](#org9bba47c)
    - [](#orgfed461f)
  - [announcements](#org8e3f383)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#orgafb9142)
    - [November 6th: the next raku study group meeting](#orgc147eaa)


<a id="org01c0da5"></a>

# meeting notes October 23, 2022


<a id="org5de397c"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="org25c8601"></a>

## topics


<a id="org001e841"></a>

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


<a id="org78e806e"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="org577278a"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  detecting containers: <https://stackoverflow.com/questions/68734064/is-there-a-way-to-detect-whether-something-is-immutable>


<a id="org7839cf8"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-187/>

    1.  magic triplets (really: find numbers from a list that form triangles)


<a id="org3e9e31e"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="org9bba47c"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="orgfed461f"></a>

### 

1.  <https://unix.stackexchange.com/questions/721770/identify-strings-between-patterns-and-print-entire-region-between-pattern-if-str/721818#721818>

2.  <https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ms762271>(v=vs.85)

3.  

    \#+BEGIN<sub>SRC</sub> sh raku -MXML -e 'my $xml = open-xml($\*ARGFILES.Str); \\ .say for $xml.getElementsByTagName("entry").grep(/ TSPAN6 | TNMD /).pairs;' file.xml
    
    \#OR
    
    raku -MXML -e 'my @xml = open-xml($\*ARGFILES.Str).getElementsByTagName("entry"); \\ my @names = <TSPAN6 TNMD>; .say for @xml.grep(*@names*).pairs;' file.xml \#+END<sub>SRC</sub> sh


<a id="org8e3f383"></a>

## announcements


<a id="orgafb9142"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgc147eaa"></a>

### November 6th: the next raku study group meeting
