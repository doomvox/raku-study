- [meeting notes May 16, 2021](#org516dfe2)
  - [secret plan](#orgb5f8e39)
    - [M-o z  /home/doom/lib/emacs/slip-and-slide.el](#org480de3e)
    - ["commutative" pattern matching:](#org4a1e4e1)
  - [topic ideas](#orgd79f645)
    - [raku classes as data containers (joe brenner)](#org722d760)
    - [argument passing signatures (joe brenner)](#orgba2c32d)
    - [find/grep variants in raku revisited (joe brenner)](#org715f893)
    - [bruce gray rosettacode](#orga7a8510)
    - [super flat](#org14af153)
    - [type system: what is accepted by what](#orgc1e1800)
    - [go through my perl5 templates: how much is core raku now?](#orgf689097)
    - [raku die handlers vs perl5](#orga951c48)
    - [raku idioms](#orgdcdcf85)
  - [appendix: the usual links](#org03fd274)
    - [code examples](#org7925406)
    - [meeting notes (material from this file)](#org077eb6e)
    - [SF Perl page, has links to mailing list](#orga11d1e4)
    - [perl6-users mailing list archive](#org7241df2)
  - [announcments](#orge43e240)
    - [next meeting: June 16th](#orgd01636a)


<a id="org516dfe2"></a>

# meeting notes May 16, 2021


<a id="orgb5f8e39"></a>

## secret plan


<a id="org480de3e"></a>

### M-o z  /home/doom/lib/emacs/slip-and-slide.el

| M-o j | jump-to-slide |
| M-o n | jump-to-next  |
| M-o p | jump-to-prev  |


<a id="org4a1e4e1"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orgd79f645"></a>

## topic ideas


<a id="org722d760"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgba2c32d"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org715f893"></a>

### find/grep variants in raku revisited (joe brenner)

1.  an issue with getting <:Find> to accept a junction for exclude

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>


<a id="orga7a8510"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org14af153"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgc1e1800"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf689097"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orga951c48"></a>

### raku die handlers vs perl5


<a id="orgdcdcf85"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org03fd274"></a>

## appendix: the usual links


<a id="org7925406"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org077eb6e"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orga11d1e4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org7241df2"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orge43e240"></a>

## announcments


<a id="orgd01636a"></a>

### next meeting: June 16th
