- [meeting notes May 30, 2021](#org4c63c77)
  - [secret plan](#org53cf1d4)
    - [bill: weirdness on if/else vs ternary](#org9a825ac)
    - [bruce gray](#org09a2d7b)
    - [junctions](#orge3b0783)
    - [finished that special purpose find/grep script:](#org63b6c42)
    - ["commutative" pattern matching:](#orgb14226c)
    - [perl5-porters list: trimming whitespace](#orged30209)
  - [other topic ideas](#org0fd7764)
    - [raku classes as data containers (joe brenner)](#orgce5b1aa)
    - [argument passing signatures (joe brenner)](#org4fc13f5)
    - [bruce gray rosettacode](#org69552cb)
    - [super flat](#org702b6bb)
    - [type system: what is accepted by what](#org94f9080)
    - [go through my perl5 templates: how much is core raku now?](#org6a23dd6)
    - [raku die handlers vs perl5](#org1607676)
    - [raku idioms](#org6b76966)
  - [appendix: the usual links](#org9a86d4d)
    - [code examples](#orgd6a067a)
    - [meeting notes (material from this file)](#org2d769d4)
    - [SF Perl page, has links to mailing list](#orge51943d)
    - [perl6-users mailing list archive](#orgdfee5f3)
  - [announcments](#org9e37ada)
    - [next meeting: June 16th](#orgadb06d8)
    - [mail "subscribe" to documentation@raku.org](#org5eb3b78)


<a id="org4c63c77"></a>

# meeting notes May 30, 2021


<a id="org53cf1d4"></a>

## secret plan


<a id="org9a825ac"></a>

### bill: weirdness on if/else vs ternary


<a id="org09a2d7b"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="orge3b0783"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org63b6c42"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgb14226c"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orged30209"></a>

### perl5-porters list: trimming whitespace


<a id="org0fd7764"></a>

## other topic ideas


<a id="orgce5b1aa"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4fc13f5"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org69552cb"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org702b6bb"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org94f9080"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org6a23dd6"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org1607676"></a>

### raku die handlers vs perl5


<a id="org6b76966"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org9a86d4d"></a>

## appendix: the usual links


<a id="orgd6a067a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org2d769d4"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orge51943d"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgdfee5f3"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org9e37ada"></a>

## announcments


<a id="orgadb06d8"></a>

### next meeting: June 16th


<a id="org5eb3b78"></a>

### mail "subscribe" to documentation@raku.org
