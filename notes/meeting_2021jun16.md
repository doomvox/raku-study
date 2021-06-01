- [meeting notes June 16, 2021](#orgf5fb274)
  - [and now, for something completely different](#org6738837)
  - [minutes of last meeting](#org0f3ab5d)
    - [bill: weirdness on if/else vs ternary](#orgf77e629)
    - [bruce gray](#orgd279d11)
    - [junctions](#orgc2fd716)
    - [finished that special purpose find/grep script:](#org29389c9)
    - ["commutative" pattern matching:](#org3ccbe79)
    - [perl5-porters list: trimming whitespace](#org36666bf)
  - [other topic ideas](#orgf03c1a4)
    - [raku classes as data containers (joe brenner)](#orgcbb484b)
    - [argument passing signatures (joe brenner)](#org0e56bad)
    - [bruce gray rosettacode](#org4c6f039)
    - [super flat](#org3a4fe22)
    - [type system: what is accepted by what](#org860b7fc)
    - [go through my perl5 templates: how much is core raku now?](#org2a94e9b)
    - [raku die handlers vs perl5](#org4e9abcc)
    - [raku idioms](#org7b80301)
  - [appendix: the usual links](#orgd5e0d19)
    - [code examples](#orga8b7978)
    - [meeting notes (material from this file)](#org5e82591)
    - [SF Perl page, has links to mailing list](#orgd180b42)
    - [perl6-users mailing list archive](#org67bbee1)
  - [announcments](#orgfe78c0c)
    - [next meeting: June 16th](#orgd59600b)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org96b75a7)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orgc3aeaa4)


<a id="orgf5fb274"></a>

# meeting notes June 16, 2021


<a id="org6738837"></a>

## and now, for something completely different


<a id="org0f3ab5d"></a>

## minutes of last meeting


<a id="orgf77e629"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="orgd279d11"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="orgc2fd716"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org29389c9"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org3ccbe79"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org36666bf"></a>

### perl5-porters list: trimming whitespace


<a id="orgf03c1a4"></a>

## other topic ideas


<a id="orgcbb484b"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org0e56bad"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org4c6f039"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org3a4fe22"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org860b7fc"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org2a94e9b"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org4e9abcc"></a>

### raku die handlers vs perl5


<a id="org7b80301"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgd5e0d19"></a>

## appendix: the usual links


<a id="orga8b7978"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="org5e82591"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgd180b42"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org67bbee1"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgfe78c0c"></a>

## announcments


<a id="orgd59600b"></a>

### next meeting: June 16th


<a id="org96b75a7"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="orgc3aeaa4"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
