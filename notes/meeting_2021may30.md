- [meeting notes May 16, 2021](#org2152871)
  - [linkage](#org0caaa46)
    - [<http://sf.pm.org>](#org52d23c3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org232dc5d)
  - [secret plan](#org6762e23)
    - [junctions](#org0f384f1)
    - [raku's perl5 regex compatibility (:P5) is limited](#org2b65297)
    - ["commutative" pattern matching:](#org33bc0f9)
  - [topic ideas](#org7514fde)
    - [raku classes as data containers (joe brenner)](#org88246cd)
    - [argument passing signatures (joe brenner)](#orgcda2602)
    - [find/grep variants in raku revisited (joe brenner)](#org310e9c3)
    - [bruce gray rosettacode](#org15bc11c)
    - [super flat](#org566731b)
    - [type system: what is accepted by what](#org505f0c9)
    - [go through my perl5 templates: how much is core raku now?](#org28ecf0c)
    - [raku die handlers vs perl5](#org3f9988e)
    - [raku idioms](#org51eb03f)
  - [appendix: the usual links](#org48fdac2)
    - [code examples](#org49e5836)
    - [meeting notes (material from this file)](#org61ab03a)
    - [SF Perl page, has links to mailing list](#org08f5ee4)
    - [perl6-users mailing list archive](#org6336e21)
  - [announcments](#orged7d9d6)
    - [next meeting: June 16th](#orge41be63)


<a id="org2152871"></a>

# meeting notes May 16, 2021


<a id="org0caaa46"></a>

## linkage


<a id="org52d23c3"></a>

### <http://sf.pm.org>


<a id="org232dc5d"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org6762e23"></a>

## secret plan


<a id="org0f384f1"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org2b65297"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org33bc0f9"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org7514fde"></a>

## topic ideas


<a id="org88246cd"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgcda2602"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org310e9c3"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org15bc11c"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org566731b"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org505f0c9"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org28ecf0c"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org3f9988e"></a>

### raku die handlers vs perl5


<a id="org51eb03f"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org48fdac2"></a>

## appendix: the usual links


<a id="org49e5836"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org61ab03a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org08f5ee4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6336e21"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orged7d9d6"></a>

## announcments


<a id="orge41be63"></a>

### next meeting: June 16th
