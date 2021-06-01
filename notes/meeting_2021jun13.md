- [meeting notes June 20, 2021](#org87ebfec)
  - [and now, for something completely different](#orgb1434ff)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org5d8c36d)
  - [minutes of last meeting](#orgaa6f00e)
    - [junctions](#orgb838da7)
    - [follow-up: trying to pass a junction as an argument](#orgdce5e5a)
    - ["commutative" pattern matching:](#org611359e)
    - [perl5-porters list: trimming whitespace](#orgaef4ce7)
  - [other topic ideas](#org3efbdcd)
    - [raku classes as data containers (joe brenner)](#org5ecb802)
    - [argument passing signatures (joe brenner)](#orga5b8cfc)
    - [bruce gray rosettacode](#orgccc9bf5)
    - [super flat](#orgbac3aee)
    - [type system: what is accepted by what](#orgbe07e43)
    - [go through my perl5 templates: how much is core raku now?](#org12293b0)
    - [raku die handlers vs perl5](#org9459ac6)
    - [raku idioms](#orgbcd251c)
  - [appendix: the usual links](#org5295c73)
    - [code examples](#org367e177)
    - [meeting notes (material from this file)](#org59a0972)
    - [SF Perl page, has links to mailing list](#org2f98576)
    - [perl6-users mailing list archive](#org9aed3a6)
  - [announcments](#org61ee0f2)
    - [next meeting: July 11th](#org8537564)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org4d9e29a)


<a id="org87ebfec"></a>

# meeting notes June 20, 2021


<a id="orgb1434ff"></a>

## and now, for something completely different


<a id="org5d8c36d"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgaa6f00e"></a>

## minutes of last meeting

1.  sorting and comparators documentation


<a id="orgb838da7"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgdce5e5a"></a>

### follow-up: trying to pass a junction as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  TODO (( link from mailing list ))

3.  TODO opened/found issue: raku's perl5 regex compatibility (:P5) can't handle (?<sup>i</sup>:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org611359e"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgaef4ce7"></a>

### perl5-porters list: trimming whitespace


<a id="org3efbdcd"></a>

## other topic ideas


<a id="org5ecb802"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga5b8cfc"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgccc9bf5"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgbac3aee"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgbe07e43"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org12293b0"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org9459ac6"></a>

### raku die handlers vs perl5


<a id="orgbcd251c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org5295c73"></a>

## appendix: the usual links


<a id="org367e177"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org59a0972"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org2f98576"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9aed3a6"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org61ee0f2"></a>

## announcments


<a id="org8537564"></a>

### next meeting: July 11th


<a id="org4d9e29a"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
