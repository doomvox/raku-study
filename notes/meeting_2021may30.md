- [meeting notes May 16, 2021](#org306da2c)
  - [linkage](#org1fcfff4)
    - [<http://sf.pm.org>](#org67b915c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org6b4e42f)
  - [secret plan](#orgcbda8fd)
    - [junctions](#orgcb727d9)
    - [raku's perl5 regex compatibility (:P5) is limited](#orgd435168)
    - ["commutative" pattern matching:](#org22bbae0)
  - [topic ideas](#org8ad8e63)
    - [raku classes as data containers (joe brenner)](#org00ee383)
    - [argument passing signatures (joe brenner)](#org7032d87)
    - [find/grep variants in raku revisited (joe brenner)](#orgbcab89d)
    - [bruce gray rosettacode](#org9f3bb47)
    - [super flat](#org2274034)
    - [type system: what is accepted by what](#orgcf9b127)
    - [go through my perl5 templates: how much is core raku now?](#org5f861ce)
    - [raku die handlers vs perl5](#org36348ca)
    - [raku idioms](#org5f8c626)
  - [appendix: the usual links](#org7aac3da)
    - [code examples](#org37cd422)
    - [meeting notes (material from this file)](#org3254c06)
    - [SF Perl page, has links to mailing list](#org7cb268a)
    - [perl6-users mailing list archive](#org4a70af5)
  - [announcments](#org4119fb6)
    - [next meeting: June 16th](#org7f82c45)


<a id="org306da2c"></a>

# meeting notes May 16, 2021


<a id="org1fcfff4"></a>

## linkage


<a id="org67b915c"></a>

### <http://sf.pm.org>


<a id="org6b4e42f"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgcbda8fd"></a>

## secret plan


<a id="orgcb727d9"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orgd435168"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org22bbae0"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org8ad8e63"></a>

## topic ideas


<a id="org00ee383"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org7032d87"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgbcab89d"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org9f3bb47"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org2274034"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgcf9b127"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org5f861ce"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org36348ca"></a>

### raku die handlers vs perl5


<a id="org5f8c626"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org7aac3da"></a>

## appendix: the usual links


<a id="org37cd422"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org3254c06"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org7cb268a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org4a70af5"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4119fb6"></a>

## announcments


<a id="org7f82c45"></a>

### next meeting: June 16th
