- [meeting notes May 16, 2021](#org4dc612d)
  - [linkage](#orgc38ba59)
    - [<http://sf.pm.org>](#org74da7d1)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orgc3b932b)
  - [secret plan](#org9eb41c7)
    - [junctions](#org3d9dddc)
    - [finished that special purpose find/grep script:](#orgf29ab7f)
    - ["commutative" pattern matching:](#orgc9e5e76)
  - [topic ideas](#orgc0db28a)
    - [raku classes as data containers (joe brenner)](#org6c150ed)
    - [argument passing signatures (joe brenner)](#orgdb97a39)
    - [find/grep variants in raku revisited (joe brenner)](#org174bd9a)
    - [bruce gray rosettacode](#orgbd79d39)
    - [super flat](#orgbf9eeec)
    - [type system: what is accepted by what](#org1f98edf)
    - [go through my perl5 templates: how much is core raku now?](#orgbba860e)
    - [raku die handlers vs perl5](#orgbe1cb53)
    - [raku idioms](#orgf566b70)
  - [appendix: the usual links](#org52a0128)
    - [code examples](#org9e626d4)
    - [meeting notes (material from this file)](#orgea4f306)
    - [SF Perl page, has links to mailing list](#orgdd0364d)
    - [perl6-users mailing list archive](#org80a6a3e)
  - [announcments](#org5ade0c9)
    - [next meeting: June 16th](#org80be1d2)


<a id="org4dc612d"></a>

# meeting notes May 16, 2021


<a id="orgc38ba59"></a>

## linkage


<a id="org74da7d1"></a>

### <http://sf.pm.org>


<a id="orgc3b932b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org9eb41c7"></a>

## secret plan


<a id="org3d9dddc"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orgf29ab7f"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgc9e5e76"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgc0db28a"></a>

## topic ideas


<a id="org6c150ed"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgdb97a39"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org174bd9a"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgbd79d39"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgbf9eeec"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org1f98edf"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgbba860e"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgbe1cb53"></a>

### raku die handlers vs perl5


<a id="orgf566b70"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org52a0128"></a>

## appendix: the usual links


<a id="org9e626d4"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgea4f306"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgdd0364d"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org80a6a3e"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5ade0c9"></a>

## announcments


<a id="org80be1d2"></a>

### next meeting: June 16th
