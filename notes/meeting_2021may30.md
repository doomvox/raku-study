- [meeting notes May 16, 2021](#orga09759c)
  - [linkage](#orga2d1bb7)
    - [<http://sf.pm.org>](#orge5ae488)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org73465c0)
  - [secret plan](#orgb87e6d0)
    - [junctions](#orgbd67967)
    - [finished that special purpose find/grep script:](#orgb3e71b2)
    - ["commutative" pattern matching:](#org4027b38)
    - [perl5-porters list: trimming whitespace](#org2351d11)
  - [other topic ideas](#org06f13ce)
    - [raku classes as data containers (joe brenner)](#orgb7c2fdc)
    - [argument passing signatures (joe brenner)](#org3dec755)
    - [find/grep variants in raku revisited (joe brenner)](#orge1c4e54)
    - [bruce gray rosettacode](#orgb9d2a3b)
    - [super flat](#org6da8f0b)
    - [type system: what is accepted by what](#org7406cf6)
    - [go through my perl5 templates: how much is core raku now?](#orgc49d993)
    - [raku die handlers vs perl5](#org7e41389)
    - [raku idioms](#orge60633c)
  - [appendix: the usual links](#orge1a0384)
    - [code examples](#orge20d7e8)
    - [meeting notes (material from this file)](#org389e0f5)
    - [SF Perl page, has links to mailing list](#orgc6d6857)
    - [perl6-users mailing list archive](#org415faf8)
  - [announcments](#org90ee342)
    - [next meeting: June 16th](#org9a75934)


<a id="orga09759c"></a>

# meeting notes May 16, 2021


<a id="orga2d1bb7"></a>

## linkage


<a id="orge5ae488"></a>

### <http://sf.pm.org>


<a id="org73465c0"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgb87e6d0"></a>

## secret plan


<a id="orgbd67967"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb3e71b2"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org4027b38"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org2351d11"></a>

### perl5-porters list: trimming whitespace


<a id="org06f13ce"></a>

## other topic ideas


<a id="orgb7c2fdc"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org3dec755"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orge1c4e54"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="orgb9d2a3b"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6da8f0b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org7406cf6"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc49d993"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org7e41389"></a>

### raku die handlers vs perl5


<a id="orge60633c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orge1a0384"></a>

## appendix: the usual links


<a id="orge20d7e8"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org389e0f5"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgc6d6857"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org415faf8"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org90ee342"></a>

## announcments


<a id="org9a75934"></a>

### next meeting: June 16th
