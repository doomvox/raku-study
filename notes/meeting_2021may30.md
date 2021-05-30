- [meeting notes May 16, 2021](#org3a05912)
  - [linkage](#org3495032)
    - [<http://sf.pm.org>](#orgc4d2b3e)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org9993e11)
  - [secret plan](#org5fde50f)
    - [junctions](#org42b184c)
    - [raku's perl5 regex compatibility (:P5) is limited](#org49fe07b)
    - ["commutative" pattern matching:](#org2c3b7f4)
  - [topic ideas](#org694a594)
    - [raku classes as data containers (joe brenner)](#orgd2c5574)
    - [argument passing signatures (joe brenner)](#orgf534597)
    - [find/grep variants in raku revisited (joe brenner)](#orgdde231d)
    - [bruce gray rosettacode](#orge8f73e9)
    - [super flat](#org7f68a7c)
    - [type system: what is accepted by what](#org61716ef)
    - [go through my perl5 templates: how much is core raku now?](#org422df2b)
    - [raku die handlers vs perl5](#org2fd3813)
    - [raku idioms](#orgc8bd2b2)
  - [appendix: the usual links](#org9bb4461)
    - [code examples](#orgb342702)
    - [meeting notes (material from this file)](#orgb480a86)
    - [SF Perl page, has links to mailing list](#orge128af6)
    - [perl6-users mailing list archive](#org6ff967a)
  - [announcments](#org932063b)
    - [next meeting: June 16th](#orgefa2275)


<a id="org3a05912"></a>

# meeting notes May 16, 2021


<a id="org3495032"></a>

## linkage


<a id="orgc4d2b3e"></a>

### <http://sf.pm.org>


<a id="org9993e11"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org5fde50f"></a>

## secret plan


<a id="org42b184c"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org49fe07b"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org2c3b7f4"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org694a594"></a>

## topic ideas


<a id="orgd2c5574"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf534597"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgdde231d"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orge8f73e9"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org7f68a7c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org61716ef"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org422df2b"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org2fd3813"></a>

### raku die handlers vs perl5


<a id="orgc8bd2b2"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org9bb4461"></a>

## appendix: the usual links


<a id="orgb342702"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgb480a86"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orge128af6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6ff967a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org932063b"></a>

## announcments


<a id="orgefa2275"></a>

### next meeting: June 16th
