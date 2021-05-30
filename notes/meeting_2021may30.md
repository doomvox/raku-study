- [meeting notes May 16, 2021](#org0c9c36c)
  - [secret plan](#orgc6b1dd1)
    - [M-o z  /home/doom/lib/emacs/slip-and-slide.el](#orga23739f)
    - ["commutative" pattern matching:](#org8bd84b9)
  - [topic ideas](#org73c2286)
    - [raku classes as data containers (joe brenner)](#org62ab72d)
    - [argument passing signatures (joe brenner)](#org1475c89)
    - [find/grep variants in raku revisited (joe brenner)](#org82a04e4)
    - [bruce gray rosettacode](#orgc8849a2)
    - [super flat](#org81ff524)
    - [type system: what is accepted by what](#orgd2129c5)
    - [go through my perl5 templates: how much is core raku now?](#org62cc796)
    - [raku die handlers vs perl5](#orgc67492e)
    - [raku idioms](#org9a184a7)
  - [appendix: the usual links](#org365d515)
    - [code examples](#org59452c6)
    - [meeting notes (material from this file)](#org24a1815)
    - [SF Perl page, has links to mailing list](#orgb8f6cf7)
    - [perl6-users mailing list archive](#orga6dfa9d)
  - [announcments](#orga3d63d5)
    - [next meeting: June 16th](#orgd93198e)


<a id="org0c9c36c"></a>

# meeting notes May 16, 2021


<a id="orgc6b1dd1"></a>

## secret plan


<a id="orga23739f"></a>

### M-o z  /home/doom/lib/emacs/slip-and-slide.el

| M-o j | jump-to-slide |
| M-o n | jump-to-next  |
| M-o p | jump-to-prev  |


<a id="org8bd84b9"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org73c2286"></a>

## topic ideas


<a id="org62ab72d"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org1475c89"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org82a04e4"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgc8849a2"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org81ff524"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgd2129c5"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org62cc796"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgc67492e"></a>

### raku die handlers vs perl5


<a id="org9a184a7"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org365d515"></a>

## appendix: the usual links


<a id="org59452c6"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org24a1815"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgb8f6cf7"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orga6dfa9d"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga3d63d5"></a>

## announcments


<a id="orgd93198e"></a>

### next meeting: June 16th
