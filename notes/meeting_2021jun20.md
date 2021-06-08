- [meeting notes June 20, 2021](#org222f064)
  - [and now, for something completely different](#org04eca9e)
    - [note to self: you can't look for raku modules with file system searches.](#org642836f)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orgde66623)
    - [oddities from <https://docs.raku.org/type/Any>](#orgefd2ecf)
  - [from the last meeting](#org85f12cf)
    - [junctions](#org7612327)
    - [follow-up: passing junctions as an argument](#org2c405d1)
  - [other topic ideas](#org4ca3bae)
    - [raku classes as data containers (joe brenner)](#org4720cb0)
    - [unusual argument passing signatures (joe brenner)](#orge35831f)
    - [bruce gray rosettacode](#orgda8d00c)
    - [how flat is flat](#org4530373)
    - [go through my perl5 templates: how much is core raku now?](#org9a62c07)
    - [raku die handlers vs perl5](#orgba23389)
    - [raku idioms](#org90e44cf)
  - [appendix: the usual links](#org35c652a)
    - [code examples](#org04903e0)
    - [meeting notes (material from this file)](#org9cf0e5f)
    - [SF Perl page, has links to mailing list](#orga0cdff6)
    - [perl6-users mailing list archive](#orgbe27038)
  - [announcments](#org1ef1973)
    - [next meeting: July 11th](#org9ae79a8)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org781e099)


<a id="org222f064"></a>

# meeting notes June 20, 2021


<a id="org04eca9e"></a>

## and now, for something completely different


<a id="org642836f"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orgde66623"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgefd2ecf"></a>

### oddities from <https://docs.raku.org/type/Any>

1.  deepmap

2.  duckmap

3.  nodemap


<a id="org85f12cf"></a>

## from the last meeting

1.  sorting and comparators documentation


<a id="org7612327"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org2c405d1"></a>

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


<a id="org4ca3bae"></a>

## other topic ideas


<a id="org4720cb0"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge35831f"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgda8d00c"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org4530373"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org9a62c07"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgba23389"></a>

### raku die handlers vs perl5


<a id="org90e44cf"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org35c652a"></a>

## appendix: the usual links


<a id="org04903e0"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org9cf0e5f"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orga0cdff6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgbe27038"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org1ef1973"></a>

## announcments


<a id="org9ae79a8"></a>

### next meeting: July 11th


<a id="org781e099"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
