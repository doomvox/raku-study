- [meeting notes May 30, 2021](#orgbe50bf9)
  - [secret plan](#org072775e)
    - [bill: weirdness on if/else vs ternary](#org2f4b7b7)
    - [bruce gray](#org5142b0c)
    - [junctions](#orgf428991)
    - [finished that special purpose find/grep script:](#org27cbaf7)
    - ["commutative" pattern matching:](#org8806e7b)
    - [perl5-porters list: trimming whitespace](#orga24d539)
  - [other topic ideas](#orgce7ac81)
    - [raku classes as data containers (joe brenner)](#org5b1217a)
    - [argument passing signatures (joe brenner)](#orgc0d5185)
    - [bruce gray rosettacode](#orgba9c92b)
    - [super flat](#orge931fa4)
    - [type system: what is accepted by what](#org524f5d2)
    - [go through my perl5 templates: how much is core raku now?](#orgc098f9e)
    - [raku die handlers vs perl5](#orgbe8d70c)
    - [raku idioms](#org8d19b1b)
  - [appendix: the usual links](#org4e1af37)
    - [code examples](#orge6a67d1)
    - [meeting notes (material from this file)](#org2067076)
    - [SF Perl page, has links to mailing list](#org5473442)
    - [perl6-users mailing list archive](#orgdead7aa)
  - [announcments](#org624a6f0)
    - [next meeting: June 20th, Sunday, right after the conference in the clouds (um)](#org4b9ad08)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org4bbc2bf)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org5e06663)


<a id="orgbe50bf9"></a>

# meeting notes May 30, 2021


<a id="org072775e"></a>

## secret plan


<a id="org2f4b7b7"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org5142b0c"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation

    1.  wants a good, centralized write-up of what you really need to know about raku sorts
    
        1.  the comparator is key&#x2013; what goes before what
        
        2.  the guts of the sort are written for you&#x2013; don't need to re-invent CS 101 wheels
        
        3.  existing docs are scattered with some peculiar examples


<a id="orgf428991"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org27cbaf7"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org8806e7b"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orga24d539"></a>

### perl5-porters list: trimming whitespace


<a id="orgce7ac81"></a>

## other topic ideas


<a id="org5b1217a"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgc0d5185"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgba9c92b"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge931fa4"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org524f5d2"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc098f9e"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgbe8d70c"></a>

### raku die handlers vs perl5


<a id="org8d19b1b"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org4e1af37"></a>

## appendix: the usual links


<a id="orge6a67d1"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org2067076"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org5473442"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgdead7aa"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org624a6f0"></a>

## announcments


<a id="org4b9ad08"></a>

### next meeting: June 20th, Sunday, right after the conference in the clouds (um)


<a id="org4bbc2bf"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org5e06663"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
