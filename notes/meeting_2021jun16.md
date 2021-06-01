- [meeting notes June 13, 2021](#org5e3bbc1)
  - [and now, for something completely different](#orgdf14f24)
  - [minutes of last meeting](#orgcf33662)
    - [bill: weirdness on if/else vs ternary](#org9a54ed8)
    - [bruce gray](#org42e34a0)
    - [junctions](#org9e9655e)
    - [finished that special purpose find/grep script:](#org0a01716)
    - ["commutative" pattern matching:](#orgc03572d)
    - [perl5-porters list: trimming whitespace](#org2f03d76)
  - [other topic ideas](#orgfae848f)
    - [raku classes as data containers (joe brenner)](#org7593619)
    - [argument passing signatures (joe brenner)](#org5fe6df8)
    - [bruce gray rosettacode](#org2510031)
    - [super flat](#org49a0e48)
    - [type system: what is accepted by what](#org3edbf6e)
    - [go through my perl5 templates: how much is core raku now?](#org2d9a700)
    - [raku die handlers vs perl5](#orgf3628ad)
    - [raku idioms](#orge8531f5)
  - [appendix: the usual links](#orgcceab4f)
    - [code examples](#org8a8d70d)
    - [meeting notes (material from this file)](#orgfdec1e8)
    - [SF Perl page, has links to mailing list](#orgfc250cb)
    - [perl6-users mailing list archive](#org5ff8c20)
  - [announcments](#org4d063f9)
    - [next meeting: June 13th](#org0f1673e)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org5011ae2)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org0c066d0)


<a id="org5e3bbc1"></a>

# meeting notes June 13, 2021


<a id="orgdf14f24"></a>

## and now, for something completely different


<a id="orgcf33662"></a>

## minutes of last meeting


<a id="org9a54ed8"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org42e34a0"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org9e9655e"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org0a01716"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgc03572d"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org2f03d76"></a>

### perl5-porters list: trimming whitespace


<a id="orgfae848f"></a>

## other topic ideas


<a id="org7593619"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org5fe6df8"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org2510031"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org49a0e48"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org3edbf6e"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org2d9a700"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgf3628ad"></a>

### raku die handlers vs perl5


<a id="orge8531f5"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgcceab4f"></a>

## appendix: the usual links


<a id="org8a8d70d"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may16>


<a id="orgfdec1e8"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may16.md>


<a id="orgfc250cb"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org5ff8c20"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4d063f9"></a>

## announcments


<a id="org0f1673e"></a>

### next meeting: June 13th


<a id="org5011ae2"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org0c066d0"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
