- [meeting notes May 30, 2021](#org0c05a15)
  - [secret plan](#orgad972e3)
    - [bill: weirdness on if/else vs ternary](#org3f40454)
    - [bruce gray](#org3d8b4eb)
    - [junctions](#orgd932a3f)
    - [finished that special purpose find/grep script:](#org63f1400)
    - ["commutative" pattern matching:](#org5963f55)
    - [perl5-porters list: trimming whitespace](#org41e8aed)
  - [other topic ideas](#org42ae677)
    - [raku classes as data containers (joe brenner)](#orgcc18c6a)
    - [argument passing signatures (joe brenner)](#org2b15b05)
    - [bruce gray rosettacode](#orgdbd2c22)
    - [super flat](#org8262dfb)
    - [type system: what is accepted by what](#org8e4056a)
    - [go through my perl5 templates: how much is core raku now?](#org9ee24b2)
    - [raku die handlers vs perl5](#orgec4516f)
    - [raku idioms](#orge9e3440)
  - [appendix: the usual links](#org81d2c1c)
    - [code examples](#org19195e0)
    - [meeting notes (material from this file)](#orgc39626a)
    - [SF Perl page, has links to mailing list](#org437c58c)
    - [perl6-users mailing list archive](#org402aa9f)
  - [announcments](#orgefb717c)
    - [next meeting: June 16th](#org3a952a3)
    - [mail "subscribe" to documentation@raku.org](#org157ef1b)


<a id="org0c05a15"></a>

# meeting notes May 30, 2021


<a id="orgad972e3"></a>

## secret plan


<a id="org3f40454"></a>

### bill: weirdness on if/else vs ternary


<a id="org3d8b4eb"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="orgd932a3f"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org63f1400"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org5963f55"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org41e8aed"></a>

### perl5-porters list: trimming whitespace


<a id="org42ae677"></a>

## other topic ideas


<a id="orgcc18c6a"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2b15b05"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgdbd2c22"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org8262dfb"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org8e4056a"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org9ee24b2"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgec4516f"></a>

### raku die handlers vs perl5


<a id="orge9e3440"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org81d2c1c"></a>

## appendix: the usual links


<a id="org19195e0"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgc39626a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org437c58c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org402aa9f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgefb717c"></a>

## announcments


<a id="org3a952a3"></a>

### next meeting: June 16th


<a id="org157ef1b"></a>

### mail "subscribe" to documentation@raku.org

1.  maybe it'll work
