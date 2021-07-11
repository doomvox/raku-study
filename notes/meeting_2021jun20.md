- [meeting notes June 20, 2021](#org776afab)
  - [for next time](#org3ebbf1e)
    - [jeff implenting rpn syntax in raku](#orgd1d1499)
    - [jeff: interested in new work on immutable data structures (post by daniel?)](#org7963eac)
    - [bill stackexchange posts:](#org36a7b48)
    - [david: has a perl utility he wants to talk about (next meeting?)](#org3863da4)
  - [this meeting's stuff](#org71f4350)
    - [deepmap](#org9f7bbcb)
    - [Doing the Data::Map job in raku](#org707a693)
    - [last rakudo weekly had a bunch of stuff:](#org94dcfd9)
    - [bits from the Conference in the Clouds (CinC &#x2013; hereafter pronounced "sink"/"sync"):](#orgd41248e)
  - [from the last study group](#org70cc2a5)
    - [follow-up: passing junctions as an argument](#org22578e4)
  - [other topic ideas](#org6e05897)
    - [raku classes as data containers (joe brenner)](#orgae31e43)
    - [unusual argument passing signatures (joe brenner)](#org2feab7f)
    - [bruce gray rosettacode](#orgf0c01c6)
    - [how flat is flat](#org12f9e91)
    - [go through my perl5 templates: how much is core raku now?](#orgaea1210)
    - [raku die handlers vs perl5](#org74985c3)
    - [raku idioms](#orga4134ca)
  - [more leftover stuff](#org7a338fb)
    - [note to self: you can't look for raku modules with file system searches.](#orge4b28fb)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org23d9b1c)
    - [junctions](#org4763f65)
  - [appendix: the usual links](#org0809fd4)
    - [code examples](#org8a9c1f2)
    - [meeting notes (material from this file)](#org29d92e0)
    - [SF Perl page, has links to mailing list](#org2566b32)
    - [perl6-users mailing list archive](#orgce3dc7f)
  - [announcments](#org53f1e26)
    - [next meeting: July 11th](#org4b9ad56)
    - [The Oakland Museum is re-opening--](#org117564c)


<a id="org776afab"></a>

# meeting notes June 20, 2021


<a id="org3ebbf1e"></a>

## for next time


<a id="orgd1d1499"></a>

### jeff implenting rpn syntax in raku

1.  grammar

2.  bruce gray reports difficulties with prefix operators with more than one argument


<a id="org7963eac"></a>

### jeff: interested in new work on immutable data structures (post by daniel?)


<a id="org36a7b48"></a>

### bill stackexchange posts:

13:33:09 From Bill Michels : <https://unix.stackexchange.com/a/654184/227738> 13:35:04 From Bill Michels : <https://unix.stackexchange.com/a/654444/227738> 13:38:35 From Bill Michels : <https://unix.stackexchange.com/a/654467/227738>


<a id="org3863da4"></a>

### david: has a perl utility he wants to talk about (next meeting?)


<a id="org71f4350"></a>

## this meeting's stuff


<a id="org9f7bbcb"></a>

### deepmap

1.  basics

2.  looked at where it's defined in the core

3.  turned up bug: a bad condition can mangle the returned structure


<a id="org707a693"></a>

### Doing the Data::Map job in raku

1.  my lightning talk at the Cinc

    1.  <https://www.youtube.com/watch?v=wViVLytlwb8>

2.  "slides":

    1.  <https://github.com/doomvox/raku-study/tree/main/notes/talks/data_math>

3.  the code:

    1.  <https://metacpan.org/pod/Data::Math>
    
    2.  <https://metacpan.org/pod/Scalar::Classify>
    
    3.  <https://github.com/doomvox/data-math>
    
    4.  <https://github.com/doomvox/scalar-classify>

4.  ideas:

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


<a id="org94dcfd9"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="orgd41248e"></a>

### bits from the Conference in the Clouds (CinC &#x2013; hereafter pronounced "sink"/"sync"):

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
    
    3.  camelcase lovers: Suzana Ezquina ("easier to type")   ThisIsCamel  but: thisIsCamelToo ?
    
    4.  kebabcase: Fernando Correa, JJ Atria                  this-is-kebab
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  my new band name: "keyboard noise people"


<a id="org70cc2a5"></a>

## from the last study group


<a id="org22578e4"></a>

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


<a id="org6e05897"></a>

## other topic ideas


<a id="orgae31e43"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org2feab7f"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgf0c01c6"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org12f9e91"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgaea1210"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org74985c3"></a>

### raku die handlers vs perl5


<a id="orga4134ca"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org7a338fb"></a>

## more leftover stuff


<a id="orge4b28fb"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org23d9b1c"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org4763f65"></a>

### junctions

1.  basics

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org0809fd4"></a>

## appendix: the usual links


<a id="org8a9c1f2"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org29d92e0"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org2566b32"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgce3dc7f"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org53f1e26"></a>

## announcments


<a id="org4b9ad56"></a>

### next meeting: July 11th


<a id="org117564c"></a>

### The Oakland Museum is re-opening--

1.  we might try alternating live and online meetings
