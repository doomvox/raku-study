- [meeting notes May 30, 2021](#org2a90a6c)
  - [secret plan](#org8e5330a)
    - [bill: weirdness on if/else vs ternary](#org1fa65f6)
    - [bruce gray](#org8e8e505)
    - [junctions](#orgdbbba92)
    - [finished that special purpose find/grep script:](#orga4c63eb)
    - ["commutative" pattern matching:](#org2f1ff48)
    - [perl5-porters list: trimming whitespace](#org2ba10fd)
  - [other topic ideas](#orge281357)
    - [raku classes as data containers (joe brenner)](#orgca47a04)
    - [argument passing signatures (joe brenner)](#org629441b)
    - [bruce gray rosettacode](#org53e6d46)
    - [super flat](#orgc028586)
    - [type system: what is accepted by what](#org757c7ce)
    - [go through my perl5 templates: how much is core raku now?](#orgfb11d2d)
    - [raku die handlers vs perl5](#org4c8e477)
    - [raku idioms](#org6f76e9e)
  - [appendix: the usual links](#org8357b44)
    - [code examples](#orgb48843a)
    - [meeting notes (material from this file)](#org98f0ba7)
    - [SF Perl page, has links to mailing list](#orgdf5a50c)
    - [perl6-users mailing list archive](#orgf7adae7)
  - [announcments](#orgde9b09c)
    - [next meeting: June 20th, Sunday, so not **immediately** after the conference](#orgcdaf012)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org9fc83ac)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org0c2de18)


<a id="org2a90a6c"></a>

# meeting notes May 30, 2021


<a id="org8e5330a"></a>

## secret plan


<a id="org1fa65f6"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org8e8e505"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation

    1.  wants to write a good, centralized page about what you really need to know about raku sorts
    
        1.  the comparator is key&#x2013; what goes before what
        
        2.  the guts of the sort are written for you&#x2013; don't need to re-invent CS 101 wheels
        
        3.  existing docs are scattered with some peculiar examples


<a id="orgdbbba92"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orga4c63eb"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org2f1ff48"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org2ba10fd"></a>

### perl5-porters list: trimming whitespace


<a id="orge281357"></a>

## other topic ideas


<a id="orgca47a04"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org629441b"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org53e6d46"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgc028586"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org757c7ce"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgfb11d2d"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org4c8e477"></a>

### raku die handlers vs perl5


<a id="org6f76e9e"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org8357b44"></a>

## appendix: the usual links


<a id="orgb48843a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org98f0ba7"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgdf5a50c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgf7adae7"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgde9b09c"></a>

## announcments


<a id="orgcdaf012"></a>

### next meeting: June 20th, Sunday, so not **immediately** after the conference


<a id="org9fc83ac"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org0c2de18"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
