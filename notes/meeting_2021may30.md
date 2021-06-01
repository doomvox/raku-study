- [meeting notes May 30, 2021](#org57e1f2b)
  - [secret plan](#org90f2a46)
    - [bill: weirdness on if/else vs ternary](#org248551f)
    - [bruce gray](#org1e2624d)
    - [junctions](#org47df259)
    - [finished that special purpose find/grep script:](#org334a007)
    - ["commutative" pattern matching:](#org2564353)
    - [perl5-porters list: trimming whitespace](#org5766a92)
  - [other topic ideas](#org97bf6e4)
    - [raku classes as data containers (joe brenner)](#org9cd81e0)
    - [argument passing signatures (joe brenner)](#org484ba17)
    - [bruce gray rosettacode](#orgdbf1423)
    - [super flat](#org3da5971)
    - [type system: what is accepted by what](#org7214fb5)
    - [go through my perl5 templates: how much is core raku now?](#orgfa03a8f)
    - [raku die handlers vs perl5](#org3a21dbb)
    - [raku idioms](#org643dbf2)
  - [appendix: the usual links](#orgc54dabb)
    - [code examples](#orga1144e1)
    - [meeting notes (material from this file)](#org12eb01f)
    - [SF Perl page, has links to mailing list](#orgc365f66)
    - [perl6-users mailing list archive](#org83f8e52)
  - [announcments](#orgebf401a)
    - [next meeting: June 13th, Sunday, right after the conference in the clouds (um)](#org51749e0)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org2aa334b)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org1db649b)


<a id="org57e1f2b"></a>

# meeting notes May 30, 2021


<a id="org90f2a46"></a>

## secret plan


<a id="org248551f"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org1e2624d"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org47df259"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org334a007"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org2564353"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org5766a92"></a>

### perl5-porters list: trimming whitespace


<a id="org97bf6e4"></a>

## other topic ideas


<a id="org9cd81e0"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org484ba17"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgdbf1423"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org3da5971"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org7214fb5"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgfa03a8f"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org3a21dbb"></a>

### raku die handlers vs perl5


<a id="org643dbf2"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc54dabb"></a>

## appendix: the usual links


<a id="orga1144e1"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org12eb01f"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgc365f66"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org83f8e52"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgebf401a"></a>

## announcments


<a id="org51749e0"></a>

### next meeting: June 13th, Sunday, right after the conference in the clouds (um)


<a id="org2aa334b"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org1db649b"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
