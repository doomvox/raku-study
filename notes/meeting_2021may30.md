- [meeting notes May 16, 2021](#org1f1cbd5)
  - [linkage](#org9ac88d4)
    - [<http://sf.pm.org>](#org1b71f2f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orgd2d328f)
  - [secret plan](#orgd42c82e)
    - [junctions](#org0227c78)
    - [finished that special purpose find/grep script:](#org782a531)
    - ["commutative" pattern matching:](#orgbabad84)
    - [perl5-porters list: got involved with arguing about line trimming](#org0470ef1)
  - [other topic ideas](#orgd1c91b7)
    - [raku classes as data containers (joe brenner)](#orgfe5b130)
    - [argument passing signatures (joe brenner)](#org59e6479)
    - [find/grep variants in raku revisited (joe brenner)](#orgd2ac994)
    - [bruce gray rosettacode](#org749354c)
    - [super flat](#org1f0decf)
    - [type system: what is accepted by what](#orgd11166a)
    - [go through my perl5 templates: how much is core raku now?](#orgcbc8a5f)
    - [raku die handlers vs perl5](#orgb35fcff)
    - [raku idioms](#orgc04a7f3)
  - [appendix: the usual links](#orgb9dca00)
    - [code examples](#orga8172de)
    - [meeting notes (material from this file)](#org45d98e4)
    - [SF Perl page, has links to mailing list](#orgfd25995)
    - [perl6-users mailing list archive](#org9e0b367)
  - [announcments](#orgf852d27)
    - [next meeting: June 16th](#org5599f54)


<a id="org1f1cbd5"></a>

# meeting notes May 16, 2021


<a id="org9ac88d4"></a>

## linkage


<a id="org1b71f2f"></a>

### <http://sf.pm.org>


<a id="orgd2d328f"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgd42c82e"></a>

## secret plan


<a id="org0227c78"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org782a531"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  stumbled across odd behavior when passing a junction to exclude

    1.  an issue I just stumbled over: can you pass a junction as an argument:
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgbabad84"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org0470ef1"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="orgd1c91b7"></a>

## other topic ideas


<a id="orgfe5b130"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org59e6479"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgd2ac994"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org749354c"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org1f0decf"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgd11166a"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgcbc8a5f"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgb35fcff"></a>

### raku die handlers vs perl5


<a id="orgc04a7f3"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgb9dca00"></a>

## appendix: the usual links


<a id="orga8172de"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org45d98e4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgfd25995"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9e0b367"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf852d27"></a>

## announcments


<a id="org5599f54"></a>

### next meeting: June 16th
