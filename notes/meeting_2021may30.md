- [meeting notes May 30, 2021](#orgf696181)
  - [secret plan](#orgbe52b81)
    - [bill: weirdness on if/else vs ternary](#org0f13f3b)
    - [bruce gray](#orgd03617b)
    - [junctions](#org8e5a40f)
    - [finished that special purpose find/grep script:](#org529ccf4)
    - ["commutative" pattern matching:](#org9361e93)
    - [perl5-porters list: trimming whitespace](#orgd27d37a)
  - [other topic ideas](#orgb9fc777)
    - [raku classes as data containers (joe brenner)](#org7348e4d)
    - [argument passing signatures (joe brenner)](#org9aef558)
    - [bruce gray rosettacode](#orgc7f4ba7)
    - [super flat](#orgc093820)
    - [type system: what is accepted by what](#orgf61ef83)
    - [go through my perl5 templates: how much is core raku now?](#orga75fa38)
    - [raku die handlers vs perl5](#orgbcf6c24)
    - [raku idioms](#org1bd9419)
  - [appendix: the usual links](#org28f7e74)
    - [code examples](#org1801156)
    - [meeting notes (material from this file)](#orgca8abfa)
    - [SF Perl page, has links to mailing list](#orgfd87817)
    - [perl6-users mailing list archive](#org86e0fbd)
  - [announcments](#org4f7e006)
    - [next meeting: June 16th](#orgc0d5095)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgb62ee0a)


<a id="orgf696181"></a>

# meeting notes May 30, 2021


<a id="orgbe52b81"></a>

## secret plan


<a id="org0f13f3b"></a>

### bill: weirdness on if/else vs ternary


<a id="orgd03617b"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="org8e5a40f"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org529ccf4"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org9361e93"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgd27d37a"></a>

### perl5-porters list: trimming whitespace


<a id="orgb9fc777"></a>

## other topic ideas


<a id="org7348e4d"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org9aef558"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgc7f4ba7"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgc093820"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf61ef83"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orga75fa38"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgbcf6c24"></a>

### raku die handlers vs perl5


<a id="org1bd9419"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org28f7e74"></a>

## appendix: the usual links


<a id="org1801156"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgca8abfa"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgfd87817"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org86e0fbd"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org4f7e006"></a>

## announcments


<a id="orgc0d5095"></a>

### next meeting: June 16th


<a id="orgb62ee0a"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work
