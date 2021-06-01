- [meeting notes May 30, 2021](#orgd174c5c)
  - [secret plan](#orge388b89)
    - [bill: weirdness on if/else vs ternary](#org45da7bc)
    - [bruce gray](#orgd2fbc5f)
    - [junctions](#org1280a45)
    - [finished that special purpose find/grep script:](#orgb38c7b9)
    - ["commutative" pattern matching:](#orga138446)
    - [perl5-porters list: trimming whitespace](#org565f951)
  - [other topic ideas](#org522b98b)
    - [raku classes as data containers (joe brenner)](#org221edc6)
    - [argument passing signatures (joe brenner)](#org18eedb8)
    - [bruce gray rosettacode](#org4cfd0d9)
    - [super flat](#orgf26f2e4)
    - [type system: what is accepted by what](#org719c0ad)
    - [go through my perl5 templates: how much is core raku now?](#org82a61ee)
    - [raku die handlers vs perl5](#org5222f7c)
    - [raku idioms](#org88dcb8a)
  - [appendix: the usual links](#org5fd7ccd)
    - [code examples](#org06c16c2)
    - [meeting notes (material from this file)](#org0827c2a)
    - [SF Perl page, has links to mailing list](#orge9939fe)
    - [perl6-users mailing list archive](#orga198b04)
  - [announcments](#org5b5aaca)
    - [next meeting: June 20th, Sunday, right after the conference in the clouds (um)](#orgf91ee27)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org525c921)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org879a15a)


<a id="orgd174c5c"></a>

# meeting notes May 30, 2021


<a id="orge388b89"></a>

## secret plan


<a id="org45da7bc"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="orgd2fbc5f"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation

    1.  wants to write a good, centralized page about what you really need to know about raku sorts
    
        1.  the comparator is key&#x2013; what goes before what
        
        2.  the guts of the sort are written for you&#x2013; don't need to re-invent CS 101 wheels
        
        3.  existing docs are scattered with some peculiar examples


<a id="org1280a45"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb38c7b9"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orga138446"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org565f951"></a>

### perl5-porters list: trimming whitespace


<a id="org522b98b"></a>

## other topic ideas


<a id="org221edc6"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org18eedb8"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org4cfd0d9"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgf26f2e4"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org719c0ad"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org82a61ee"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org5222f7c"></a>

### raku die handlers vs perl5


<a id="org88dcb8a"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org5fd7ccd"></a>

## appendix: the usual links


<a id="org06c16c2"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org0827c2a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orge9939fe"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orga198b04"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5b5aaca"></a>

## announcments


<a id="orgf91ee27"></a>

### next meeting: June 20th, Sunday, right after the conference in the clouds (um)


<a id="org525c921"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org879a15a"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
