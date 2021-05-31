- [meeting notes May 30, 2021](#org443a053)
  - [secret plan](#org5eea4de)
    - [bill: weirdness on if/else vs ternary](#org3833643)
    - [bruce gray](#orgfe8bb1e)
    - [junctions](#orgc074bde)
    - [finished that special purpose find/grep script:](#org9d1aa45)
    - ["commutative" pattern matching:](#orga1339dd)
    - [perl5-porters list: trimming whitespace](#orgd8e1a16)
  - [other topic ideas](#orge44cc14)
    - [raku classes as data containers (joe brenner)](#orgb9d9bcb)
    - [argument passing signatures (joe brenner)](#orgf81a18b)
    - [bruce gray rosettacode](#org51a92e0)
    - [super flat](#orgad8c072)
    - [type system: what is accepted by what](#orga67dccb)
    - [go through my perl5 templates: how much is core raku now?](#orgec4706f)
    - [raku die handlers vs perl5](#orgf6fc7d2)
    - [raku idioms](#org9c3c14d)
  - [appendix: the usual links](#org767bdf6)
    - [code examples](#org9396916)
    - [meeting notes (material from this file)](#org1d887ef)
    - [SF Perl page, has links to mailing list](#org701f482)
    - [perl6-users mailing list archive](#org71aa0b3)
  - [announcments](#org7cdb588)
    - [next meeting: June 16th](#org2ecb9ec)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgec1d72b)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org4bcb1b1)


<a id="org443a053"></a>

# meeting notes May 30, 2021


<a id="org5eea4de"></a>

## secret plan


<a id="org3833643"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="orgfe8bb1e"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>

2.  sorting and comparators documentation


<a id="orgc074bde"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org9d1aa45"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orga1339dd"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgd8e1a16"></a>

### perl5-porters list: trimming whitespace


<a id="orge44cc14"></a>

## other topic ideas


<a id="orgb9d9bcb"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf81a18b"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org51a92e0"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgad8c072"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orga67dccb"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgec4706f"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgf6fc7d2"></a>

### raku die handlers vs perl5


<a id="org9c3c14d"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org767bdf6"></a>

## appendix: the usual links


<a id="org9396916"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org1d887ef"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org701f482"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org71aa0b3"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org7cdb588"></a>

## announcments


<a id="org2ecb9ec"></a>

### next meeting: June 16th


<a id="orgec1d72b"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org4bcb1b1"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
