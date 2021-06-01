- [meeting notes May 30, 2021](#org4047661)
  - [secret plan](#org624f11b)
    - [bill: weirdness on if/else vs ternary](#org4ee1652)
    - [bruce gray](#org7a0e773)
    - [junctions](#orgb0079b2)
    - [finished that special purpose find/grep script:](#org6aded83)
    - ["commutative" pattern matching:](#orgeca47b3)
    - [perl5-porters list: trimming whitespace](#orgd5d85d8)
  - [other topic ideas](#org03f43aa)
    - [raku classes as data containers (joe brenner)](#org539817b)
    - [argument passing signatures (joe brenner)](#org1398864)
    - [bruce gray rosettacode](#org777dba6)
    - [super flat](#orgdddc4e9)
    - [type system: what is accepted by what](#org874ca43)
    - [go through my perl5 templates: how much is core raku now?](#orge36b958)
    - [raku die handlers vs perl5](#org0a78c19)
    - [raku idioms](#orgc59359c)
  - [appendix: the usual links](#org092a8eb)
    - [code examples](#org99b12d1)
    - [meeting notes (material from this file)](#orgc4a2e36)
    - [SF Perl page, has links to mailing list](#org3e233ad)
    - [perl6-users mailing list archive](#org150d4e2)
  - [announcments](#org775b054)
    - [next meeting: June 20th, Sunday, right after the conference in the clouds (um)](#org9dda1ec)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org759135d)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orgbaae12a)


<a id="org4047661"></a>

# meeting notes May 30, 2021


<a id="org624f11b"></a>

## secret plan


<a id="org4ee1652"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org7a0e773"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation

    1.  wants to write a good, centralized page about what you really need to know about raku sorts
    
        1.  the comparator is key&#x2013; what goes before what
        
        2.  the guts of the sort are written for you&#x2013; don't need to re-invent CS 101 wheels
        
        3.  existing docs are scattered with some peculiar examples


<a id="orgb0079b2"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org6aded83"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgeca47b3"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgd5d85d8"></a>

### perl5-porters list: trimming whitespace


<a id="org03f43aa"></a>

## other topic ideas


<a id="org539817b"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org1398864"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org777dba6"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgdddc4e9"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org874ca43"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orge36b958"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org0a78c19"></a>

### raku die handlers vs perl5


<a id="orgc59359c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org092a8eb"></a>

## appendix: the usual links


<a id="org99b12d1"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgc4a2e36"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org3e233ad"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org150d4e2"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org775b054"></a>

## announcments


<a id="org9dda1ec"></a>

### next meeting: June 20th, Sunday, right after the conference in the clouds (um)


<a id="org759135d"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="orgbaae12a"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
