- [meeting notes June 20, 2021](#org1460e5e)
  - [and now, for something completely different](#org4f3858b)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orga4feb91)
  - [minutes of last meeting](#org81c14eb)
    - [junctions](#orgdc850b4)
    - [follow-up: trying to pass a junction as an argument](#orgdb5981b)
    - ["commutative" pattern matching:](#orgca6ecb5)
    - [perl5-porters list: trimming whitespace](#orgd73cb9f)
  - [other topic ideas](#orgab8efd4)
    - [raku classes as data containers (joe brenner)](#org7e4a9c9)
    - [argument passing signatures (joe brenner)](#orgeff2c45)
    - [bruce gray rosettacode](#orgeaf660b)
    - [super flat](#org30a92a6)
    - [type system: what is accepted by what](#orgdfd5294)
    - [go through my perl5 templates: how much is core raku now?](#orgdfb02fa)
    - [raku die handlers vs perl5](#orged83555)
    - [raku idioms](#org14070c8)
  - [appendix: the usual links](#orga8b7487)
    - [code examples](#org96756bd)
    - [meeting notes (material from this file)](#org798a774)
    - [SF Perl page, has links to mailing list](#orga1540c8)
    - [perl6-users mailing list archive](#org58fa367)
  - [announcments](#orged138af)
    - [next meeting: July 11th](#orge0bd7e1)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org0c2519d)


<a id="org1460e5e"></a>

# meeting notes June 20, 2021


<a id="org4f3858b"></a>

## and now, for something completely different


<a id="orga4feb91"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org81c14eb"></a>

## minutes of last meeting

1.  sorting and comparators documentation


<a id="orgdc850b4"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgdb5981b"></a>

### follow-up: trying to pass a junction as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  TODO (( link from mailing list ))

3.  TODO opened issue: raku's perl5 regex compatibility (:P5) can't handle (?<sup>i</sup>:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgca6ecb5"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgd73cb9f"></a>

### perl5-porters list: trimming whitespace


<a id="orgab8efd4"></a>

## other topic ideas


<a id="org7e4a9c9"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgeff2c45"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgeaf660b"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org30a92a6"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgdfd5294"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgdfb02fa"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orged83555"></a>

### raku die handlers vs perl5


<a id="org14070c8"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orga8b7487"></a>

## appendix: the usual links


<a id="org96756bd"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org798a774"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orga1540c8"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org58fa367"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orged138af"></a>

## announcments


<a id="orge0bd7e1"></a>

### next meeting: July 11th


<a id="org0c2519d"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
