- [meeting notes May 16, 2021](#org98038db)
  - [linkage](#org3d390eb)
    - [<http://sf.pm.org>](#org7f1f264)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org7684774)
  - [secret plan](#org4a12422)
    - [junctions](#org23d06a5)
    - [finished that special purpose find/grep script:](#org73792e4)
    - ["commutative" pattern matching:](#org1068e68)
    - [perl5-porters list: got involved with arguing about line trimming](#orgc7bdd25)
  - [other topic ideas](#orgfeb8141)
    - [raku classes as data containers (joe brenner)](#orgaadc219)
    - [argument passing signatures (joe brenner)](#org316ef56)
    - [find/grep variants in raku revisited (joe brenner)](#org3e6a822)
    - [bruce gray rosettacode](#orgf55788e)
    - [super flat](#orge2766a1)
    - [type system: what is accepted by what](#org9709445)
    - [go through my perl5 templates: how much is core raku now?](#org257cfb2)
    - [raku die handlers vs perl5](#org0c89b5d)
    - [raku idioms](#org757a5cc)
  - [appendix: the usual links](#org96100a6)
    - [code examples](#orge40dc7a)
    - [meeting notes (material from this file)](#org9dbbbf1)
    - [SF Perl page, has links to mailing list](#org6ca6527)
    - [perl6-users mailing list archive](#org42560a5)
  - [announcments](#org605f58b)
    - [next meeting: June 16th](#org7a7f127)


<a id="org98038db"></a>

# meeting notes May 16, 2021


<a id="org3d390eb"></a>

## linkage


<a id="org7f1f264"></a>

### <http://sf.pm.org>


<a id="org7684774"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org4a12422"></a>

## secret plan


<a id="org23d06a5"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org73792e4"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org1068e68"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgc7bdd25"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="orgfeb8141"></a>

## other topic ideas


<a id="orgaadc219"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org316ef56"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org3e6a822"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgf55788e"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge2766a1"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org9709445"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org257cfb2"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org0c89b5d"></a>

### raku die handlers vs perl5


<a id="org757a5cc"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org96100a6"></a>

## appendix: the usual links


<a id="orge40dc7a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org9dbbbf1"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org6ca6527"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org42560a5"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org605f58b"></a>

## announcments


<a id="org7a7f127"></a>

### next meeting: June 16th
