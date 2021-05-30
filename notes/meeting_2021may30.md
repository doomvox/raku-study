- [meeting notes May 16, 2021](#orgf201f26)
  - [linkage](#org9803d1d)
    - [<http://sf.pm.org>](#org6cf3522)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org83cf7dc)
  - [secret plan](#orga33b2fb)
    - [junctions](#org3d388e5)
    - [finished that special purpose find/grep script:](#orgf9253eb)
    - ["commutative" pattern matching:](#orgf738dd6)
  - [topic ideas](#org7a473c3)
    - [raku classes as data containers (joe brenner)](#orgd858805)
    - [argument passing signatures (joe brenner)](#org3334635)
    - [find/grep variants in raku revisited (joe brenner)](#org39aadf3)
    - [bruce gray rosettacode](#org0b27dff)
    - [super flat](#orgd87ce90)
    - [type system: what is accepted by what](#org2eb7f0d)
    - [go through my perl5 templates: how much is core raku now?](#org71c704f)
    - [raku die handlers vs perl5](#orgbe9be13)
    - [raku idioms](#org7394c55)
  - [appendix: the usual links](#orgf8be8ab)
    - [code examples](#org711094b)
    - [meeting notes (material from this file)](#org82d707d)
    - [SF Perl page, has links to mailing list](#org28e40e8)
    - [perl6-users mailing list archive](#orgb3b2916)
  - [announcments](#org861e87c)
    - [next meeting: June 16th](#org1782ab2)


<a id="orgf201f26"></a>

# meeting notes May 16, 2021


<a id="org9803d1d"></a>

## linkage


<a id="org6cf3522"></a>

### <http://sf.pm.org>


<a id="org83cf7dc"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orga33b2fb"></a>

## secret plan


<a id="org3d388e5"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orgf9253eb"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgf738dd6"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org7a473c3"></a>

## topic ideas


<a id="orgd858805"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org3334635"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org39aadf3"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org0b27dff"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgd87ce90"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org2eb7f0d"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org71c704f"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgbe9be13"></a>

### raku die handlers vs perl5


<a id="org7394c55"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgf8be8ab"></a>

## appendix: the usual links


<a id="org711094b"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org82d707d"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org28e40e8"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgb3b2916"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org861e87c"></a>

## announcments


<a id="org1782ab2"></a>

### next meeting: June 16th
