- [meeting notes June 20, 2021](#orgd169e25)
  - [and now, for something completely different](#org1b72b4d)
  - [minutes of last meeting](#org8345467)
    - [bill: weirdness on if/else vs ternary](#org909bbcb)
    - [bruce gray](#org6227d11)
    - [junctions](#org7cb3818)
    - [finished that special purpose find/grep script:](#orgb4bdafb)
    - ["commutative" pattern matching:](#orgb932225)
    - [perl5-porters list: trimming whitespace](#org3b505f1)
  - [other topic ideas](#org875514d)
    - [raku classes as data containers (joe brenner)](#orgc3338ff)
    - [argument passing signatures (joe brenner)](#org91699c9)
    - [bruce gray rosettacode](#orgbb8f00f)
    - [super flat](#orgfc66f75)
    - [type system: what is accepted by what](#org1fe5e71)
    - [go through my perl5 templates: how much is core raku now?](#orge67f7ae)
    - [raku die handlers vs perl5](#orgdeeae9f)
    - [raku idioms](#org9840b61)
  - [appendix: the usual links](#orgc44c520)
    - [code examples](#org467cce4)
    - [meeting notes (material from this file)](#org7dade33)
    - [SF Perl page, has links to mailing list](#org44db6a1)
    - [perl6-users mailing list archive](#org9935ec0)
  - [announcments](#orgc090624)
    - [next meeting: July 11th](#orgc79e2c5)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgffeedfb)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org95e846f)


<a id="orgd169e25"></a>

# meeting notes June 20, 2021


<a id="org1b72b4d"></a>

## and now, for something completely different


<a id="org8345467"></a>

## minutes of last meeting


<a id="org909bbcb"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org6227d11"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org7cb3818"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb4bdafb"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgb932225"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org3b505f1"></a>

### perl5-porters list: trimming whitespace


<a id="org875514d"></a>

## other topic ideas


<a id="orgc3338ff"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org91699c9"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgbb8f00f"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgfc66f75"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org1fe5e71"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orge67f7ae"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgdeeae9f"></a>

### raku die handlers vs perl5


<a id="org9840b61"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc44c520"></a>

## appendix: the usual links


<a id="org467cce4"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org7dade33"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org44db6a1"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9935ec0"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc090624"></a>

## announcments


<a id="orgc79e2c5"></a>

### next meeting: July 11th


<a id="orgffeedfb"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org95e846f"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
