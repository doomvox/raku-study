- [meeting notes May 16, 2021](#orgea0e981)
  - [linkage](#org4e351ac)
    - [<http://sf.pm.org>](#org00a061c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org5505d0c)
  - [secret plan](#orgecb69ff)
    - [junctions](#org8bebf88)
    - [finished that special purpose find/grep script:](#org385593a)
    - ["commutative" pattern matching:](#org56afcf1)
    - [perl5-porters list: got involved with arguing about line trimming](#org4b513ee)
  - [other topic ideas](#orgce78e4f)
    - [raku classes as data containers (joe brenner)](#org88b3b0c)
    - [argument passing signatures (joe brenner)](#org8cd67d3)
    - [find/grep variants in raku revisited (joe brenner)](#orgfe9d1cd)
    - [bruce gray rosettacode](#orgd8e3f7d)
    - [super flat](#org1217379)
    - [type system: what is accepted by what](#org0a41a31)
    - [go through my perl5 templates: how much is core raku now?](#org9fe2cb9)
    - [raku die handlers vs perl5](#org554e002)
    - [raku idioms](#org01ffc02)
  - [appendix: the usual links](#org15f4f01)
    - [code examples](#org387aa7a)
    - [meeting notes (material from this file)](#orgc6a97e9)
    - [SF Perl page, has links to mailing list](#org21a21ae)
    - [perl6-users mailing list archive](#org629ea2f)
  - [announcments](#org5b91bbb)
    - [next meeting: June 16th](#orgc2e50a7)


<a id="orgea0e981"></a>

# meeting notes May 16, 2021


<a id="org4e351ac"></a>

## linkage


<a id="org00a061c"></a>

### <http://sf.pm.org>


<a id="org5505d0c"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgecb69ff"></a>

## secret plan


<a id="org8bebf88"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org385593a"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org56afcf1"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org4b513ee"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="orgce78e4f"></a>

## other topic ideas


<a id="org88b3b0c"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org8cd67d3"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgfe9d1cd"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgd8e3f7d"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org1217379"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org0a41a31"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org9fe2cb9"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org554e002"></a>

### raku die handlers vs perl5


<a id="org01ffc02"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org15f4f01"></a>

## appendix: the usual links


<a id="org387aa7a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgc6a97e9"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org21a21ae"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org629ea2f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5b91bbb"></a>

## announcments


<a id="orgc2e50a7"></a>

### next meeting: June 16th
