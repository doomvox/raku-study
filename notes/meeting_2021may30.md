- [meeting notes May 16, 2021](#org4a8dc8b)
  - [linkage](#orga42ce32)
    - [<http://sf.pm.org>](#orgb2676ff)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org1ab8d2a)
  - [secret plan](#org60d708f)
    - [junctions](#orgfcc91ea)
    - [finished that special purpose find/grep script:](#orga4d9af5)
    - [raku's perl5 regex compatibility (:P5) is limited](#org93b7c69)
    - ["commutative" pattern matching:](#org7cd31ae)
  - [topic ideas](#org3d540b6)
    - [raku classes as data containers (joe brenner)](#orgd8b4a6c)
    - [argument passing signatures (joe brenner)](#orgd4f24c7)
    - [find/grep variants in raku revisited (joe brenner)](#orga2751e6)
    - [bruce gray rosettacode](#org6521b7c)
    - [super flat](#org0b02104)
    - [type system: what is accepted by what](#orgb3dd535)
    - [go through my perl5 templates: how much is core raku now?](#orge484dd6)
    - [raku die handlers vs perl5](#orgfe68012)
    - [raku idioms](#orgace79c0)
  - [appendix: the usual links](#orgb5fcbdb)
    - [code examples](#orgc19ca94)
    - [meeting notes (material from this file)](#org2992b62)
    - [SF Perl page, has links to mailing list](#org0d83038)
    - [perl6-users mailing list archive](#org6cfb05f)
  - [announcments](#org1a84657)
    - [next meeting: June 16th](#org4f0cf3e)


<a id="org4a8dc8b"></a>

# meeting notes May 16, 2021


<a id="orga42ce32"></a>

## linkage


<a id="orgb2676ff"></a>

### <http://sf.pm.org>


<a id="org1ab8d2a"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org60d708f"></a>

## secret plan


<a id="orgfcc91ea"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orga4d9af5"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>


<a id="org93b7c69"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org7cd31ae"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org3d540b6"></a>

## topic ideas


<a id="orgd8b4a6c"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd4f24c7"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orga2751e6"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org6521b7c"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org0b02104"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgb3dd535"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orge484dd6"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgfe68012"></a>

### raku die handlers vs perl5


<a id="orgace79c0"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgb5fcbdb"></a>

## appendix: the usual links


<a id="orgc19ca94"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org2992b62"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org0d83038"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6cfb05f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org1a84657"></a>

## announcments


<a id="org4f0cf3e"></a>

### next meeting: June 16th
