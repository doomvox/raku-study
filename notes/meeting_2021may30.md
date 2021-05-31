- [meeting notes May 30, 2021](#orge3c24a9)
  - [secret plan](#org3d64bd7)
    - [bill: weirdness on if/else vs ternary](#org399f340)
    - [bruce gray](#orgd35b51a)
    - [junctions](#org5a8ff6b)
    - [finished that special purpose find/grep script:](#org0f8686a)
    - ["commutative" pattern matching:](#orgdf6e00b)
    - [perl5-porters list: trimming whitespace](#orgfa0f6f9)
  - [other topic ideas](#org245f9cc)
    - [raku classes as data containers (joe brenner)](#org5123509)
    - [argument passing signatures (joe brenner)](#org9c7d4dc)
    - [bruce gray rosettacode](#org45cbc06)
    - [super flat](#orgcd768a4)
    - [type system: what is accepted by what](#orge62dd04)
    - [go through my perl5 templates: how much is core raku now?](#orgeb5863d)
    - [raku die handlers vs perl5](#orgef220c5)
    - [raku idioms](#orgcd77424)
  - [appendix: the usual links](#org71020d3)
    - [code examples](#orge3134bd)
    - [meeting notes (material from this file)](#org8b0321a)
    - [SF Perl page, has links to mailing list](#org7d338c0)
    - [perl6-users mailing list archive](#orgfaabc8a)
  - [announcments](#org45c7a1c)
    - [next meeting: June 16th](#org4032e91)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgd6a1908)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org8d14f6d)


<a id="orge3c24a9"></a>

# meeting notes May 30, 2021


<a id="org3d64bd7"></a>

## secret plan


<a id="org399f340"></a>

### bill: weirdness on if/else vs ternary


<a id="orgd35b51a"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="org5a8ff6b"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org0f8686a"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgdf6e00b"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgfa0f6f9"></a>

### perl5-porters list: trimming whitespace


<a id="org245f9cc"></a>

## other topic ideas


<a id="org5123509"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org9c7d4dc"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org45cbc06"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgcd768a4"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orge62dd04"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgeb5863d"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgef220c5"></a>

### raku die handlers vs perl5


<a id="orgcd77424"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org71020d3"></a>

## appendix: the usual links


<a id="orge3134bd"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org8b0321a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org7d338c0"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgfaabc8a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org45c7a1c"></a>

## announcments


<a id="org4032e91"></a>

### next meeting: June 16th


<a id="orgd6a1908"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org8d14f6d"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
