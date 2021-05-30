- [meeting notes May 16, 2021](#org509188c)
  - [linkage](#orgd76f3aa)
    - [<http://sf.pm.org>](#org77904ca)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orgc4b9a81)
  - [secret plan](#orga5548ee)
    - [junctions](#org2e92f7b)
    - [finished that special purpose find/grep script:](#org563b34b)
    - [raku's perl5 regex compatibility (:P5) is limited](#orgfc732d9)
    - ["commutative" pattern matching:](#orgdb44152)
  - [topic ideas](#org89328a2)
    - [raku classes as data containers (joe brenner)](#org4a28f09)
    - [argument passing signatures (joe brenner)](#org8577c2f)
    - [find/grep variants in raku revisited (joe brenner)](#orga9edbf1)
    - [bruce gray rosettacode](#orga0aa1db)
    - [super flat](#org4dcb430)
    - [type system: what is accepted by what](#orgb2e3913)
    - [go through my perl5 templates: how much is core raku now?](#orgf5f0764)
    - [raku die handlers vs perl5](#org4a51ebd)
    - [raku idioms](#org8e9b551)
  - [appendix: the usual links](#orgf429497)
    - [code examples](#org840a591)
    - [meeting notes (material from this file)](#org4353400)
    - [SF Perl page, has links to mailing list](#org6cc531c)
    - [perl6-users mailing list archive](#org23314a0)
  - [announcments](#org9971564)
    - [next meeting: June 16th](#org26dd61b)


<a id="org509188c"></a>

# meeting notes May 16, 2021


<a id="orgd76f3aa"></a>

## linkage


<a id="org77904ca"></a>

### <http://sf.pm.org>


<a id="orgc4b9a81"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orga5548ee"></a>

## secret plan


<a id="org2e92f7b"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org563b34b"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="orgfc732d9"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgdb44152"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org89328a2"></a>

## topic ideas


<a id="org4a28f09"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org8577c2f"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orga9edbf1"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orga0aa1db"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org4dcb430"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgb2e3913"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf5f0764"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org4a51ebd"></a>

### raku die handlers vs perl5


<a id="org8e9b551"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgf429497"></a>

## appendix: the usual links


<a id="org840a591"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org4353400"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org6cc531c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org23314a0"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org9971564"></a>

## announcments


<a id="org26dd61b"></a>

### next meeting: June 16th
