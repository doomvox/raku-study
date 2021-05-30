- [meeting notes May 16, 2021](#orge8d22ba)
  - [linkage](#org5ee7fdc)
    - [<http://sf.pm.org>](#orga4757a8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orgf29b711)
  - [secret plan](#org99131ea)
    - [junctions](#org0c07d97)
    - [raku's perl5 regex compatibility (:P5) is limited](#orga0e39c5)
    - ["commutative" pattern matching:](#orgaf8e1a1)
  - [topic ideas](#org7895bb8)
    - [raku classes as data containers (joe brenner)](#org08cd74f)
    - [argument passing signatures (joe brenner)](#orgd1d0881)
    - [find/grep variants in raku revisited (joe brenner)](#orgf6220f7)
    - [bruce gray rosettacode](#org67c4a85)
    - [super flat](#org57854c1)
    - [type system: what is accepted by what](#orgce80fab)
    - [go through my perl5 templates: how much is core raku now?](#org0a2ad1d)
    - [raku die handlers vs perl5](#org95ed008)
    - [raku idioms](#org395488c)
  - [appendix: the usual links](#orgc67b3cd)
    - [code examples](#org20bc957)
    - [meeting notes (material from this file)](#orgf5c38ee)
    - [SF Perl page, has links to mailing list](#orgd180986)
    - [perl6-users mailing list archive](#org3e8a05e)
  - [announcments](#orgd7955f4)
    - [next meeting: June 16th](#org7dffaa9)


<a id="orge8d22ba"></a>

# meeting notes May 16, 2021


<a id="org5ee7fdc"></a>

## linkage


<a id="orga4757a8"></a>

### <http://sf.pm.org>


<a id="orgf29b711"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org99131ea"></a>

## secret plan


<a id="org0c07d97"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orga0e39c5"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgaf8e1a1"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org7895bb8"></a>

## topic ideas


<a id="org08cd74f"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd1d0881"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgf6220f7"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org67c4a85"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org57854c1"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgce80fab"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org0a2ad1d"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org95ed008"></a>

### raku die handlers vs perl5


<a id="org395488c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc67b3cd"></a>

## appendix: the usual links


<a id="org20bc957"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgf5c38ee"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgd180986"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org3e8a05e"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd7955f4"></a>

## announcments


<a id="org7dffaa9"></a>

### next meeting: June 16th
