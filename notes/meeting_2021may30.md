- [meeting notes May 30, 2021](#org519e28d)
  - [secret plan](#orgd82d049)
    - [bg](#org8de258c)
    - [junctions](#org223b3a5)
    - [finished that special purpose find/grep script:](#org9f841cb)
    - ["commutative" pattern matching:](#org09681f9)
    - [perl5-porters list: trimming whitespace](#org9af272a)
  - [other topic ideas](#orgc2ee040)
    - [raku classes as data containers (joe brenner)](#orgb1a0269)
    - [argument passing signatures (joe brenner)](#org6d1a464)
    - [bruce gray rosettacode](#orgd9d9b72)
    - [super flat](#orgc7bfe42)
    - [type system: what is accepted by what](#orgaa25997)
    - [go through my perl5 templates: how much is core raku now?](#orgc5701b4)
    - [raku die handlers vs perl5](#org5c49e44)
    - [raku idioms](#orga96ae71)
  - [appendix: the usual links](#org1afa91b)
    - [code examples](#org298903c)
    - [meeting notes (material from this file)](#org8007c71)
    - [SF Perl page, has links to mailing list](#org8bb40b0)
    - [perl6-users mailing list archive](#org6761736)
  - [announcments](#org5bdc64d)
    - [next meeting: June 16th](#org5393399)


<a id="org519e28d"></a>

# meeting notes May 30, 2021


<a id="orgd82d049"></a>

## secret plan


<a id="org8de258c"></a>

### bg

1.  rosetta code

2.  sorting and comparators


<a id="org223b3a5"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org9f841cb"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org09681f9"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org9af272a"></a>

### perl5-porters list: trimming whitespace


<a id="orgc2ee040"></a>

## other topic ideas


<a id="orgb1a0269"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org6d1a464"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgd9d9b72"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgc7bfe42"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgaa25997"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc5701b4"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org5c49e44"></a>

### raku die handlers vs perl5


<a id="orga96ae71"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org1afa91b"></a>

## appendix: the usual links


<a id="org298903c"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org8007c71"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org8bb40b0"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6761736"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5bdc64d"></a>

## announcments


<a id="org5393399"></a>

### next meeting: June 16th
