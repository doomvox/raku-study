- [meeting notes May 16, 2021](#orgcfe8b8d)
  - [linkage](#orgfb506b6)
    - [<http://sf.pm.org>](#org8db06e2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org81df869)
  - [secret plan](#org6c6a2d0)
    - [junctions](#orgb45becd)
    - [finished that special purpose find/grep script:](#org22caab0)
    - ["commutative" pattern matching:](#orgea74dc5)
    - [perl5-porters list: got involved with arguing about line trimming](#orgf5211d7)
  - [other topic ideas](#orgcc13691)
    - [raku classes as data containers (joe brenner)](#orgfe5ff91)
    - [argument passing signatures (joe brenner)](#orgd595f1d)
    - [find/grep variants in raku revisited (joe brenner)](#orgffc914e)
    - [bruce gray rosettacode](#org95d21d4)
    - [super flat](#orga9c3421)
    - [type system: what is accepted by what](#org7899ef1)
    - [go through my perl5 templates: how much is core raku now?](#org072ef8b)
    - [raku die handlers vs perl5](#orge0bed97)
    - [raku idioms](#org73dee6d)
  - [appendix: the usual links](#org97afeb2)
    - [code examples](#org6d41a3d)
    - [meeting notes (material from this file)](#org41b263a)
    - [SF Perl page, has links to mailing list](#org38ad140)
    - [perl6-users mailing list archive](#org1c0ac34)
  - [announcments](#orgda0217c)
    - [next meeting: June 16th](#org7ffcb93)


<a id="orgcfe8b8d"></a>

# meeting notes May 16, 2021


<a id="orgfb506b6"></a>

## linkage


<a id="org8db06e2"></a>

### <http://sf.pm.org>


<a id="org81df869"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org6c6a2d0"></a>

## secret plan


<a id="orgb45becd"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org22caab0"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgea74dc5"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgf5211d7"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="orgcc13691"></a>

## other topic ideas


<a id="orgfe5ff91"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd595f1d"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgffc914e"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org95d21d4"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orga9c3421"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org7899ef1"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org072ef8b"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orge0bed97"></a>

### raku die handlers vs perl5


<a id="org73dee6d"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org97afeb2"></a>

## appendix: the usual links


<a id="org6d41a3d"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org41b263a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org38ad140"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org1c0ac34"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgda0217c"></a>

## announcments


<a id="org7ffcb93"></a>

### next meeting: June 16th
