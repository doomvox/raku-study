- [meeting notes May 16, 2021](#org8f3b65e)
  - [secret plan](#org92b7ead)
    - [M-o z  /home/doom/lib/emacs/slip-and-slide.el](#org825817f)
    - [junctions](#org1ce81aa)
    - [raku's perl5 regex compatibility (:P5) is limited](#orgd68bc6a)
    - ["commutative" pattern matching:](#org75a9176)
  - [topic ideas](#org0486669)
    - [raku classes as data containers (joe brenner)](#org6fa6b3c)
    - [argument passing signatures (joe brenner)](#orgb8d71df)
    - [find/grep variants in raku revisited (joe brenner)](#org6aaf206)
    - [bruce gray rosettacode](#org9b78bb7)
    - [super flat](#orgd7345cc)
    - [type system: what is accepted by what](#org269bf55)
    - [go through my perl5 templates: how much is core raku now?](#org60ca936)
    - [raku die handlers vs perl5](#org9ba27bb)
    - [raku idioms](#org841b7aa)
  - [appendix: the usual links](#org6f47a1c)
    - [code examples](#orge6736bc)
    - [meeting notes (material from this file)](#orgf2ee0c8)
    - [SF Perl page, has links to mailing list](#orgf710442)
    - [perl6-users mailing list archive](#org9e2d78b)
  - [announcments](#org406710f)
    - [next meeting: June 16th](#org1750635)


<a id="org8f3b65e"></a>

# meeting notes May 16, 2021


<a id="org92b7ead"></a>

## secret plan


<a id="org825817f"></a>

### M-o z  /home/doom/lib/emacs/slip-and-slide.el

| M-o j | jump-to-slide |
| M-o n | jump-to-next  |
| M-o p | jump-to-prev  |


<a id="org1ce81aa"></a>

### junctions

1.  basics (we've talked about them before)

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgd68bc6a"></a>

### raku's perl5 regex compatibility (:P5) is limited

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org75a9176"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org0486669"></a>

## topic ideas


<a id="org6fa6b3c"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgb8d71df"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org6aaf206"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="org9b78bb7"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgd7345cc"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org269bf55"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org60ca936"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org9ba27bb"></a>

### raku die handlers vs perl5


<a id="org841b7aa"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org6f47a1c"></a>

## appendix: the usual links


<a id="orge6736bc"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="orgf2ee0c8"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgf710442"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9e2d78b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org406710f"></a>

## announcments


<a id="org1750635"></a>

### next meeting: June 16th
