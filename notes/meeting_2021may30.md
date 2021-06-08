- [meeting notes May 30, 2021](#org396a2c3)
  - [secret plan](#orgeb722fd)
    - [bill: weirdness on if/else vs ternary](#orgb351b0c)
    - [bruce gray](#org6a84da1)
    - [junctions](#org3a50f87)
    - [finished that special purpose find/grep script:](#orgaf4e89a)
    - ["commutative" pattern matching:](#org9e06e21)
    - [perl5-porters list: trimming whitespace](#org6f9fd5d)
  - [other topic ideas](#org30cec74)
    - [raku classes as data containers (joe brenner)](#org9e639cb)
    - [argument passing signatures (joe brenner)](#orgabef4c8)
    - [bruce gray rosettacode](#org929bcf9)
    - [super flat](#orga7518dc)
    - [type system: what is accepted by what](#org175d4d3)
    - [go through my perl5 templates: how much is core raku now?](#orgdca3890)
    - [raku die handlers vs perl5](#orgef0dc28)
    - [raku idioms](#org1e6445e)
  - [appendix: the usual links](#org1378e37)
    - [code examples](#org89814c2)
    - [meeting notes (material from this file)](#org4c9cf11)
    - [SF Perl page, has links to mailing list](#orgf2e34dc)
    - [perl6-users mailing list archive](#org2b8d620)
  - [announcments](#orge394172)
    - [next meeting: June 20th, Sunday, so not **immediately** after the conference in the clouds](#org9470d21)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgc08aeb2)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org3884f3e)


<a id="org396a2c3"></a>

# meeting notes May 30, 2021


<a id="orgeb722fd"></a>

## secret plan


<a id="orgb351b0c"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org6a84da1"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation

    1.  wants to write a good, centralized page about what you really need to know about raku sorts
    
        1.  the comparator is key&#x2013; what goes before what
        
        2.  the guts of the sort are written for you&#x2013; don't need to re-invent CS 101 wheels
        
        3.  existing docs are scattered with some peculiar examples


<a id="org3a50f87"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgaf4e89a"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org9e06e21"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org6f9fd5d"></a>

### perl5-porters list: trimming whitespace


<a id="org30cec74"></a>

## other topic ideas


<a id="org9e639cb"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgabef4c8"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org929bcf9"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orga7518dc"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org175d4d3"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgdca3890"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgef0dc28"></a>

### raku die handlers vs perl5


<a id="org1e6445e"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org1378e37"></a>

## appendix: the usual links


<a id="org89814c2"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org4c9cf11"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgf2e34dc"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org2b8d620"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orge394172"></a>

## announcments


<a id="org9470d21"></a>

### next meeting: June 20th, Sunday, so not **immediately** after the conference in the clouds


<a id="orgc08aeb2"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org3884f3e"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
