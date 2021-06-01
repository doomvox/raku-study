- [meeting notes June 20, 2021](#org13f9795)
  - [and now, for something completely different](#org71bd91b)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org819f1bd)
  - [minutes of last meeting](#org962492b)
    - [junctions](#orgd7bf1cc)
    - [follow-up: trying to pass a junction as an argument](#orgdc4431a)
    - ["commutative" pattern matching:](#org27f0220)
    - [perl5-porters list: trimming whitespace](#org2a96a27)
  - [other topic ideas](#org2338518)
    - [raku classes as data containers (joe brenner)](#org8628d9f)
    - [argument passing signatures (joe brenner)](#org3f3b752)
    - [bruce gray rosettacode](#org523eb02)
    - [super flat](#org0fecf11)
    - [type system: what is accepted by what](#org8c5b0f8)
    - [go through my perl5 templates: how much is core raku now?](#orgc4949a2)
    - [raku die handlers vs perl5](#org1e9b790)
    - [raku idioms](#org76e646b)
  - [appendix: the usual links](#orgf62710f)
    - [code examples](#org1ef381f)
    - [meeting notes (material from this file)](#orgd9bede4)
    - [SF Perl page, has links to mailing list](#org8269a37)
    - [perl6-users mailing list archive](#org24c3a3c)
  - [announcments](#org45d19c3)
    - [next meeting: July 11th](#org15ce31a)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org81978d5)


<a id="org13f9795"></a>

# meeting notes June 20, 2021


<a id="org71bd91b"></a>

## and now, for something completely different


<a id="org819f1bd"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org962492b"></a>

## minutes of last meeting

1.  sorting and comparators documentation


<a id="orgd7bf1cc"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgdc4431a"></a>

### follow-up: trying to pass a junction as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  (( link from mailing list ))

3.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

4.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org27f0220"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org2a96a27"></a>

### perl5-porters list: trimming whitespace


<a id="org2338518"></a>

## other topic ideas


<a id="org8628d9f"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org3f3b752"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org523eb02"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org0fecf11"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org8c5b0f8"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgc4949a2"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org1e9b790"></a>

### raku die handlers vs perl5


<a id="org76e646b"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgf62710f"></a>

## appendix: the usual links


<a id="org1ef381f"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgd9bede4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org8269a37"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org24c3a3c"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org45d19c3"></a>

## announcments


<a id="org15ce31a"></a>

### next meeting: July 11th


<a id="org81978d5"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
