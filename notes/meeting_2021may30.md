- [meeting notes May 16, 2021](#org1ca5fcc)
  - [secret plan](#orgf5eaed5)
    - [bg](#org985d9b8)
    - [junctions](#org42b8138)
    - [finished that special purpose find/grep script:](#org9eab596)
    - ["commutative" pattern matching:](#org3c0b518)
    - [perl5-porters list: trimming whitespace](#org7e12e32)
  - [other topic ideas](#org2711079)
    - [raku classes as data containers (joe brenner)](#org4f161c5)
    - [argument passing signatures (joe brenner)](#org82f7c56)
    - [bruce gray rosettacode](#org66622ad)
    - [super flat](#orgf34130c)
    - [type system: what is accepted by what](#orga71eb6e)
    - [go through my perl5 templates: how much is core raku now?](#orgd51fd58)
    - [raku die handlers vs perl5](#org8313234)
    - [raku idioms](#org835c926)
  - [appendix: the usual links](#orge709ee4)
    - [code examples](#org129c824)
    - [meeting notes (material from this file)](#org871ecb2)
    - [SF Perl page, has links to mailing list](#org0df38d9)
    - [perl6-users mailing list archive](#org23817fc)
  - [announcments](#orgd7cf98e)
    - [next meeting: June 16th](#orge79660e)


<a id="org1ca5fcc"></a>

# meeting notes May 16, 2021


<a id="orgf5eaed5"></a>

## secret plan


<a id="org985d9b8"></a>

### bg

1.  rosetta code

2.  sorting and comparators


<a id="org42b8138"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org9eab596"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org3c0b518"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org7e12e32"></a>

### perl5-porters list: trimming whitespace


<a id="org2711079"></a>

## other topic ideas


<a id="org4f161c5"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org82f7c56"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org66622ad"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgf34130c"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orga71eb6e"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgd51fd58"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org8313234"></a>

### raku die handlers vs perl5


<a id="org835c926"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orge709ee4"></a>

## appendix: the usual links


<a id="org129c824"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org871ecb2"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org0df38d9"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org23817fc"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd7cf98e"></a>

## announcments


<a id="orge79660e"></a>

### next meeting: June 16th
