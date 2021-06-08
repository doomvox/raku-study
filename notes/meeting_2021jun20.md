- [meeting notes June 20, 2021](#org82bf934)
  - [and now, for something completely different](#org601eac1)
    - [note to self: you can't look for raku modules with file system searches.](#org3e3909e)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orgb61f16c)
  - [from the last meeting](#orgf72564e)
    - [junctions](#org90bd2aa)
    - [follow-up: passing junctions as an argument](#orgb2b859d)
  - [other topic ideas](#org9b4c07e)
    - [raku classes as data containers (joe brenner)](#org4c1e86a)
    - [unusual argument passing signatures (joe brenner)](#orgace39a8)
    - [bruce gray rosettacode](#org1e65930)
    - [how flat is flat](#org59c3a41)
    - [go through my perl5 templates: how much is core raku now?](#orgf33d721)
    - [raku die handlers vs perl5](#org472355d)
    - [raku idioms](#org97568ae)
  - [appendix: the usual links](#org1abb944)
    - [code examples](#orgb697424)
    - [meeting notes (material from this file)](#org49967d6)
    - [SF Perl page, has links to mailing list](#org4bdd718)
    - [perl6-users mailing list archive](#org4d1bfbe)
  - [announcments](#orgba63800)
    - [next meeting: July 11th](#org3981a56)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#orga802478)


<a id="org82bf934"></a>

# meeting notes June 20, 2021


<a id="org601eac1"></a>

## and now, for something completely different


<a id="org3e3909e"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orgb61f16c"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgf72564e"></a>

## from the last meeting

1.  sorting and comparators documentation


<a id="org90bd2aa"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orgb2b859d"></a>

### follow-up: passing junctions as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>
    
    3.  is this the canonical <:Find> repo?  (brian d foy has one, too, but it looks stale)
    
        <https://github.com/tadzik/File-Find>
        
        1.  TODO open issue / submit pull request to Mu the name and exclude arguments

2.  Ralph Mellor conceeds junction "precedence" can be confusing&#x2026;

    1.  TODO (( link from mailing list ))

3.  TODO opened/found issue: raku's perl5 regex compatibility (:P5) can't handle (?<sup>i</sup>:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org9b4c07e"></a>

## other topic ideas


<a id="org4c1e86a"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgace39a8"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org1e65930"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org59c3a41"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf33d721"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org472355d"></a>

### raku die handlers vs perl5


<a id="org97568ae"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org1abb944"></a>

## appendix: the usual links


<a id="orgb697424"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org49967d6"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org4bdd718"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org4d1bfbe"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgba63800"></a>

## announcments


<a id="org3981a56"></a>

### next meeting: July 11th


<a id="orga802478"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
