- [meeting notes May 16, 2021](#orgdb39d80)
  - [linkage](#org5755639)
    - [<http://sf.pm.org>](#orgd0e570d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>](#orgea187ff)
  - [secret plan](#org318c893)
    - [junctions](#org63efe33)
    - [finished that special purpose find/grep script:](#org9c24d3a)
    - ["commutative" pattern matching:](#orge28d413)
    - [perl5-porters list: trimming whitespace](#org3515760)
  - [other topic ideas](#org531fafe)
    - [raku classes as data containers (joe brenner)](#org2c4e872)
    - [argument passing signatures (joe brenner)](#orga4aa53e)
    - [bruce gray rosettacode](#orgf90b52d)
    - [super flat](#org0fff18e)
    - [type system: what is accepted by what](#orge54e480)
    - [go through my perl5 templates: how much is core raku now?](#orgbc4f8ad)
    - [raku die handlers vs perl5](#org05a6477)
    - [raku idioms](#org11a3e31)
  - [appendix: the usual links](#org6dbaa3c)
    - [code examples](#org164226f)
    - [meeting notes (material from this file)](#org38afb9d)
    - [SF Perl page, has links to mailing list](#orge47d5d6)
    - [perl6-users mailing list archive](#org7bdae73)
  - [announcments](#orgbdf0369)
    - [next meeting: June 16th](#org1fa2cc5)


<a id="orgdb39d80"></a>

# meeting notes May 16, 2021


<a id="org5755639"></a>

## linkage


<a id="orgd0e570d"></a>

### <http://sf.pm.org>


<a id="orgea187ff"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org318c893"></a>

## secret plan


<a id="org63efe33"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org9c24d3a"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orge28d413"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org3515760"></a>

### perl5-porters list: trimming whitespace


<a id="org531fafe"></a>

## other topic ideas


<a id="org2c4e872"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orga4aa53e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgf90b52d"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org0fff18e"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orge54e480"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgbc4f8ad"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org05a6477"></a>

### raku die handlers vs perl5


<a id="org11a3e31"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org6dbaa3c"></a>

## appendix: the usual links


<a id="org164226f"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org38afb9d"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orge47d5d6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org7bdae73"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgbdf0369"></a>

## announcments


<a id="org1fa2cc5"></a>

### next meeting: June 16th
