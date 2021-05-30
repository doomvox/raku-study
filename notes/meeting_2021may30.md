- [meeting notes May 30, 2021](#orgbd559a9)
  - [secret plan](#orgdf8b80e)
    - [bruce gray](#org15c469d)
    - [junctions](#orgd682584)
    - [finished that special purpose find/grep script:](#orgdebc135)
    - ["commutative" pattern matching:](#org69f0465)
    - [perl5-porters list: trimming whitespace](#orgde392a5)
  - [other topic ideas](#orgac625a8)
    - [raku classes as data containers (joe brenner)](#orgaa16865)
    - [argument passing signatures (joe brenner)](#org95e6fec)
    - [bruce gray rosettacode](#org798f369)
    - [super flat](#orga460031)
    - [type system: what is accepted by what](#orgf9d2143)
    - [go through my perl5 templates: how much is core raku now?](#orgdff277b)
    - [raku die handlers vs perl5](#org7a67c1c)
    - [raku idioms](#orgc485056)
  - [appendix: the usual links](#org03ebd0f)
    - [code examples](#org0b7cc70)
    - [meeting notes (material from this file)](#org4b2256a)
    - [SF Perl page, has links to mailing list](#org1d85344)
    - [perl6-users mailing list archive](#org5e7d0dc)
  - [announcments](#org4236b53)
    - [next meeting: June 16th](#orgb90db49)


<a id="orgbd559a9"></a>

# meeting notes May 30, 2021


<a id="orgdf8b80e"></a>

## secret plan


<a id="org15c469d"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="orgd682584"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgdebc135"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org69f0465"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgde392a5"></a>

### perl5-porters list: trimming whitespace


<a id="orgac625a8"></a>

## other topic ideas


<a id="orgaa16865"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org95e6fec"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org798f369"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orga460031"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf9d2143"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgdff277b"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org7a67c1c"></a>

### raku die handlers vs perl5


<a id="orgc485056"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org03ebd0f"></a>

## appendix: the usual links


<a id="org0b7cc70"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org4b2256a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org1d85344"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org5e7d0dc"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4236b53"></a>

## announcments


<a id="orgb90db49"></a>

### next meeting: June 16th
