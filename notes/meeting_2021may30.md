- [meeting notes May 16, 2021](#orgf7c6e60)
  - [linkage](#org5ec3a9c)
    - [<http://sf.pm.org>](#org851f358)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org1a1492f)
  - [secret plan](#org4612257)
    - [junctions](#org4cd31b9)
    - [finished that special purpose find/grep script:](#orga4024b5)
    - ["commutative" pattern matching:](#org8cf393a)
    - [perl5-porters list: got involved with arguing about line trimming](#org7e0a9ba)
  - [other topic ideas](#orgbc13815)
    - [raku classes as data containers (joe brenner)](#orgefbbb0b)
    - [argument passing signatures (joe brenner)](#org2d6f5ef)
    - [find/grep variants in raku revisited (joe brenner)](#orgc9aaeeb)
    - [bruce gray rosettacode](#org88e60e3)
    - [super flat](#org8ebeb0b)
    - [type system: what is accepted by what](#orgea6b9bd)
    - [go through my perl5 templates: how much is core raku now?](#org68365ae)
    - [raku die handlers vs perl5](#org35c679b)
    - [raku idioms](#org9e13371)
  - [appendix: the usual links](#org120d74d)
    - [code examples](#orgbd00f3d)
    - [meeting notes (material from this file)](#org9c09c0b)
    - [SF Perl page, has links to mailing list](#org2267a38)
    - [perl6-users mailing list archive](#orge2b9f70)
  - [announcments](#org1598a98)
    - [next meeting: June 16th](#orgccc9494)


<a id="orgf7c6e60"></a>

# meeting notes May 16, 2021


<a id="org5ec3a9c"></a>

## linkage


<a id="org851f358"></a>

### <http://sf.pm.org>


<a id="org1a1492f"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org4612257"></a>

## secret plan


<a id="org4cd31b9"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orga4024b5"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner


<a id="org8cf393a"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org7e0a9ba"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="orgbc13815"></a>

## other topic ideas


<a id="orgefbbb0b"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2d6f5ef"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgc9aaeeb"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org88e60e3"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org8ebeb0b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgea6b9bd"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org68365ae"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org35c679b"></a>

### raku die handlers vs perl5


<a id="org9e13371"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org120d74d"></a>

## appendix: the usual links


<a id="orgbd00f3d"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org9c09c0b"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org2267a38"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orge2b9f70"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org1598a98"></a>

## announcments


<a id="orgccc9494"></a>

### next meeting: June 16th
