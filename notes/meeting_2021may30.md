- [meeting notes May 16, 2021](#org4dacc0d)
  - [linkage](#orgbcd1b84)
    - [<http://sf.pm.org>](#orgec83299)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orge6a50bb)
  - [secret plan](#org66adbc7)
    - [junctions](#org2d2d20e)
    - [finished that special purpose find/grep script:](#orgadbc2ff)
    - ["commutative" pattern matching:](#org742f9e7)
  - [topic ideas](#org5747f23)
    - [raku classes as data containers (joe brenner)](#org29ddc30)
    - [argument passing signatures (joe brenner)](#orga95feee)
    - [find/grep variants in raku revisited (joe brenner)](#org5c6c1ef)
    - [bruce gray rosettacode](#org6bdfee8)
    - [super flat](#orgdac93bd)
    - [type system: what is accepted by what](#org41b63fa)
    - [go through my perl5 templates: how much is core raku now?](#org54f5fd1)
    - [raku die handlers vs perl5](#org9daebab)
    - [raku idioms](#org159f6c9)
  - [appendix: the usual links](#orgf9178ab)
    - [code examples](#org1e502da)
    - [meeting notes (material from this file)](#org628cae8)
    - [SF Perl page, has links to mailing list](#orgd1ea2e3)
    - [perl6-users mailing list archive](#org09d97a3)
  - [announcments](#org9380b48)
    - [next meeting: June 16th](#org75e046e)


<a id="org4dacc0d"></a>

# meeting notes May 16, 2021


<a id="orgbcd1b84"></a>

## linkage


<a id="orgec83299"></a>

### <http://sf.pm.org>


<a id="orge6a50bb"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org66adbc7"></a>

## secret plan


<a id="org2d2d20e"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="orgadbc2ff"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org742f9e7"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org5747f23"></a>

## topic ideas


<a id="org29ddc30"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga95feee"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org5c6c1ef"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org6bdfee8"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgdac93bd"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org41b63fa"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org54f5fd1"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org9daebab"></a>

### raku die handlers vs perl5


<a id="org159f6c9"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgf9178ab"></a>

## appendix: the usual links


<a id="org1e502da"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org628cae8"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgd1ea2e3"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org09d97a3"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org9380b48"></a>

## announcments


<a id="org75e046e"></a>

### next meeting: June 16th
