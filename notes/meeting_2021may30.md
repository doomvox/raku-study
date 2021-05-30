- [meeting notes May 30, 2021](#org19dc06c)
  - [secret plan](#orgd9f3035)
    - [bill: weirdness on if/else vs ternary](#orgae0b716)
    - [bruce gray](#org96a40e7)
    - [junctions](#orgc0e3086)
    - [finished that special purpose find/grep script:](#orga46e506)
    - ["commutative" pattern matching:](#org6ad1c96)
    - [perl5-porters list: trimming whitespace](#org38d135b)
  - [other topic ideas](#org246ca2a)
    - [raku classes as data containers (joe brenner)](#org96fb59c)
    - [argument passing signatures (joe brenner)](#org422000e)
    - [bruce gray rosettacode](#org100040e)
    - [super flat](#org9eb7784)
    - [type system: what is accepted by what](#org6e1072e)
    - [go through my perl5 templates: how much is core raku now?](#orga96feb9)
    - [raku die handlers vs perl5](#org7e428bf)
    - [raku idioms](#org37dce77)
  - [appendix: the usual links](#org0c4a597)
    - [code examples](#org2b48009)
    - [meeting notes (material from this file)](#org54392e4)
    - [SF Perl page, has links to mailing list](#orgbabf9d8)
    - [perl6-users mailing list archive](#org419f59f)
  - [announcments](#org6fde5bb)
    - [next meeting: June 16th](#org00bcaed)
    - [mail "subscribe" to documentation@raku.org](#org56a7156)


<a id="org19dc06c"></a>

# meeting notes May 30, 2021


<a id="orgd9f3035"></a>

## secret plan


<a id="orgae0b716"></a>

### bill: weirdness on if/else vs ternary


<a id="org96a40e7"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="orgc0e3086"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orga46e506"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org6ad1c96"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org38d135b"></a>

### perl5-porters list: trimming whitespace


<a id="org246ca2a"></a>

## other topic ideas


<a id="org96fb59c"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org422000e"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org100040e"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org9eb7784"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org6e1072e"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orga96feb9"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org7e428bf"></a>

### raku die handlers vs perl5


<a id="org37dce77"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org0c4a597"></a>

## appendix: the usual links


<a id="org2b48009"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org54392e4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgbabf9d8"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org419f59f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org6fde5bb"></a>

## announcments


<a id="org00bcaed"></a>

### next meeting: June 16th


<a id="org56a7156"></a>

### mail "subscribe" to documentation@raku.org
