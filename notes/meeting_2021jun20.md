- [meeting notes June 20, 2021](#org3147578)
  - [and now, for something completely different](#orge40612b)
    - [note to self: you can't look for raku modules with file system searches.](#org4331476)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org8bae603)
    - [oddities from <https://docs.raku.org/type/Any>](#orgec6a1bf)
  - [from the last meeting](#org4c2123b)
    - [junctions](#org0961d09)
    - [follow-up: passing junctions as an argument](#orge58bc71)
  - [other topic ideas](#org08cb955)
    - [raku classes as data containers (joe brenner)](#org174b835)
    - [unusual argument passing signatures (joe brenner)](#orgc4be7af)
    - [bruce gray rosettacode](#org17503c1)
    - [how flat is flat](#orgf20e9b4)
    - [go through my perl5 templates: how much is core raku now?](#orgde98171)
    - [raku die handlers vs perl5](#org6aa75a8)
    - [raku idioms](#org095fa8f)
  - [appendix: the usual links](#org7017194)
    - [code examples](#orgc43b0a2)
    - [meeting notes (material from this file)](#orgf3e8311)
    - [SF Perl page, has links to mailing list](#org740507c)
    - [perl6-users mailing list archive](#org7dff90b)
  - [announcments](#orgf65df96)
    - [next meeting: July 11th](#org6abfdda)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org7384787)


<a id="org3147578"></a>

# meeting notes June 20, 2021


<a id="orge40612b"></a>

## and now, for something completely different


<a id="org4331476"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org8bae603"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgec6a1bf"></a>

### oddities from <https://docs.raku.org/type/Any>

1.  deepmap

2.  duckmap


<a id="org4c2123b"></a>

## from the last meeting

1.  sorting and comparators documentation


<a id="org0961d09"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="orge58bc71"></a>

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


<a id="org08cb955"></a>

## other topic ideas


<a id="org174b835"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgc4be7af"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org17503c1"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgf20e9b4"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgde98171"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org6aa75a8"></a>

### raku die handlers vs perl5


<a id="org095fa8f"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org7017194"></a>

## appendix: the usual links


<a id="orgc43b0a2"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgf3e8311"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org740507c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org7dff90b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf65df96"></a>

## announcments


<a id="org6abfdda"></a>

### next meeting: July 11th


<a id="org7384787"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
