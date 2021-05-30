- [meeting notes May 30, 2021](#org7c7cf24)
  - [secret plan](#org685cf4b)
    - [bill: weirdness on if/else vs ternary](#org74ab7c8)
    - [bruce gray](#org0f794e5)
    - [junctions](#org85ecfe7)
    - [finished that special purpose find/grep script:](#org6c76283)
    - ["commutative" pattern matching:](#org9311b6f)
    - [perl5-porters list: trimming whitespace](#orgb02b3b7)
  - [other topic ideas](#orga0a9187)
    - [raku classes as data containers (joe brenner)](#orgd13e6fc)
    - [argument passing signatures (joe brenner)](#org5cd0f92)
    - [bruce gray rosettacode](#org68bf358)
    - [super flat](#orga8b51f4)
    - [type system: what is accepted by what](#orge7be497)
    - [go through my perl5 templates: how much is core raku now?](#orgadf67df)
    - [raku die handlers vs perl5](#orgf9422eb)
    - [raku idioms](#org5b08670)
  - [appendix: the usual links](#org553f54c)
    - [code examples](#org7a9f59e)
    - [meeting notes (material from this file)](#orgefc0c37)
    - [SF Perl page, has links to mailing list](#org7343f9e)
    - [perl6-users mailing list archive](#org8fb8eae)
  - [announcments](#org399de5c)
    - [next meeting: June 16th](#orgf6f50ea)
    - [mail "subscribe" to documentation@raku.org](#org60f15fc)


<a id="org7c7cf24"></a>

# meeting notes May 30, 2021


<a id="org685cf4b"></a>

## secret plan


<a id="org74ab7c8"></a>

### bill: weirdness on if/else vs ternary


<a id="org0f794e5"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="org85ecfe7"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org6c76283"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org9311b6f"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgb02b3b7"></a>

### perl5-porters list: trimming whitespace


<a id="orga0a9187"></a>

## other topic ideas


<a id="orgd13e6fc"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org5cd0f92"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org68bf358"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orga8b51f4"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orge7be497"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgadf67df"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgf9422eb"></a>

### raku die handlers vs perl5


<a id="org5b08670"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org553f54c"></a>

## appendix: the usual links


<a id="org7a9f59e"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgefc0c37"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org7343f9e"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org8fb8eae"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org399de5c"></a>

## announcments


<a id="orgf6f50ea"></a>

### next meeting: June 16th


<a id="org60f15fc"></a>

### mail "subscribe" to documentation@raku.org

maybe it'll work
