- [meeting notes May 16, 2021](#org6b5d09d)
  - [secret plan](#org86af2b9)
    - [junctions](#org5233415)
    - [finished that special purpose find/grep script:](#org4aa9a20)
    - ["commutative" pattern matching:](#org196c378)
    - [perl5-porters list: trimming whitespace](#orgcbd387c)
  - [other topic ideas](#org0ea50ec)
    - [raku classes as data containers (joe brenner)](#orge88de45)
    - [argument passing signatures (joe brenner)](#org2c3ab1e)
    - [bruce gray rosettacode](#orgbaff717)
    - [super flat](#org3886df9)
    - [type system: what is accepted by what](#orgf41ccb1)
    - [go through my perl5 templates: how much is core raku now?](#org3e3ee83)
    - [raku die handlers vs perl5](#orgd1d1ad5)
    - [raku idioms](#org16dd9a7)
  - [appendix: the usual links](#org842b522)
    - [code examples](#orga0e4997)
    - [meeting notes (material from this file)](#org42afd5e)
    - [SF Perl page, has links to mailing list](#org6c27779)
    - [perl6-users mailing list archive](#org798ba94)
  - [announcments](#orgf9a29e4)
    - [next meeting: June 16th](#orge7d6530)


<a id="org6b5d09d"></a>

# meeting notes May 16, 2021


<a id="org86af2b9"></a>

## secret plan


<a id="org5233415"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org4aa9a20"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org196c378"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgcbd387c"></a>

### perl5-porters list: trimming whitespace


<a id="org0ea50ec"></a>

## other topic ideas


<a id="orge88de45"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2c3ab1e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgbaff717"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org3886df9"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf41ccb1"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org3e3ee83"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgd1d1ad5"></a>

### raku die handlers vs perl5


<a id="org16dd9a7"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org842b522"></a>

## appendix: the usual links


<a id="orga0e4997"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org42afd5e"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org6c27779"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org798ba94"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf9a29e4"></a>

## announcments


<a id="orge7d6530"></a>

### next meeting: June 16th
