- [meeting notes May 30, 2021](#orgd9c46c4)
  - [secret plan](#orge094276)
    - [bill: weirdness on if/else vs ternary](#org6f5278a)
    - [bruce gray](#org3c3958e)
    - [junctions](#org19738f0)
    - [finished that special purpose find/grep script:](#orge128422)
    - ["commutative" pattern matching:](#org18b5af7)
    - [perl5-porters list: trimming whitespace](#orgb847e9a)
  - [other topic ideas](#org5134fd5)
    - [raku classes as data containers (joe brenner)](#org386f49d)
    - [argument passing signatures (joe brenner)](#orgcda1005)
    - [bruce gray rosettacode](#org226f9d4)
    - [super flat](#org0d871d9)
    - [type system: what is accepted by what](#orgd5da2d3)
    - [go through my perl5 templates: how much is core raku now?](#orgdb31701)
    - [raku die handlers vs perl5](#org60b4c6c)
    - [raku idioms](#orgfbf4b28)
  - [appendix: the usual links](#org4dcd173)
    - [code examples](#org9aaf52d)
    - [meeting notes (material from this file)](#org55b9ad9)
    - [SF Perl page, has links to mailing list](#org1f72fe5)
    - [perl6-users mailing list archive](#orge3599d6)
  - [announcments](#org9a5e67e)
    - [next meeting: June 16th](#org6be6c7f)


<a id="orgd9c46c4"></a>

# meeting notes May 30, 2021


<a id="orge094276"></a>

## secret plan


<a id="org6f5278a"></a>

### bill: weirdness on if/else vs ternary


<a id="org3c3958e"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="org19738f0"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orge128422"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org18b5af7"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgb847e9a"></a>

### perl5-porters list: trimming whitespace


<a id="org5134fd5"></a>

## other topic ideas


<a id="org386f49d"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgcda1005"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org226f9d4"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org0d871d9"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgd5da2d3"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgdb31701"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org60b4c6c"></a>

### raku die handlers vs perl5


<a id="orgfbf4b28"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org4dcd173"></a>

## appendix: the usual links


<a id="org9aaf52d"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org55b9ad9"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org1f72fe5"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orge3599d6"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org9a5e67e"></a>

## announcments


<a id="org6be6c7f"></a>

### next meeting: June 16th

subscribe documentation@raku.org
