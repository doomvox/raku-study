- [meeting notes June 16, 2021](#org964a0ef)
  - [secret plan](#org1be9ded)
    - [bill: weirdness on if/else vs ternary](#orge1cd54e)
    - [bruce gray](#org32eb8f3)
    - [junctions](#org5658da3)
    - [finished that special purpose find/grep script:](#orgbc331be)
    - ["commutative" pattern matching:](#org44de0bb)
    - [perl5-porters list: trimming whitespace](#orgfbdddad)
  - [other topic ideas](#org10e6488)
    - [raku classes as data containers (joe brenner)](#orge9a48aa)
    - [argument passing signatures (joe brenner)](#orgb857ea4)
    - [bruce gray rosettacode](#org27a5ce9)
    - [super flat](#org8da8b02)
    - [type system: what is accepted by what](#org27ac416)
    - [go through my perl5 templates: how much is core raku now?](#orgf57c779)
    - [raku die handlers vs perl5](#org914c7aa)
    - [raku idioms](#org3521f0f)
  - [appendix: the usual links](#orgc2b7d77)
    - [code examples](#org1e32e0c)
    - [meeting notes (material from this file)](#orgeed5f80)
    - [SF Perl page, has links to mailing list](#org63b7931)
    - [perl6-users mailing list archive](#orgc3a0e8b)
  - [announcments](#org11cf2b8)
    - [next meeting: June 16th](#org183442a)
    - [mail "SUBSCRIBE" to documentation@raku.org](#orgdc3669d)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orgf431516)


<a id="org964a0ef"></a>

# meeting notes June 16, 2021


<a id="org1be9ded"></a>

## secret plan


<a id="orge1cd54e"></a>

### bill: weirdness on if/else vs ternary

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/bills_experiments_if_vs_ternary.raku>


<a id="org32eb8f3"></a>

### bruce gray

1.  rosetta code

    1.  <http://rosettacode.org/wiki/Sum_of_first_n_cubes>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/crossproduct_operator_slash_x_etc.raku>

2.  sorting and comparators documentation


<a id="org5658da3"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgbc331be"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org44de0bb"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgfbdddad"></a>

### perl5-porters list: trimming whitespace


<a id="org10e6488"></a>

## other topic ideas


<a id="orge9a48aa"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgb857ea4"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org27a5ce9"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org8da8b02"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org27ac416"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf57c779"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org914c7aa"></a>

### raku die handlers vs perl5


<a id="org3521f0f"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgc2b7d77"></a>

## appendix: the usual links


<a id="org1e32e0c"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgeed5f80"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org63b7931"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgc3a0e8b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org11cf2b8"></a>

## announcments


<a id="org183442a"></a>

### next meeting: June 16th


<a id="orgdc3669d"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="orgf431516"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
