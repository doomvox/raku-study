- [meeting notes October 23, 2022](#orgacbb0b6)
  - [the raku study group](#org8a8985c)
  - [promotion](#orgc9109d0)
    - [get on raku irc](#orgf4787e2)
    - [email liz, suggest a mention in raku weekly news?](#org3ac4b52)
    - [post note to reddit/r/rakulang](#org4b201a0)
  - [topics](#org12fbf5e)
    - [the modgrid/eurorack problem](#org7c44527)
    - [lizmat on smartmatch asymmetry](#org426e85f)
    - [Rob's issue with ,= and nested Hashes](#org0434417)
    - [classify](#org7cd3f2b)
    - [weekly challenge](#orga1cb8cd)
    - [using a pull request to add notes here is an excellent thing to do](#org70170a7)
  - [announcements](#orgbd148ca)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org1ba8adf)
    - [November 6th: the next raku study group meeting](#org7738d70)


<a id="orgacbb0b6"></a>

# meeting notes October 23, 2022


<a id="org8a8985c"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct23.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct23>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>


<a id="orgc9109d0"></a>

## promotion


<a id="orgf4787e2"></a>

### get on raku irc


<a id="org3ac4b52"></a>

### email liz, suggest a mention in raku weekly news?


<a id="org4b201a0"></a>

### post note to reddit/r/rakulang


<a id="org12fbf5e"></a>

## topics


<a id="org7c44527"></a>

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


<a id="org426e85f"></a>

### lizmat on smartmatch asymmetry

1.  <https://dev.to/lizmat/dont-fear-the-grepper-2-4ki5>


<a id="org0434417"></a>

### Rob's issue with ,= and nested Hashes

1.  <https://github.com/rakudo/rakudo/issues/4945>


<a id="org7cd3f2b"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orga1cb8cd"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="org70170a7"></a>

### using a pull request to add notes here is an excellent thing to do

1.  but the \*.md files are automatically generated from the \*.org source.

2.  Q: Any better policy? Should I be checking in generated files?

3.  I'm also fine with putting people on the contributor list


<a id="orgbd148ca"></a>

## announcements


<a id="org1ba8adf"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="org7738d70"></a>

### November 6th: the next raku study group meeting
