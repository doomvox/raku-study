- [meeting notes June 20, 2021](#org954a4f9)
  - [and now, for something completely different](#org0238e6e)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orgf5180ce)
  - [from the last meeting](#orgc037f8a)
    - [junctions](#orgff995ff)
    - [follow-up: passing junctions as an argument](#org61f6e01)
  - [other topic ideas](#orgd8dbb9e)
    - [raku classes as data containers (joe brenner)](#orga3d68ab)
    - [unusual argument passing signatures (joe brenner)](#org4c2b721)
    - [bruce gray rosettacode](#org6702f82)
    - [how flat is flat](#orgead4b87)
    - [go through my perl5 templates: how much is core raku now?](#org1178ba0)
    - [raku die handlers vs perl5](#org7a7fb1b)
    - [raku idioms](#orgb847e42)
  - [appendix: the usual links](#orgb0e6d2e)
    - [code examples](#org0adb974)
    - [meeting notes (material from this file)](#org9ad28af)
    - [SF Perl page, has links to mailing list](#org007476a)
    - [perl6-users mailing list archive](#org881db33)
  - [announcments](#orgb7d93b1)
    - [next meeting: July 11th](#orgb2dda59)
    - ["conference in the clouds" coming up (bruce gray talk, etc)](#org12dff2c)


<a id="org954a4f9"></a>

# meeting notes June 20, 2021


<a id="org0238e6e"></a>

## and now, for something completely different


<a id="orgf5180ce"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgc037f8a"></a>

## from the last meeting

1.  sorting and comparators documentation


<a id="orgff995ff"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>


<a id="org61f6e01"></a>

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


<a id="orgd8dbb9e"></a>

## other topic ideas


<a id="orga3d68ab"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4c2b721"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org6702f82"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgead4b87"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org1178ba0"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org7a7fb1b"></a>

### raku die handlers vs perl5


<a id="orgb847e42"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="orgb0e6d2e"></a>

## appendix: the usual links


<a id="org0adb974"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org9ad28af"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org007476a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org881db33"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgb7d93b1"></a>

## announcments


<a id="orgb2dda59"></a>

### next meeting: July 11th


<a id="org12dff2c"></a>

### "conference in the clouds" coming up (bruce gray talk, etc)

1.  june 8-10th, $10
