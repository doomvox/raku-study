- [meeting notes June 16, 2021](#org4b4aa96)
  - [secret plan](#org8da68a4)
    - [bill: weirdness on if/else vs ternary](#orgd518f7a)
    - [bruce gray](#org53eac6a)
    - [junctions](#org29cf8ce)
    - [finished that special purpose find/grep script:](#orgcdff4a5)
    - ["commutative" pattern matching:](#orgd4d79e6)
    - [perl5-porters list: trimming whitespace](#orgbb66808)
  - [other topic ideas](#org962f25a)
    - [raku classes as data containers (joe brenner)](#orgd9a957e)
    - [argument passing signatures (joe brenner)](#orgfc38557)
    - [bruce gray rosettacode](#orge7789a1)
    - [super flat](#orge8205c7)
    - [type system: what is accepted by what](#org53981ac)
    - [go through my perl5 templates: how much is core raku now?](#org741ab0c)
    - [raku die handlers vs perl5](#org3bf6296)
    - [raku idioms](#org059a269)
  - [appendix: the usual links](#orgf80b175)
    - [code examples](#orga50a5ae)
    - [meeting notes (material from this file)](#org43a18cd)
    - [SF Perl page, has links to mailing list](#orgaab244b)
    - [perl6-users mailing list archive](#org2fdd738)
  - [announcments](#orgffd2c2d)
    - [next meeting: June 16th](#org1d1446c)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org3f85dd3)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org30d9bac)


<a id="org4b4aa96"></a>

# meeting notes June 16, 2021


<a id="org8da68a4"></a>

## secret plan


<a id="orgd518f7a"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org53eac6a"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org29cf8ce"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgcdff4a5"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgd4d79e6"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgbb66808"></a>

### perl5-porters list: trimming whitespace


<a id="org962f25a"></a>

## other topic ideas


<a id="orgd9a957e"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgfc38557"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orge7789a1"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge8205c7"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org53981ac"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org741ab0c"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org3bf6296"></a>

### raku die handlers vs perl5


<a id="org059a269"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgf80b175"></a>

## appendix: the usual links


<a id="orga50a5ae"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org43a18cd"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgaab244b"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org2fdd738"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgffd2c2d"></a>

## announcments


<a id="org1d1446c"></a>

### next meeting: June 16th


<a id="org3f85dd3"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org30d9bac"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
