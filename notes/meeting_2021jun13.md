- [meeting notes June 20, 2021](#org3f39cc2)
  - [and now, for something completely different](#org8d59172)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orgc475694)
  - [minutes of last meeting](#org2154d06)
    - [junctions](#orgafd0f22)
    - [follow-up: trying to pass a junction as an argument](#org520eb0b)
    - ["commutative" pattern matching:](#orgcc6d501)
    - [perl5-porters list: trimming whitespace](#orgdb626a8)
  - [other topic ideas](#org2939f7b)
    - [raku classes as data containers (joe brenner)](#org66cab86)
    - [argument passing signatures (joe brenner)](#orgf0939f8)
    - [bruce gray rosettacode](#org61fabdf)
    - [super flat](#orgec0ffe5)
    - [type system: what is accepted by what](#org16e911a)
    - [go through my perl5 templates: how much is core raku now?](#org6090c45)
    - [raku die handlers vs perl5](#orgf04813c)
    - [raku idioms](#orgaf3b861)
  - [appendix: the usual links](#org694060f)
    - [code examples](#orgc37fca1)
    - [meeting notes (material from this file)](#org022e0a4)
    - [SF Perl page, has links to mailing list](#orgbbe8305)
    - [perl6-users mailing list archive](#org3fcd1a0)
  - [announcments](#org4e1dc74)
    - [next meeting: July 11th](#orgfaa4418)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org1dc982f)


<a id="org3f39cc2"></a>

# meeting notes June 20, 2021


<a id="org8d59172"></a>

## and now, for something completely different


<a id="orgc475694"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org2154d06"></a>

## minutes of last meeting

1.  sorting and comparators documentation


<a id="orgafd0f22"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org520eb0b"></a>

### follow-up: trying to pass a junction as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  TODO (( link from mailing list ))

3.  TODO opened/found issue: raku's perl5 regex compatibility (:P5) can't handle (?<sup>i</sup>:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgcc6d501"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgdb626a8"></a>

### perl5-porters list: trimming whitespace


<a id="org2939f7b"></a>

## other topic ideas


<a id="org66cab86"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf0939f8"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org61fabdf"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgec0ffe5"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org16e911a"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org6090c45"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgf04813c"></a>

### raku die handlers vs perl5


<a id="orgaf3b861"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org694060f"></a>

## appendix: the usual links


<a id="orgc37fca1"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org022e0a4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orgbbe8305"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org3fcd1a0"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4e1dc74"></a>

## announcments


<a id="orgfaa4418"></a>

### next meeting: July 11th


<a id="org1dc982f"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
