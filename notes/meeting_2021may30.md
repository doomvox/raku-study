- [meeting notes May 30, 2021](#org9357678)
  - [secret plan](#org2c0e544)
    - [bill: weirdness on if/else vs ternary](#orgbf17115)
    - [bruce gray](#org87cb43a)
    - [junctions](#org72d129b)
    - [finished that special purpose find/grep script:](#org6901608)
    - ["commutative" pattern matching:](#orgd427a21)
    - [perl5-porters list: trimming whitespace](#orgf0d358b)
  - [other topic ideas](#orgfcf4151)
    - [raku classes as data containers (joe brenner)](#orga091e75)
    - [argument passing signatures (joe brenner)](#org0f1b232)
    - [bruce gray rosettacode](#org80f9065)
    - [super flat](#org018d076)
    - [type system: what is accepted by what](#org0df1d3b)
    - [go through my perl5 templates: how much is core raku now?](#orgae456ff)
    - [raku die handlers vs perl5](#org8157855)
    - [raku idioms](#org3a4868b)
  - [appendix: the usual links](#org8b1b8ac)
    - [code examples](#orge9125f5)
    - [meeting notes (material from this file)](#org78bfd3f)
    - [SF Perl page, has links to mailing list](#org6102dc5)
    - [perl6-users mailing list archive](#org253aad2)
  - [announcments](#org17b3d3f)
    - [next meeting: June 20th, Sunday, right after the conference in the clouds (um)](#org9518883)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org3b3e9bd)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org523400a)


<a id="org9357678"></a>

# meeting notes May 30, 2021


<a id="org2c0e544"></a>

## secret plan


<a id="orgbf17115"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org87cb43a"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org72d129b"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org6901608"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgd427a21"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgf0d358b"></a>

### perl5-porters list: trimming whitespace


<a id="orgfcf4151"></a>

## other topic ideas


<a id="orga091e75"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org0f1b232"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org80f9065"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org018d076"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org0df1d3b"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgae456ff"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org8157855"></a>

### raku die handlers vs perl5


<a id="org3a4868b"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org8b1b8ac"></a>

## appendix: the usual links


<a id="orge9125f5"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org78bfd3f"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org6102dc5"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org253aad2"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org17b3d3f"></a>

## announcments


<a id="org9518883"></a>

### next meeting: June 20th, Sunday, right after the conference in the clouds (um)


<a id="org3b3e9bd"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org523400a"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
