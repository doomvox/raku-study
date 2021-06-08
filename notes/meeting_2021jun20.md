- [meeting notes June 20, 2021](#org821dc25)
  - [and now, for something completely different](#org2ec54a2)
    - [note to self: you can't look for raku modules with file system searches.](#orgd0e0d40)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org524ca8a)
    - [oddities from <https://docs.raku.org/type/Any>](#org9ce57f3)
  - [from the last meeting](#orgf6afe05)
    - [junctions](#org4d16d7f)
    - [follow-up: passing junctions as an argument](#org79372c6)
  - [other topic ideas](#org0a92b84)
    - [raku classes as data containers (joe brenner)](#org65d4d84)
    - [unusual argument passing signatures (joe brenner)](#orge798e51)
    - [bruce gray rosettacode](#orgb7e00fa)
    - [how flat is flat](#org6e0d1fb)
    - [go through my perl5 templates: how much is core raku now?](#orgf9f9dff)
    - [raku die handlers vs perl5](#org5e66d07)
    - [raku idioms](#orgda58e7b)
  - [appendix: the usual links](#org5bc72a2)
    - [code examples](#orgad62671)
    - [meeting notes (material from this file)](#org737df32)
    - [SF Perl page, has links to mailing list](#org8649bda)
    - [perl6-users mailing list archive](#org0a1368a)
  - [announcments](#org47322b7)
    - [next meeting: July 11th](#org3e91cb1)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org81de564)


<a id="org821dc25"></a>

# meeting notes June 20, 2021


<a id="org2ec54a2"></a>

## and now, for something completely different


<a id="orgd0e0d40"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org524ca8a"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org9ce57f3"></a>

### oddities from <https://docs.raku.org/type/Any>

1.  deepmap

2.  duckmap

3.  nodemap

4.  flatmap

    1.  DEPRECATION NOTICE: This method is deprecated in 6.d and will be removed in 6.e. Use .map followed by .flat instead.


<a id="orgf6afe05"></a>

## from the last meeting

1.  sorting and comparators documentation


<a id="org4d16d7f"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org79372c6"></a>

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


<a id="org0a92b84"></a>

## other topic ideas


<a id="org65d4d84"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge798e51"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgb7e00fa"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org6e0d1fb"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf9f9dff"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org5e66d07"></a>

### raku die handlers vs perl5


<a id="orgda58e7b"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org5bc72a2"></a>

## appendix: the usual links


<a id="orgad62671"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org737df32"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org8649bda"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org0a1368a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org47322b7"></a>

## announcments


<a id="org3e91cb1"></a>

### next meeting: July 11th


<a id="org81de564"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
