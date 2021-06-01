- [meeting notes June 20, 2021](#org55ed48c)
  - [and now, for something completely different](#org5090a52)
  - [minutes of last meeting](#org9a4bf16)
    - [bill: weirdness on if/else vs ternary](#org90f45c6)
    - [bruce gray](#orgd5186f4)
    - [junctions](#org13bc0b6)
    - [finished that special purpose find/grep script:](#orgb8a8ef7)
    - ["commutative" pattern matching:](#orgf157930)
    - [perl5-porters list: trimming whitespace](#org6bb69bb)
  - [other topic ideas](#org96dd513)
    - [raku classes as data containers (joe brenner)](#org9cbf1b0)
    - [argument passing signatures (joe brenner)](#orga54635f)
    - [bruce gray rosettacode](#orgc47e8d1)
    - [super flat](#org1c62a67)
    - [type system: what is accepted by what](#orgebe6309)
    - [go through my perl5 templates: how much is core raku now?](#orgcb605e2)
    - [raku die handlers vs perl5](#orgacbfa45)
    - [raku idioms](#orgf017766)
  - [appendix: the usual links](#org903a5af)
    - [code examples](#orga1492c4)
    - [meeting notes (material from this file)](#orgcd89c0c)
    - [SF Perl page, has links to mailing list](#orgc70c2c2)
    - [perl6-users mailing list archive](#org5006b2c)
  - [announcments](#org0ae768d)
    - [next meeting: June 13th](#orgfb5fdf3)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org9f34223)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org2eeb317)


<a id="org55ed48c"></a>

# meeting notes June 20, 2021


<a id="org5090a52"></a>

## and now, for something completely different


<a id="org9a4bf16"></a>

## minutes of last meeting


<a id="org90f45c6"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="orgd5186f4"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org13bc0b6"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb8a8ef7"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgf157930"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org6bb69bb"></a>

### perl5-porters list: trimming whitespace


<a id="org96dd513"></a>

## other topic ideas


<a id="org9cbf1b0"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga54635f"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgc47e8d1"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org1c62a67"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgebe6309"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgcb605e2"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgacbfa45"></a>

### raku die handlers vs perl5


<a id="orgf017766"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org903a5af"></a>

## appendix: the usual links


<a id="orga1492c4"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgcd89c0c"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orgc70c2c2"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org5006b2c"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org0ae768d"></a>

## announcments


<a id="orgfb5fdf3"></a>

### next meeting: June 13th


<a id="org9f34223"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org2eeb317"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
