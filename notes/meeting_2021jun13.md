- [meeting notes June 20, 2021](#org112e30f)
  - [and now, for something completely different](#org24acef1)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org0e2c2a3)
  - [minutes of last meeting](#org3550201)
    - [bill: weirdness on if/else vs ternary](#orgcd3d1a7)
    - [bruce gray](#orgb9b9c88)
    - [junctions](#org2f1447b)
    - [finished that special purpose find/grep script:](#orgb3566ea)
    - ["commutative" pattern matching:](#org4b19e3c)
    - [perl5-porters list: trimming whitespace](#org156b6a7)
  - [other topic ideas](#org9b5efeb)
    - [raku classes as data containers (joe brenner)](#org70b3505)
    - [argument passing signatures (joe brenner)](#org1c1a61f)
    - [bruce gray rosettacode](#org379d4e2)
    - [super flat](#org53478fb)
    - [type system: what is accepted by what](#org654805b)
    - [go through my perl5 templates: how much is core raku now?](#org0b11f48)
    - [raku die handlers vs perl5](#org66889e0)
    - [raku idioms](#orgf77cada)
  - [appendix: the usual links](#org0b1612d)
    - [code examples](#orgb428e82)
    - [meeting notes (material from this file)](#org062d78a)
    - [SF Perl page, has links to mailing list](#orga6ff5d4)
    - [perl6-users mailing list archive](#org3902fa5)
  - [announcments](#org1fcf9de)
    - [next meeting: July 11th](#orgf30eccc)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org3924c58)


<a id="org112e30f"></a>

# meeting notes June 20, 2021


<a id="org24acef1"></a>

## and now, for something completely different


<a id="org0e2c2a3"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org3550201"></a>

## minutes of last meeting


<a id="orgcd3d1a7"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="orgb9b9c88"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org2f1447b"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb3566ea"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org4b19e3c"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org156b6a7"></a>

### perl5-porters list: trimming whitespace


<a id="org9b5efeb"></a>

## other topic ideas


<a id="org70b3505"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org1c1a61f"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org379d4e2"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org53478fb"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org654805b"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org0b11f48"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org66889e0"></a>

### raku die handlers vs perl5


<a id="orgf77cada"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org0b1612d"></a>

## appendix: the usual links


<a id="orgb428e82"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org062d78a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orga6ff5d4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org3902fa5"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org1fcf9de"></a>

## announcments


<a id="orgf30eccc"></a>

### next meeting: July 11th


<a id="org3924c58"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
