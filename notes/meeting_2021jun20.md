- [meeting notes June 20, 2021](#orgbac2fd0)
  - [stuff](#orgaf0f769)
    - [Doing the Data::Map job in raku](#org1212409)
    - [last rakudo weekly had a bunch of stuff:](#org342d704)
    - [bits from the conference in the clouds (CinC &#x2013; pronounced "sink"/"sync"):](#org8d6807c)
  - [from the last study group](#org1c7a79f)
    - [junctions](#org0c5d3cb)
    - [follow-up: passing junctions as an argument](#orgd76a409)
  - [other topic ideas](#org5c88b8e)
    - [raku classes as data containers (joe brenner)](#org2e8ac13)
    - [unusual argument passing signatures (joe brenner)](#org698961a)
    - [bruce gray rosettacode](#org173931e)
    - [how flat is flat](#orge5e9ddb)
    - [go through my perl5 templates: how much is core raku now?](#orgb208392)
    - [raku die handlers vs perl5](#org1fb7fbc)
    - [raku idioms](#orgce353f8)
  - [more leftover stuff](#org543b2b2)
    - [note to self: you can't look for raku modules with file system searches.](#org998e534)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org1da409f)
  - [appendix: the usual links](#org376bcd5)
    - [code examples](#org19cc555)
    - [meeting notes (material from this file)](#org19cc061)
    - [SF Perl page, has links to mailing list](#org0657b5a)
    - [perl6-users mailing list archive](#orgc53e15c)
  - [announcments](#orgc40c6f8)
    - [next meeting: July 11th](#org74deb18)


<a id="orgbac2fd0"></a>

# meeting notes June 20, 2021


<a id="orgaf0f769"></a>

## stuff


<a id="org1212409"></a>

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


<a id="org342d704"></a>

### last rakudo weekly had a bunch of stuff:

<https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org8d6807c"></a>

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


<a id="org1c7a79f"></a>

## from the last study group

1.  sorting and comparators documentation


<a id="org0c5d3cb"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="orgd76a409"></a>

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


<a id="org5c88b8e"></a>

## other topic ideas


<a id="org2e8ac13"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org698961a"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org173931e"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge5e9ddb"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgb208392"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org1fb7fbc"></a>

### raku die handlers vs perl5


<a id="orgce353f8"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org543b2b2"></a>

## more leftover stuff


<a id="org998e534"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org1da409f"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org376bcd5"></a>

## appendix: the usual links


<a id="org19cc555"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org19cc061"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org0657b5a"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgc53e15c"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc40c6f8"></a>

## announcments


<a id="org74deb18"></a>

### next meeting: July 11th
