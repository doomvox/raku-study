- [meeting notes May 16, 2021](#org36ff2d7)
  - [linkage](#orgdebc1fb)
    - [<http://sf.pm.org>](#orgfcb50e2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org62e3399)
  - [secret plan](#org2e0e949)
    - [junctions](#org603b475)
    - [finished that special purpose find/grep script:](#org2dcd65d)
    - ["commutative" pattern matching:](#org2cd8c25)
    - [perl5-porters list: got involved with arguing about line trimming](#orgf92932d)
  - [other topic ideas](#orgfdc2312)
    - [raku classes as data containers (joe brenner)](#org79f8cad)
    - [argument passing signatures (joe brenner)](#orga18044e)
    - [find/grep variants in raku revisited (joe brenner)](#org131456d)
    - [bruce gray rosettacode](#org98a09b6)
    - [super flat](#orge27f7af)
    - [type system: what is accepted by what](#org496cea2)
    - [go through my perl5 templates: how much is core raku now?](#org2ec78a6)
    - [raku die handlers vs perl5](#orgd065178)
    - [raku idioms](#org9aa782a)
  - [appendix: the usual links](#org3ee9b63)
    - [code examples](#org8cd5b98)
    - [meeting notes (material from this file)](#org6096707)
    - [SF Perl page, has links to mailing list](#org224d9db)
    - [perl6-users mailing list archive](#org69eb51e)
  - [announcments](#orgd5398dd)
    - [next meeting: June 16th](#org4ef06dc)


<a id="org36ff2d7"></a>

# meeting notes May 16, 2021


<a id="orgdebc1fb"></a>

## linkage


<a id="orgfcb50e2"></a>

### <http://sf.pm.org>


<a id="org62e3399"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org2e0e949"></a>

## secret plan


<a id="org603b475"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org2dcd65d"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org2cd8c25"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgf92932d"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="orgfdc2312"></a>

## other topic ideas


<a id="org79f8cad"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga18044e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org131456d"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org98a09b6"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge27f7af"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org496cea2"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org2ec78a6"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgd065178"></a>

### raku die handlers vs perl5


<a id="org9aa782a"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org3ee9b63"></a>

## appendix: the usual links


<a id="org8cd5b98"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org6096707"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org224d9db"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org69eb51e"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd5398dd"></a>

## announcments


<a id="org4ef06dc"></a>

### next meeting: June 16th
