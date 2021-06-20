- [meeting notes June 20, 2021](#orgb585f1c)
  - [stuff](#org4669f68)
    - [Doing the Data::Map job in raku](#orgec79391)
    - [last rakudo weekly had a bunch of stuff:](#org6a551cd)
    - [bits from the conference in the clouds (CinC &#x2013; pronounced "sink"/"sync"):](#org6fc77a4)
  - [from the last study group](#org2fa7658)
    - [junctions](#org9a5d35c)
    - [follow-up: passing junctions as an argument](#orgcb56ac8)
  - [other topic ideas](#org70670e7)
    - [raku classes as data containers (joe brenner)](#org6661e90)
    - [unusual argument passing signatures (joe brenner)](#org23d8b8d)
    - [bruce gray rosettacode](#org39dbee1)
    - [how flat is flat](#org948aa89)
    - [go through my perl5 templates: how much is core raku now?](#orgd01bc66)
    - [raku die handlers vs perl5](#org7497269)
    - [raku idioms](#org37da3c4)
  - [more leftover stuff](#org29d2198)
    - [note to self: you can't look for raku modules with file system searches.](#orga50184d)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orge9e2062)
  - [appendix: the usual links](#org5b90e03)
    - [code examples](#org4577773)
    - [meeting notes (material from this file)](#org34364eb)
    - [SF Perl page, has links to mailing list](#org951c361)
    - [perl6-users mailing list archive](#org1a2ed7a)
  - [announcments](#orgaf812ea)
    - [next meeting: July 11th](#org14ebc91)


<a id="orgb585f1c"></a>

# meeting notes June 20, 2021


<a id="org4669f68"></a>

## stuff


<a id="orgec79391"></a>

### Doing the Data::Map job in raku

1.  <https://www.youtube.com/watch?v=wViVLytlwb8>

2.  <https://github.com/doomvox/raku-study/tree/main/notes/talks/data_math>

3.  <https://metacpan.org/pod/Data::Math>

4.  <https://metacpan.org/pod/Scalar::Classify>

5.  <https://github.com/doomvox/data-math>

6.  <https://github.com/doomvox/scalar-classify>

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
        
        3.  also, what about custom data-container classes?
        
            1.  (could be Data::Math approach isn't so relevant?)


<a id="org6a551cd"></a>

### last rakudo weekly had a bunch of stuff:

<https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org6fc77a4"></a>

### bits from the conference in the clouds (CinC &#x2013; pronounced "sink"/"sync"):

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
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  "keyboard noise people" is my new band name


<a id="org2fa7658"></a>

## from the last study group

1.  sorting and comparators documentation


<a id="org9a5d35c"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="orgcb56ac8"></a>

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


<a id="org70670e7"></a>

## other topic ideas


<a id="org6661e90"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org23d8b8d"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org39dbee1"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org948aa89"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgd01bc66"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org7497269"></a>

### raku die handlers vs perl5


<a id="org37da3c4"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org29d2198"></a>

## more leftover stuff


<a id="orga50184d"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orge9e2062"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org5b90e03"></a>

## appendix: the usual links


<a id="org4577773"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org34364eb"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org951c361"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org1a2ed7a"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgaf812ea"></a>

## announcments


<a id="org14ebc91"></a>

### next meeting: July 11th
