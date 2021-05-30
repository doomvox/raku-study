- [meeting notes May 16, 2021](#org8c9a956)
  - [linkage](#org43e7a41)
    - [<http://sf.pm.org>](#org464eba0)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orga3f85b4)
  - [secret plan](#org2318e78)
    - [junctions](#org0753d60)
    - [finished that special purpose find/grep script:](#org47d7ed6)
    - ["commutative" pattern matching:](#orgd8b0649)
    - [perl5-porters list: got involved with arguing about line trimming](#org6d6bcbd)
  - [other topic ideas](#org0483891)
    - [raku classes as data containers (joe brenner)](#org094681e)
    - [argument passing signatures (joe brenner)](#org5780395)
    - [find/grep variants in raku revisited (joe brenner)](#org699381f)
    - [bruce gray rosettacode](#org2776c90)
    - [super flat](#org547aa1a)
    - [type system: what is accepted by what](#org9302bbb)
    - [go through my perl5 templates: how much is core raku now?](#org070d422)
    - [raku die handlers vs perl5](#org00fc636)
    - [raku idioms](#org7ba2191)
  - [appendix: the usual links](#orge602418)
    - [code examples](#orgc89f895)
    - [meeting notes (material from this file)](#orgf0c754c)
    - [SF Perl page, has links to mailing list](#org7ffb68f)
    - [perl6-users mailing list archive](#orgcc2ac79)
  - [announcments](#org2f64227)
    - [next meeting: June 16th](#org01d77ef)


<a id="org8c9a956"></a>

# meeting notes May 16, 2021


<a id="org43e7a41"></a>

## linkage


<a id="org464eba0"></a>

### <http://sf.pm.org>


<a id="orga3f85b4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org2318e78"></a>

## secret plan


<a id="org0753d60"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org47d7ed6"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  stumbled across odd behavior when passing a junction to exclude

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgd8b0649"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org6d6bcbd"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="org0483891"></a>

## other topic ideas


<a id="org094681e"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org5780395"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org699381f"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org2776c90"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org547aa1a"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org9302bbb"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org070d422"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org00fc636"></a>

### raku die handlers vs perl5


<a id="org7ba2191"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orge602418"></a>

## appendix: the usual links


<a id="orgc89f895"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgf0c754c"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org7ffb68f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgcc2ac79"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org2f64227"></a>

## announcments


<a id="org01d77ef"></a>

### next meeting: June 16th
