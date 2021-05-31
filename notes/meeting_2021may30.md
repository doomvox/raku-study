- [meeting notes May 30, 2021](#orgea73c47)
  - [secret plan](#org1a8fbaf)
    - [bill: weirdness on if/else vs ternary](#orgb96d210)
    - [bruce gray](#org59e6b7e)
    - [junctions](#org69a144c)
    - [finished that special purpose find/grep script:](#org7a17139)
    - ["commutative" pattern matching:](#orgaf35e93)
    - [perl5-porters list: trimming whitespace](#org1defe16)
  - [other topic ideas](#orgfdc13fc)
    - [raku classes as data containers (joe brenner)](#org7781eb1)
    - [argument passing signatures (joe brenner)](#orgb0f7c38)
    - [bruce gray rosettacode](#org7fb73bb)
    - [super flat](#orgdeb0d9c)
    - [type system: what is accepted by what](#org65b1e31)
    - [go through my perl5 templates: how much is core raku now?](#org21f3eaa)
    - [raku die handlers vs perl5](#org688be6d)
    - [raku idioms](#orgca76e8d)
  - [appendix: the usual links](#org074e5ab)
    - [code examples](#org4a59d18)
    - [meeting notes (material from this file)](#org0a9c5a4)
    - [SF Perl page, has links to mailing list](#orgfa2a364)
    - [perl6-users mailing list archive](#org59d7eae)
  - [announcments](#org5b248b4)
    - [next meeting: June 16th](#orga0a34d5)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org930c298)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orga52e9ab)


<a id="orgea73c47"></a>

# meeting notes May 30, 2021


<a id="org1a8fbaf"></a>

## secret plan


<a id="orgb96d210"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org59e6b7e"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>

2.  sorting and comparators documentation


<a id="org69a144c"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org7a17139"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgaf35e93"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org1defe16"></a>

### perl5-porters list: trimming whitespace


<a id="orgfdc13fc"></a>

## other topic ideas


<a id="org7781eb1"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgb0f7c38"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org7fb73bb"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgdeb0d9c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org65b1e31"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org21f3eaa"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org688be6d"></a>

### raku die handlers vs perl5


<a id="orgca76e8d"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org074e5ab"></a>

## appendix: the usual links


<a id="org4a59d18"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org0a9c5a4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgfa2a364"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org59d7eae"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5b248b4"></a>

## announcments


<a id="orga0a34d5"></a>

### next meeting: June 16th


<a id="org930c298"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="orga52e9ab"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
