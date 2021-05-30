- [meeting notes May 16, 2021](#org53c7514)
  - [linkage](#orgde72665)
    - [<http://sf.pm.org>](#org74cf9d0)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org78f65cd)
  - [secret plan](#org360256b)
    - [junctions](#orgb0b02fd)
    - [finished that special purpose find/grep script:](#orgd1d3b1c)
    - ["commutative" pattern matching:](#org90340ba)
    - [perl5-porters list: got involved with arguing about line trimming](#org97a33df)
  - [other topic ideas](#org91c78d3)
    - [raku classes as data containers (joe brenner)](#orgf69cc93)
    - [argument passing signatures (joe brenner)](#org7bcd526)
    - [find/grep variants in raku revisited (joe brenner)](#orga89c562)
    - [bruce gray rosettacode](#orge667918)
    - [super flat](#orgbd137fb)
    - [type system: what is accepted by what](#org0bc2ffe)
    - [go through my perl5 templates: how much is core raku now?](#org55d4e37)
    - [raku die handlers vs perl5](#org1538e42)
    - [raku idioms](#org1cd1828)
  - [appendix: the usual links](#org56c2b96)
    - [code examples](#org989e713)
    - [meeting notes (material from this file)](#orge044dfb)
    - [SF Perl page, has links to mailing list](#org012e80f)
    - [perl6-users mailing list archive](#org6f6b2fa)
  - [announcments](#org8219875)
    - [next meeting: June 16th](#org8f05729)


<a id="org53c7514"></a>

# meeting notes May 16, 2021


<a id="orgde72665"></a>

## linkage


<a id="org74cf9d0"></a>

### <http://sf.pm.org>


<a id="org78f65cd"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org360256b"></a>

## secret plan


<a id="orgb0b02fd"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgd1d3b1c"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org90340ba"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org97a33df"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="org91c78d3"></a>

## other topic ideas


<a id="orgf69cc93"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org7bcd526"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orga89c562"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="orge667918"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgbd137fb"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org0bc2ffe"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org55d4e37"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org1538e42"></a>

### raku die handlers vs perl5


<a id="org1cd1828"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org56c2b96"></a>

## appendix: the usual links


<a id="org989e713"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orge044dfb"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org012e80f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6f6b2fa"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org8219875"></a>

## announcments


<a id="org8f05729"></a>

### next meeting: June 16th
