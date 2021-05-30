- [meeting notes May 16, 2021](#org6ad6a19)
  - [linkage](#org97de994)
    - [<http://sf.pm.org>](#org12e039c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orga3790e7)
  - [secret plan](#org5d895a3)
    - [junctions](#org5a143cd)
    - [finished that special purpose find/grep script:](#org91bf6ca)
    - ["commutative" pattern matching:](#org2e76ada)
    - [perl5-porters list: got involved with arguing about line trimming](#org9fb8fe5)
  - [other topic ideas](#org9118776)
    - [raku classes as data containers (joe brenner)](#orgecd32b2)
    - [argument passing signatures (joe brenner)](#orgf3df72a)
    - [find/grep variants in raku revisited (joe brenner)](#orge47ac59)
    - [bruce gray rosettacode](#org136a2e0)
    - [super flat](#org6b956b9)
    - [type system: what is accepted by what](#org79559e7)
    - [go through my perl5 templates: how much is core raku now?](#org132834b)
    - [raku die handlers vs perl5](#org29d9c28)
    - [raku idioms](#orgeaf3e77)
  - [appendix: the usual links](#org49dbc5e)
    - [code examples](#orgd425297)
    - [meeting notes (material from this file)](#org4a2ef11)
    - [SF Perl page, has links to mailing list](#orgfaa1998)
    - [perl6-users mailing list archive](#org3b187c0)
  - [announcments](#org4084107)
    - [next meeting: June 16th](#org263b67e)


<a id="org6ad6a19"></a>

# meeting notes May 16, 2021


<a id="org97de994"></a>

## linkage


<a id="org12e039c"></a>

### <http://sf.pm.org>


<a id="orga3790e7"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org5d895a3"></a>

## secret plan


<a id="org5a143cd"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org91bf6ca"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  stumbled across behavior of passing a junction to exclude

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org2e76ada"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org9fb8fe5"></a>

### perl5-porters list: got involved with arguing about line trimming


<a id="org9118776"></a>

## other topic ideas


<a id="orgecd32b2"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf3df72a"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orge47ac59"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org136a2e0"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6b956b9"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org79559e7"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org132834b"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org29d9c28"></a>

### raku die handlers vs perl5


<a id="orgeaf3e77"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org49dbc5e"></a>

## appendix: the usual links


<a id="orgd425297"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org4a2ef11"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgfaa1998"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org3b187c0"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4084107"></a>

## announcments


<a id="org263b67e"></a>

### next meeting: June 16th
