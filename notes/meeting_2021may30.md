- [meeting notes May 16, 2021](#orgcbdbfef)
  - [linkage](#orge624798)
    - [<http://sf.pm.org>](#org5ffd852)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org9c210fb)
  - [secret plan](#org71b5a8b)
    - [junctions](#orgaace078)
    - [finished that special purpose find/grep script:](#orgb59355d)
    - ["commutative" pattern matching:](#org69c05ed)
  - [other topic ideas](#org3814519)
    - [raku classes as data containers (joe brenner)](#org934729b)
    - [argument passing signatures (joe brenner)](#org24276a9)
    - [find/grep variants in raku revisited (joe brenner)](#org66d6efb)
    - [bruce gray rosettacode](#orgc2857bf)
    - [super flat](#org74f8ff2)
    - [type system: what is accepted by what](#orgf735585)
    - [go through my perl5 templates: how much is core raku now?](#org89c0028)
    - [raku die handlers vs perl5](#org907ae3d)
    - [raku idioms](#org039409f)
  - [appendix: the usual links](#orgc58a9ba)
    - [code examples](#org3008f86)
    - [meeting notes (material from this file)](#org59fcea8)
    - [SF Perl page, has links to mailing list](#org29a1ff1)
    - [perl6-users mailing list archive](#org264c842)
  - [announcments](#orgd5a1ea4)
    - [next meeting: June 16th](#org0a979ed)


<a id="orgcbdbfef"></a>

# meeting notes May 16, 2021


<a id="orge624798"></a>

## linkage


<a id="org5ffd852"></a>

### <http://sf.pm.org>


<a id="org9c210fb"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org71b5a8b"></a>

## secret plan


<a id="orgaace078"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orgb59355d"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org69c05ed"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org3814519"></a>

## other topic ideas


<a id="org934729b"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org24276a9"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org66d6efb"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgc2857bf"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org74f8ff2"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf735585"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org89c0028"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org907ae3d"></a>

### raku die handlers vs perl5


<a id="org039409f"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc58a9ba"></a>

## appendix: the usual links


<a id="org3008f86"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org59fcea8"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org29a1ff1"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org264c842"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd5a1ea4"></a>

## announcments


<a id="org0a979ed"></a>

### next meeting: June 16th
