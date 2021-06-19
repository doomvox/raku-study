- [meeting notes June 20, 2021](#org44ffc9a)
  - [stuff](#orgbc46d17)
    - [Doing the Data::Map job in raku](#org1655d8d)
    - [a fat rakudo weekly:](#orgb49b53d)
    - [bits from the conference in the clouds (CinC):](#org5af94ec)
  - [from the last study group](#org6998c51)
    - [junctions](#org203c0ee)
    - [follow-up: passing junctions as an argument](#org2f1f742)
  - [other topic ideas](#org797dfbe)
    - [raku classes as data containers (joe brenner)](#orgfb0571e)
    - [unusual argument passing signatures (joe brenner)](#org4faafb3)
    - [bruce gray rosettacode](#org042c48d)
    - [how flat is flat](#orgdc70420)
    - [go through my perl5 templates: how much is core raku now?](#orgf54d581)
    - [raku die handlers vs perl5](#org95fb394)
    - [raku idioms](#org12cbca3)
  - [more leftover stuff](#org6e4dafb)
    - [note to self: you can't look for raku modules with file system searches.](#org2ca598b)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org1feb646)
  - [appendix: the usual links](#orgf741ab0)
    - [code examples](#org176f346)
    - [meeting notes (material from this file)](#org5948b60)
    - [SF Perl page, has links to mailing list](#orgddf0bd2)
    - [perl6-users mailing list archive](#org682ca88)
  - [announcments](#orga0562a9)
    - [next meeting: July 11th](#org9dfa054)


<a id="org44ffc9a"></a>

# meeting notes June 20, 2021


<a id="orgbc46d17"></a>

## stuff


<a id="org1655d8d"></a>

### Doing the Data::Map job in raku

1.  <https://github.com/doomvox/raku-study/tree/main/notes/talks/data_math>

2.  <https://metacpan.org/pod/Data::Math>

3.  <https://metacpan.org/pod/Scalar::Classify>

4.  <https://github.com/doomvox/data-math>

5.  <https://github.com/doomvox/scalar-classify>

    1.  deepmap and/or duckmap seem close&#x2026;
    
        1.  from <https://docs.raku.org/type/Any>
        
            1.  deepmap
            
            2.  duckmap
            
            3.  nodemap
            
            4.  flatmap
            
                1.  deprecated: use .map followed by .flat instead. ((not the other way around?))
    
    2.  but I need to zip together **two** trees
    
        1.  doublemap, deepcross, treereduce&#x2026;?  (( any excuse for doublecross? ))
        
        2.  One way: collapse paths to compound keys, then use Mix math


<a id="orgb49b53d"></a>

### a fat rakudo weekly:

<https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org5af94ec"></a>

### bits from the conference in the clouds (CinC):

1.  Rop

    From Bruce Gray : Least favorite meta-operator: Rop my $a = 41; 1 R+= $a; say $a; Bwahahaha!

2.  leon timmermans:

    From Brent Laabs : "prefix-" X~ @list &#x2026;&#x2026; whaaaat? zomg! From Bruce Gray : Works with Fat Arrow. my %h = <A B C> X=> 1;

3.  great naming debates

    1.  man perlstyle:
    
        "&#x2026; use underscores to separate words in longer identifiers. It is generally easier to read $var<sub>names</sub><sub>like</sub><sub>this</sub> than $VarNamesLikeThis, especially for non-native speakers of English. It's also a simple rule that works consistently with 'VAR<sub>NAMES</sub><sub>LIKE</sub><sub>THIS</sub>'."
        
        1.  I think underscores work as a good stand-in for spaces
        
            1.  btw: unix people hate file names with spaces
    
    2.  hyphen lovers: Leon Timmermans (underscores "ugly"?)
    
    3.  camelcase lovers: Suzana Ezquina ("easier to type")
    
    4.  kebabcase: Fernando Correa, JJ Atria
    
        1.  There's nothing fundamentally interesting about this debate
        
        2.  Except the fact that it exists.

4.  "keyboard noise people" is my new band name


<a id="org6998c51"></a>

## from the last study group

1.  sorting and comparators documentation


<a id="org203c0ee"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org2f1f742"></a>

### follow-up: passing junctions as an argument

1.  <:Find> exclude

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9917.html>
    
    2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/file_find_with_junction_as_exclude.raku>
    
    3.  is this the canonical <:Find> repo?  (brian d foy has one, too, but it looks stale)
    
        <https://github.com/tadzik/File-Find>
        
        1.  DONE open issue / submit pull request to Mu the name and exclude arguments

2.  Ralph Mellor conceeds junction "precedence" can be confusing.

    1.  TODO (( link from mailing list ))

3.  TODO find (or open) issue: raku's perl5 regex compatibility (:P5) can't handle (?<sup>i</sup>:

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9924.html>


<a id="org797dfbe"></a>

## other topic ideas


<a id="orgfb0571e"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4faafb3"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org042c48d"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgdc70420"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgf54d581"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org95fb394"></a>

### raku die handlers vs perl5


<a id="org12cbca3"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org6e4dafb"></a>

## more leftover stuff


<a id="org2ca598b"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org1feb646"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgf741ab0"></a>

## appendix: the usual links


<a id="org176f346"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org5948b60"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orgddf0bd2"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org682ca88"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga0562a9"></a>

## announcments


<a id="org9dfa054"></a>

### next meeting: July 11th
