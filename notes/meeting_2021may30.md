- [meeting notes May 16, 2021](#orgbfb2475)
  - [linkage](#org8fc6e76)
    - [<http://sf.pm.org>](#orgf5d3e42)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#org7e4b280)
  - [secret plan](#org3e3370e)
    - [junctions](#orgd1257e0)
    - [finished that special purpose find/grep script:](#orgb4f5207)
    - ["commutative" pattern matching:](#org4f625ef)
    - [perl5-porters list: got involved with arguing about trimming whitespace](#org48f172f)
  - [other topic ideas](#org5aaad02)
    - [raku classes as data containers (joe brenner)](#org7205cb9)
    - [argument passing signatures (joe brenner)](#org4171e7e)
    - [find/grep variants in raku revisited (joe brenner)](#org61c698d)
    - [bruce gray rosettacode](#orgf6f9759)
    - [super flat](#org5a28bba)
    - [type system: what is accepted by what](#orgca38701)
    - [go through my perl5 templates: how much is core raku now?](#orgdcb56eb)
    - [raku die handlers vs perl5](#org1010efc)
    - [raku idioms](#org123afab)
  - [appendix: the usual links](#orgc999373)
    - [code examples](#org13c0a01)
    - [meeting notes (material from this file)](#org349801b)
    - [SF Perl page, has links to mailing list](#org2ac78e3)
    - [perl6-users mailing list archive](#org5ad2d66)
  - [announcments](#orgfc9e124)
    - [next meeting: June 16th](#orgdf7b257)


<a id="orgbfb2475"></a>

# meeting notes May 16, 2021


<a id="org8fc6e76"></a>

## linkage


<a id="orgf5d3e42"></a>

### <http://sf.pm.org>


<a id="org7e4b280"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org3e3370e"></a>

## secret plan


<a id="orgd1257e0"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb4f5207"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org4f625ef"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org48f172f"></a>

### perl5-porters list: got involved with arguing about trimming whitespace


<a id="org5aaad02"></a>

## other topic ideas


<a id="org7205cb9"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4171e7e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org61c698d"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="orgf6f9759"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5a28bba"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgca38701"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgdcb56eb"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org1010efc"></a>

### raku die handlers vs perl5


<a id="org123afab"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc999373"></a>

## appendix: the usual links


<a id="org13c0a01"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org349801b"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org2ac78e3"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org5ad2d66"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgfc9e124"></a>

## announcments


<a id="orgdf7b257"></a>

### next meeting: June 16th
