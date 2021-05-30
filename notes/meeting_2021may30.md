- [meeting notes May 16, 2021](#org4fbb219)
  - [linkage](#org9293c39)
    - [<http://sf.pm.org>](#org810b9b1)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org96ad9ac)
  - [secret plan](#org151ed07)
    - [junctions](#org739d0ad)
    - [finished that special purpose find/grep script:](#org13c92fe)
    - ["commutative" pattern matching:](#orgdc9892c)
    - [perl5-porters list: got involved with arguing about line trimming](#org240cdd1)
  - [other topic ideas](#org2675e17)
    - [raku classes as data containers (joe brenner)](#org4b31163)
    - [argument passing signatures (joe brenner)](#org2bae372)
    - [find/grep variants in raku revisited (joe brenner)](#org8f2474b)
    - [bruce gray rosettacode](#orgf09f5fb)
    - [super flat](#org5b360c7)
    - [type system: what is accepted by what](#org48391e7)
    - [go through my perl5 templates: how much is core raku now?](#org2375b80)
    - [raku die handlers vs perl5](#org2c29a2b)
    - [raku idioms](#orgb03b07c)
  - [appendix: the usual links](#org943fe21)
    - [code examples](#org3e1f98b)
    - [meeting notes (material from this file)](#orgf454bae)
    - [SF Perl page, has links to mailing list](#org2d0113f)
    - [perl6-users mailing list archive](#org9a4608a)
  - [announcments](#org44245c2)
    - [next meeting: June 16th](#orgf999b3f)


<a id="org4fbb219"></a>

# meeting notes May 16, 2021


<a id="org9293c39"></a>

## linkage


<a id="org810b9b1"></a>

### <http://sf.pm.org>


<a id="org96ad9ac"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org151ed07"></a>

## secret plan


<a id="org739d0ad"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org13c92fe"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgdc9892c"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org240cdd1"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="org2675e17"></a>

## other topic ideas


<a id="org4b31163"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2bae372"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org8f2474b"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgf09f5fb"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5b360c7"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org48391e7"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org2375b80"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org2c29a2b"></a>

### raku die handlers vs perl5


<a id="orgb03b07c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org943fe21"></a>

## appendix: the usual links


<a id="org3e1f98b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgf454bae"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org2d0113f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9a4608a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org44245c2"></a>

## announcments


<a id="orgf999b3f"></a>

### next meeting: June 16th
