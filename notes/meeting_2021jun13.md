- [meeting notes June 20, 2021](#org1395b8e)
  - [and now, for something completely different](#org4d5a7cb)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org517a0ab)
  - [minutes of last meeting](#org3f09af2)
    - [junctions](#org178a603)
    - [follow-up: trying to pass a junction as an argument](#org1617501)
    - ["commutative" pattern matching:](#org5c1b573)
    - [perl5-porters list: trimming whitespace](#org799f903)
  - [other topic ideas](#orgceff8f0)
    - [raku classes as data containers (joe brenner)](#org98683bf)
    - [argument passing signatures (joe brenner)](#orgda44e7e)
    - [bruce gray rosettacode](#org48b4d5f)
    - [super flat](#org2ae510d)
    - [type system: what is accepted by what](#orgd0ca9aa)
    - [go through my perl5 templates: how much is core raku now?](#orgbabc7e0)
    - [raku die handlers vs perl5](#orgf809822)
    - [raku idioms](#org9abc21a)
  - [appendix: the usual links](#org8c95e0a)
    - [code examples](#orgc8ff26a)
    - [meeting notes (material from this file)](#orgc609706)
    - [SF Perl page, has links to mailing list](#orge91dd51)
    - [perl6-users mailing list archive](#org94447df)
  - [announcments](#orgc216379)
    - [next meeting: July 11th](#orgd407703)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org5b9a202)


<a id="org1395b8e"></a>

# meeting notes June 20, 2021


<a id="org4d5a7cb"></a>

## and now, for something completely different


<a id="org517a0ab"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org3f09af2"></a>

## minutes of last meeting

1.  sorting and comparators documentation


<a id="org178a603"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org1617501"></a>

### follow-up: trying to pass a junction as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  TODO (( link from mailing list ))

3.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

4.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org5c1b573"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org799f903"></a>

### perl5-porters list: trimming whitespace


<a id="orgceff8f0"></a>

## other topic ideas


<a id="org98683bf"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgda44e7e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org48b4d5f"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org2ae510d"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgd0ca9aa"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgbabc7e0"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgf809822"></a>

### raku die handlers vs perl5


<a id="org9abc21a"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org8c95e0a"></a>

## appendix: the usual links


<a id="orgc8ff26a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgc609706"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orge91dd51"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org94447df"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc216379"></a>

## announcments


<a id="orgd407703"></a>

### next meeting: July 11th


<a id="org5b9a202"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
