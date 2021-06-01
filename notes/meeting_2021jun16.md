- [meeting notes June 16, 2021](#org0c863e6)
  - [secret plan](#org8202de8)
    - [bill: weirdness on if/else vs ternary](#org5ed8b2c)
    - [bruce gray](#org29e47c0)
    - [junctions](#org71c1d16)
    - [finished that special purpose find/grep script:](#orgba28faf)
    - ["commutative" pattern matching:](#orgc7feb3a)
    - [perl5-porters list: trimming whitespace](#org2c16921)
  - [other topic ideas](#orgc3be983)
    - [raku classes as data containers (joe brenner)](#org8908b9a)
    - [argument passing signatures (joe brenner)](#orge00e0dc)
    - [bruce gray rosettacode](#org8273d91)
    - [super flat](#org03c6cef)
    - [type system: what is accepted by what](#orgda48cad)
    - [go through my perl5 templates: how much is core raku now?](#orgc56b793)
    - [raku die handlers vs perl5](#org46e70eb)
    - [raku idioms](#org3061597)
  - [appendix: the usual links](#orgb182a1a)
    - [code examples](#org8e0f812)
    - [meeting notes (material from this file)](#org85943fb)
    - [SF Perl page, has links to mailing list](#orgfde798e)
    - [perl6-users mailing list archive](#org54ae328)
  - [announcments](#orgec8971e)
    - [next meeting: June 16th](#org2fea765)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org5c263e6)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org74b426b)


<a id="org0c863e6"></a>

# meeting notes June 16, 2021


<a id="org8202de8"></a>

## secret plan


<a id="org5ed8b2c"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org29e47c0"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org71c1d16"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgba28faf"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgc7feb3a"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org2c16921"></a>

### perl5-porters list: trimming whitespace


<a id="orgc3be983"></a>

## other topic ideas


<a id="org8908b9a"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge00e0dc"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org8273d91"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org03c6cef"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgda48cad"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc56b793"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org46e70eb"></a>

### raku die handlers vs perl5


<a id="org3061597"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgb182a1a"></a>

## appendix: the usual links


<a id="org8e0f812"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org85943fb"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgfde798e"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org54ae328"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgec8971e"></a>

## announcments


<a id="org2fea765"></a>

### next meeting: June 16th


<a id="org5c263e6"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org74b426b"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
