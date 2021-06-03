- [meeting notes June 20, 2021](#orga1614b1)
  - [and now, for something completely different](#org6e27e79)
    - [note to self: you can't look for raku modules with file system searches.](#org097e513)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org2ad3103)
  - [from the last meeting](#org3df202b)
    - [junctions](#org40200e9)
    - [follow-up: passing junctions as an argument](#org1065bd0)
  - [other topic ideas](#org130685e)
    - [raku classes as data containers (joe brenner)](#org1e065b4)
    - [unusual argument passing signatures (joe brenner)](#org24e91e8)
    - [bruce gray rosettacode](#org015e24c)
    - [how flat is flat](#org5ccc282)
    - [go through my perl5 templates: how much is core raku now?](#orgfec23d5)
    - [raku die handlers vs perl5](#orgd2ccf9d)
    - [raku idioms](#orgb6eaac9)
  - [appendix: the usual links](#orgaf8439f)
    - [code examples](#org93fd1c5)
    - [meeting notes (material from this file)](#org0eb3230)
    - [SF Perl page, has links to mailing list](#org6e30bbe)
    - [perl6-users mailing list archive](#org61f46b1)
  - [announcments](#orga90b82a)
    - [next meeting: July 11th](#orgeeff8ff)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org89aa83b)


<a id="orga1614b1"></a>

# meeting notes June 20, 2021


<a id="org6e27e79"></a>

## and now, for something completely different


<a id="org097e513"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org2ad3103"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org3df202b"></a>

## from the last meeting

1.  sorting and comparators documentation


<a id="org40200e9"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org1065bd0"></a>

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


<a id="org130685e"></a>

## other topic ideas


<a id="org1e065b4"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org24e91e8"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org015e24c"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5ccc282"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgfec23d5"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgd2ccf9d"></a>

### raku die handlers vs perl5


<a id="orgb6eaac9"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgaf8439f"></a>

## appendix: the usual links


<a id="org93fd1c5"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org0eb3230"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org6e30bbe"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org61f46b1"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga90b82a"></a>

## announcments


<a id="orgeeff8ff"></a>

### next meeting: July 11th


<a id="org89aa83b"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
