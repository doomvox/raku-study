- [meeting notes May 30, 2021](#org041f810)
  - [secret plan](#orgd1a4875)
    - [bill: weirdness on if/else vs ternary](#orga7ec19c)
    - [bruce gray](#org2b7ba26)
    - [junctions](#orgb847212)
    - [finished that special purpose find/grep script:](#org190f441)
    - ["commutative" pattern matching:](#org715c318)
    - [perl5-porters list: trimming whitespace](#org080c549)
  - [other topic ideas](#org4f2ac25)
    - [raku classes as data containers (joe brenner)](#org380c6f3)
    - [argument passing signatures (joe brenner)](#org2dfc326)
    - [bruce gray rosettacode](#org852d9c2)
    - [super flat](#orgb3f699e)
    - [type system: what is accepted by what](#org5a17723)
    - [go through my perl5 templates: how much is core raku now?](#org7da551c)
    - [raku die handlers vs perl5](#orgbd737de)
    - [raku idioms](#orgaa21d36)
  - [appendix: the usual links](#org60ff685)
    - [code examples](#org09be9dc)
    - [meeting notes (material from this file)](#orgd893944)
    - [SF Perl page, has links to mailing list](#org2b1a534)
    - [perl6-users mailing list archive](#org189f845)
  - [announcments](#org14f55ab)
    - [next meeting: June 16th](#orgf672daa)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgeca3853)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org0e95d19)


<a id="org041f810"></a>

# meeting notes May 30, 2021


<a id="orgd1a4875"></a>

## secret plan


<a id="orga7ec19c"></a>

### bill: weirdness on if/else vs ternary


<a id="org2b7ba26"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators documentation


<a id="orgb847212"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org190f441"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org715c318"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org080c549"></a>

### perl5-porters list: trimming whitespace


<a id="org4f2ac25"></a>

## other topic ideas


<a id="org380c6f3"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2dfc326"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org852d9c2"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgb3f699e"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org5a17723"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org7da551c"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgbd737de"></a>

### raku die handlers vs perl5


<a id="orgaa21d36"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org60ff685"></a>

## appendix: the usual links


<a id="org09be9dc"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgd893944"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org2b1a534"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org189f845"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org14f55ab"></a>

## announcments


<a id="orgf672daa"></a>

### next meeting: June 16th


<a id="orgeca3853"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org0e95d19"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
