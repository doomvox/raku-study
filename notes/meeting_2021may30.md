- [meeting notes May 30, 2021](#org17c369b)
  - [secret plan](#org25da7c6)
    - [bill: weirdness on if/else vs ternary](#orgbbadba3)
    - [bruce gray](#orga8e5cf9)
    - [junctions](#orgb97994b)
    - [finished that special purpose find/grep script:](#org2edfae7)
    - ["commutative" pattern matching:](#org2da1c1d)
    - [perl5-porters list: trimming whitespace](#org83e4492)
  - [other topic ideas](#org7940b21)
    - [raku classes as data containers (joe brenner)](#org601169e)
    - [argument passing signatures (joe brenner)](#org66f8dda)
    - [bruce gray rosettacode](#orgf070888)
    - [super flat](#org49d9986)
    - [type system: what is accepted by what](#orga941d4f)
    - [go through my perl5 templates: how much is core raku now?](#org27cf7c9)
    - [raku die handlers vs perl5](#org9becef9)
    - [raku idioms](#org5f6f6ad)
  - [appendix: the usual links](#org002219c)
    - [code examples](#orgb0b0eb2)
    - [meeting notes (material from this file)](#org83c660b)
    - [SF Perl page, has links to mailing list](#org82d3843)
    - [perl6-users mailing list archive](#org8670ace)
  - [announcments](#org01d272f)
    - [next meeting: June 16th](#orga6ef983)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org86fd583)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orgd985c5e)


<a id="org17c369b"></a>

# meeting notes May 30, 2021


<a id="org25da7c6"></a>

## secret plan


<a id="orgbbadba3"></a>

### bill: weirdness on if/else vs ternary


<a id="orga8e5cf9"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="orgb97994b"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org2edfae7"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org2da1c1d"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org83e4492"></a>

### perl5-porters list: trimming whitespace


<a id="org7940b21"></a>

## other topic ideas


<a id="org601169e"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org66f8dda"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgf070888"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org49d9986"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orga941d4f"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org27cf7c9"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org9becef9"></a>

### raku die handlers vs perl5


<a id="org5f6f6ad"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org002219c"></a>

## appendix: the usual links


<a id="orgb0b0eb2"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org83c660b"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org82d3843"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8670ace"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org01d272f"></a>

## announcments


<a id="orga6ef983"></a>

### next meeting: June 16th


<a id="org86fd583"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="orgd985c5e"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

june 8-10th, $10
