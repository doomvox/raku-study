- [meeting notes May 16, 2021](#org4bed6c2)
  - [secret plan](#org36535c4)
    - [M-o z  /home/doom/lib/emacs/slip-and-slide.el](#org7796171)
    - [junctions](#org052f572)
    - [raku's perl5 regex compatibility (:P5) is limited](#org45ee410)
    - ["commutative" pattern matching:](#org4a18eed)
  - [topic ideas](#org06ef068)
    - [raku classes as data containers (joe brenner)](#org3bf5f25)
    - [argument passing signatures (joe brenner)](#orgb46a5fa)
    - [find/grep variants in raku revisited (joe brenner)](#org13c7e2c)
    - [bruce gray rosettacode](#orgfe3e37f)
    - [super flat](#org427cd26)
    - [type system: what is accepted by what](#org22e2f71)
    - [go through my perl5 templates: how much is core raku now?](#orgd1d1136)
    - [raku die handlers vs perl5](#org3dcbf37)
    - [raku idioms](#orgf0b7443)
  - [appendix: the usual links](#org2e1a4b3)
    - [code examples](#org0a22425)
    - [meeting notes (material from this file)](#org7b9b722)
    - [SF Perl page, has links to mailing list](#org2932f7c)
    - [perl6-users mailing list archive](#org0aefe59)
  - [announcments](#org974642d)
    - [next meeting: June 16th](#org095ef97)


<a id="org4bed6c2"></a>

# meeting notes May 16, 2021


<a id="org36535c4"></a>

## secret plan


<a id="org7796171"></a>

### M-o z  /home/doom/lib/emacs/slip-and-slide.el

| M-o j | jump-to-slide |
| M-o n | jump-to-next  |
| M-o p | jump-to-prev  |


<a id="org052f572"></a>

### junctions

1.  basics (we've talked about them before)

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>

2.  an issue I just stumbled over: can you pass a junction as an argument:

    <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>


<a id="org45ee410"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org4a18eed"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org06ef068"></a>

## topic ideas


<a id="org3bf5f25"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgb46a5fa"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org13c7e2c"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orgfe3e37f"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org427cd26"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org22e2f71"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgd1d1136"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org3dcbf37"></a>

### raku die handlers vs perl5


<a id="orgf0b7443"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org2e1a4b3"></a>

## appendix: the usual links


<a id="org0a22425"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org7b9b722"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="org2932f7c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org0aefe59"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org974642d"></a>

## announcments


<a id="org095ef97"></a>

### next meeting: June 16th
