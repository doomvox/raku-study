- [meeting notes May 30, 2021](#orgf869c02)
  - [secret plan](#orgfe9391d)
    - [bill: weirdness on if/else vs ternary](#org97321eb)
    - [bruce gray](#org6ad924a)
    - [junctions](#orgf1ff8b5)
    - [finished that special purpose find/grep script:](#org4022755)
    - ["commutative" pattern matching:](#orge26a6ea)
    - [perl5-porters list: trimming whitespace](#org10b9ad2)
  - [other topic ideas](#org9c26f86)
    - [raku classes as data containers (joe brenner)](#orged90a93)
    - [argument passing signatures (joe brenner)](#orged0654e)
    - [bruce gray rosettacode](#org98ce05e)
    - [super flat](#org760948c)
    - [type system: what is accepted by what](#orgf4c9ce9)
    - [go through my perl5 templates: how much is core raku now?](#org47ae1fb)
    - [raku die handlers vs perl5](#org1a5b70f)
    - [raku idioms](#org028305c)
  - [appendix: the usual links](#org7915bf2)
    - [code examples](#org4d4cc52)
    - [meeting notes (material from this file)](#orge9840c4)
    - [SF Perl page, has links to mailing list](#org9c5bd8f)
    - [perl6-users mailing list archive](#org6f17217)
  - [announcments](#org360f663)
    - [next meeting: June 16th](#org1ac838e)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orge298654)
    - [conference coming up (bruce gray talk, etc)](#org1766f1b)


<a id="orgf869c02"></a>

# meeting notes May 30, 2021


<a id="orgfe9391d"></a>

## secret plan


<a id="org97321eb"></a>

### bill: weirdness on if/else vs ternary


<a id="org6ad924a"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="orgf1ff8b5"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org4022755"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orge26a6ea"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org10b9ad2"></a>

### perl5-porters list: trimming whitespace


<a id="org9c26f86"></a>

## other topic ideas


<a id="orged90a93"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orged0654e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org98ce05e"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org760948c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf4c9ce9"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org47ae1fb"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org1a5b70f"></a>

### raku die handlers vs perl5


<a id="org028305c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org7915bf2"></a>

## appendix: the usual links


<a id="org4d4cc52"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orge9840c4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org9c5bd8f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6f17217"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org360f663"></a>

## announcments


<a id="org1ac838e"></a>

### next meeting: June 16th


<a id="orge298654"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org1766f1b"></a>

### conference coming up (bruce gray talk, etc)
