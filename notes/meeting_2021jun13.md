- [meeting notes June 20, 2021](#org1fb377b)
  - [and now, for something completely different](#org404b5dd)
    - [is it possible to "SUBSCRIBE" to documentation@raku.org](#orga214f2f)
  - [minutes of last meeting](#orge677240)
    - [bill: weirdness on if/else vs ternary](#org4540f88)
    - [bruce gray](#orgb39ba2d)
    - [junctions](#org88594e2)
    - [finished that special purpose find/grep script:](#org528c354)
    - ["commutative" pattern matching:](#orgb192b0a)
    - [perl5-porters list: trimming whitespace](#org3c4c00a)
  - [other topic ideas](#org2848c33)
    - [raku classes as data containers (joe brenner)](#org0179d51)
    - [argument passing signatures (joe brenner)](#org577c8be)
    - [bruce gray rosettacode](#orgfa00105)
    - [super flat](#org07432ff)
    - [type system: what is accepted by what](#org1255b4e)
    - [go through my perl5 templates: how much is core raku now?](#orgb95136d)
    - [raku die handlers vs perl5](#org48d12ff)
    - [raku idioms](#orgad5f24a)
  - [appendix: the usual links](#orgc70d485)
    - [code examples](#org5f9982a)
    - [meeting notes (material from this file)](#orgc9f1783)
    - [SF Perl page, has links to mailing list](#orgc24d65d)
    - [perl6-users mailing list archive](#org8d3a71f)
  - [announcments](#org2cb3243)
    - [next meeting: July 11th](#org20da5f4)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org02f066a)


<a id="org1fb377b"></a>

# meeting notes June 20, 2021


<a id="org404b5dd"></a>

## and now, for something completely different


<a id="orga214f2f"></a>

### is it possible to "SUBSCRIBE" to documentation@raku.org


<a id="orge677240"></a>

## minutes of last meeting


<a id="org4540f88"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="orgb39ba2d"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org88594e2"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org528c354"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgb192b0a"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org3c4c00a"></a>

### perl5-porters list: trimming whitespace


<a id="org2848c33"></a>

## other topic ideas


<a id="org0179d51"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org577c8be"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgfa00105"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org07432ff"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org1255b4e"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgb95136d"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org48d12ff"></a>

### raku die handlers vs perl5


<a id="orgad5f24a"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc70d485"></a>

## appendix: the usual links


<a id="org5f9982a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgc9f1783"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orgc24d65d"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8d3a71f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2cb3243"></a>

## announcments


<a id="org20da5f4"></a>

### next meeting: July 11th


<a id="org02f066a"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
