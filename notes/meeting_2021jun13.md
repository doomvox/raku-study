- [meeting notes June 20, 2021](#org0632a31)
  - [and now, for something completely different](#org367a7c1)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org49f60cf)
  - [minutes of last meeting](#org92f1193)
    - [junctions](#orgc34a768)
    - [follow-up: trying to pass a junction as an argument](#orgdacb557)
    - ["commutative" pattern matching:](#orgef922e4)
    - [perl5-porters list: trimming whitespace](#org5d73bf5)
  - [other topic ideas](#org8542f2b)
    - [raku classes as data containers (joe brenner)](#orge42688a)
    - [argument passing signatures (joe brenner)](#org4ab4f4d)
    - [bruce gray rosettacode](#org468a72e)
    - [super flat](#orgb405648)
    - [type system: what is accepted by what](#org379cd66)
    - [go through my perl5 templates: how much is core raku now?](#orge9ace0c)
    - [raku die handlers vs perl5](#orgb8ccef8)
    - [raku idioms](#org940abd9)
  - [appendix: the usual links](#orge7b4495)
    - [code examples](#org4bcea91)
    - [meeting notes (material from this file)](#org09a5620)
    - [SF Perl page, has links to mailing list](#org48ba5e3)
    - [perl6-users mailing list archive](#org63cb87f)
  - [announcments](#org63edd00)
    - [next meeting: July 11th](#org49bd7b7)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orgcd88101)


<a id="org0632a31"></a>

# meeting notes June 20, 2021


<a id="org367a7c1"></a>

## and now, for something completely different


<a id="org49f60cf"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org92f1193"></a>

## minutes of last meeting

1.  sorting and comparators documentation


<a id="orgc34a768"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgdacb557"></a>

### follow-up: trying to pass a junction as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  TODO (( link from mailing list ))

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgef922e4"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="org5d73bf5"></a>

### perl5-porters list: trimming whitespace


<a id="org8542f2b"></a>

## other topic ideas


<a id="orge42688a"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4ab4f4d"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org468a72e"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgb405648"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org379cd66"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orge9ace0c"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgb8ccef8"></a>

### raku die handlers vs perl5


<a id="org940abd9"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orge7b4495"></a>

## appendix: the usual links


<a id="org4bcea91"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org09a5620"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org48ba5e3"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org63cb87f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org63edd00"></a>

## announcments


<a id="org49bd7b7"></a>

### next meeting: July 11th


<a id="orgcd88101"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
