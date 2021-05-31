- [meeting notes May 30, 2021](#org9a7d679)
  - [secret plan](#orgfdbf4ae)
    - [bill: weirdness on if/else vs ternary](#org0f4098f)
    - [bruce gray](#org3c874fe)
    - [junctions](#org04f78b3)
    - [finished that special purpose find/grep script:](#orgbd9d2f4)
    - ["commutative" pattern matching:](#orgd90625e)
    - [perl5-porters list: trimming whitespace](#orge723d81)
  - [other topic ideas](#org8744508)
    - [raku classes as data containers (joe brenner)](#org9df35a0)
    - [argument passing signatures (joe brenner)](#org6ecb15a)
    - [bruce gray rosettacode](#org9cd7f5a)
    - [super flat](#org57e8e65)
    - [type system: what is accepted by what](#orgb1d51cc)
    - [go through my perl5 templates: how much is core raku now?](#org15d7f69)
    - [raku die handlers vs perl5](#orgdde406f)
    - [raku idioms](#orge878760)
  - [appendix: the usual links](#org4128e2f)
    - [code examples](#orgf7cafa5)
    - [meeting notes (material from this file)](#org60582f6)
    - [SF Perl page, has links to mailing list](#orgf84cd0c)
    - [perl6-users mailing list archive](#org9ddbd3b)
  - [announcments](#orgd378ff3)
    - [next meeting: June 16th](#org0531762)
    - [mail "SUBSCRIBE" to documentation@raku.org](#org527395a)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org104a805)


<a id="org9a7d679"></a>

# meeting notes May 30, 2021


<a id="orgfdbf4ae"></a>

## secret plan


<a id="org0f4098f"></a>

### bill: weirdness on if/else vs ternary


<a id="org3c874fe"></a>

### bruce gray

1.  rosetta code

2.  sorting and comparators


<a id="org04f78b3"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgbd9d2f4"></a>

### finished that special purpose find/grep script:

/home/doom/End/Cave/DoomfileTools/bin/df<sub>grep.raku</sub>

1.  issue I just stumbled over: can you pass a junction as an argument (<:Find> exclude):

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>

2.  importing perl5 defintions: ended up shelling out to a perl5 one-liner

3.  raku's perl5 regex compatibility (:P5) is limited

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="orgd90625e"></a>

### "commutative" pattern matching:

1.  bruce gray tried to answer a (murky) question:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9958.html>

2.  this **might** be related to my attempts at matching multiple patterns independant of order

    1.  I was trying to use regex conjunctions
    
        1.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/05/msg8512.html>
    
    2.  a good solution from peter penchev: multiple overlapping zero-width "before" matches


<a id="orge723d81"></a>

### perl5-porters list: trimming whitespace


<a id="org8744508"></a>

## other topic ideas


<a id="org9df35a0"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org6ecb15a"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org9cd7f5a"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org57e8e65"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgb1d51cc"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="org15d7f69"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgdde406f"></a>

### raku die handlers vs perl5


<a id="orge878760"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org4128e2f"></a>

## appendix: the usual links


<a id="orgf7cafa5"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may30>


<a id="org60582f6"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may30.md>


<a id="orgf84cd0c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org9ddbd3b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgd378ff3"></a>

## announcments


<a id="org0531762"></a>

### next meeting: June 16th


<a id="org527395a"></a>

### mail "SUBSCRIBE" to documentation@raku.org

1.  maybe it'll work


<a id="org104a805"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)
