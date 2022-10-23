- [meeting notes October 23, 2022](#orgb9c399e)
  - [the raku study group](#orgf634fb3)
  - [topics](#orgea357c3)
    - [the modgrid/eurorack problem](#orgdd802a3)
    - [classify](#org90b9a62)
    - [Rob's issue with ,= and nested Hashes](#orgf3e97d5)
    - [weekly challenge](#org5df5310)
    - [using a pull request to add notes here is an excellent thing to do](#org4591d61)
    - [lizmat on smartmatch asymmetry](#orgc3993ba)
    - [](#org64f756b)
  - [announcements](#org535a86b)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org50f9ab0)
    - [November 6th: the next raku study group meeting](#orga49af3b)


<a id="orgb9c399e"></a>

# meeting notes October 23, 2022


<a id="orgf634fb3"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orgea357c3"></a>

## topics


<a id="orgdd802a3"></a>

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


<a id="org90b9a62"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgf3e97d5"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>

2.  detecting containers: <https://stackoverflow.com/questions/68734064/is-there-a-way-to-detect-whether-something-is-immutable>


<a id="org5df5310"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-187/>

    1.  magic triplets (really: find numbers from a list that form triangles)


<a id="org4591d61"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="orgc3993ba"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org64f756b"></a>

### 

1.  <https://unix.stackexchange.com/questions/721770/identify-strings-between-patterns-and-print-entire-region-between-pattern-if-str/721818#721818>

2.  <https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ms762271>(v=vs.85)

3.  

    \#+BEGIN<sub>SRC</sub> sh raku -MXML -e 'my $xml = open-xml($\*ARGFILES.Str); \\ .say for $xml.getElementsByTagName("entry").grep(/ TSPAN6 | TNMD /).pairs;' file.xml
    
    raku -MXML -e 'my @xml = open-xml($\*ARGFILES.Str).getElementsByTagName("entry"); \\ my @names = <TSPAN6 TNMD>; .say for @xml.grep(*@names*).pairs;' file.xml \#+END<sub>SRC</sub> sh


<a id="org535a86b"></a>

## announcements


<a id="org50f9ab0"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orga49af3b"></a>

### November 6th: the next raku study group meeting
