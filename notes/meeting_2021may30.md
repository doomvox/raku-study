- [meeting notes May 30, 2021](#orgc2b3f9a)
  - [secret plan](#orge9f2650)
    - [bill: weirdness on if/else vs ternary](#orgbbba846)
    - [bruce gray](#org3adcbff)
    - [junctions](#orgcfbc52c)
    - [finished that special purpose find/grep script:](#org55d5ff8)
    - ["commutative" pattern matching:](#org6b26e0d)
    - [perl5-porters list: trimming whitespace](#org6216e41)
  - [other topic ideas](#org7b51b61)
    - [raku classes as data containers (joe brenner)](#orgd235e4b)
    - [argument passing signatures (joe brenner)](#org57c8478)
    - [bruce gray rosettacode](#org8449e2b)
    - [super flat](#orgea6edb6)
    - [type system: what is accepted by what](#org4d7a82a)
    - [go through my perl5 templates: how much is core raku now?](#orgcb03073)
    - [raku die handlers vs perl5](#org29ec053)
    - [raku idioms](#orgc27dbff)
  - [appendix: the usual links](#org76ba846)
    - [code examples](#orgd745618)
    - [meeting notes (material from this file)](#orgd1cc28b)
    - [SF Perl page, has links to mailing list](#orgcb9193e)
    - [perl6-users mailing list archive](#org3a6e40f)
  - [announcments](#org34fed92)
    - [next meeting: June 16th](#orgb0626da)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org9b519d3)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org21f2475)


<a id="orgc2b3f9a"></a>

# meeting notes May 30, 2021


<a id="orge9f2650"></a>

## secret plan


<a id="orgbbba846"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org3adcbff"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="orgcfbc52c"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org55d5ff8"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org6b26e0d"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org6216e41"></a>

### perl5-porters list: trimming whitespace


<a id="org7b51b61"></a>

## other topic ideas


<a id="orgd235e4b"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org57c8478"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org8449e2b"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgea6edb6"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org4d7a82a"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgcb03073"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org29ec053"></a>

### raku die handlers vs perl5


<a id="orgc27dbff"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org76ba846"></a>

## appendix: the usual links


<a id="orgd745618"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgd1cc28b"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgcb9193e"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org3a6e40f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org34fed92"></a>

## announcments


<a id="orgb0626da"></a>

### next meeting: June 16th


<a id="org9b519d3"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org21f2475"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
