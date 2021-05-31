- [meeting notes May 30, 2021](#orgf940775)
  - [secret plan](#org64d93b2)
    - [bill: weirdness on if/else vs ternary](#org4443bf1)
    - [bruce gray](#org0fa986e)
    - [junctions](#org4caf551)
    - [finished that special purpose find/grep script:](#orgf2551d0)
    - ["commutative" pattern matching:](#orge8fd1de)
    - [perl5-porters list: trimming whitespace](#org71dce9a)
  - [other topic ideas](#orgda57ae6)
    - [raku classes as data containers (joe brenner)](#org231ab38)
    - [argument passing signatures (joe brenner)](#org32f71a5)
    - [bruce gray rosettacode](#org65dd2b2)
    - [super flat](#orgd6d64ad)
    - [type system: what is accepted by what](#orgb042377)
    - [go through my perl5 templates: how much is core raku now?](#org17250a8)
    - [raku die handlers vs perl5](#orge035893)
    - [raku idioms](#orgd517965)
  - [appendix: the usual links](#orgf2047e3)
    - [code examples](#org35fcfaf)
    - [meeting notes (material from this file)](#org83d0118)
    - [SF Perl page, has links to mailing list](#org384a70f)
    - [perl6-users mailing list archive](#org46fbd69)
  - [announcments](#org51b104d)
    - [next meeting: June 16th](#org2ca52d8)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org4138bca)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orgf115739)


<a id="orgf940775"></a>

# meeting notes May 30, 2021


<a id="org64d93b2"></a>

## secret plan


<a id="org4443bf1"></a>

### bill: weirdness on if/else vs ternary


<a id="org0fa986e"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>

2.  sorting and comparators documentation


<a id="org4caf551"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgf2551d0"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orge8fd1de"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org71dce9a"></a>

### perl5-porters list: trimming whitespace


<a id="orgda57ae6"></a>

## other topic ideas


<a id="org231ab38"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org32f71a5"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org65dd2b2"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgd6d64ad"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgb042377"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org17250a8"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orge035893"></a>

### raku die handlers vs perl5


<a id="orgd517965"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgf2047e3"></a>

## appendix: the usual links


<a id="org35fcfaf"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org83d0118"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org384a70f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org46fbd69"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org51b104d"></a>

## announcments


<a id="org2ca52d8"></a>

### next meeting: June 16th


<a id="org4138bca"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="orgf115739"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
