- [meeting notes June 20, 2021](#orgcc89003)
  - [stuff](#org0e5659e)
    - [bills stacko](#orgbd27cb1)
    - [david, perl utility](#orga862089)
    - [Doing the Data::Map job in raku](#org9be35e7)
    - [last rakudo weekly had a bunch of stuff:](#orgb429d0a)
    - [bits from the Conference in the Clouds (CinC &#x2013; pronounced "sink"/"sync"):](#org733d19b)
  - [from the last study group](#orgf980929)
    - [follow-up: passing junctions as an argument](#org2616195)
  - [other topic ideas](#org7d41077)
    - [raku classes as data containers (joe brenner)](#org556a314)
    - [unusual argument passing signatures (joe brenner)](#org78f7446)
    - [bruce gray rosettacode](#org88a2211)
    - [how flat is flat](#org9ade229)
    - [go through my perl5 templates: how much is core raku now?](#org6789845)
    - [raku die handlers vs perl5](#orgaf7ccf1)
    - [raku idioms](#orgdeaa7b8)
  - [more leftover stuff](#orgfc329d9)
    - [note to self: you can't look for raku modules with file system searches.](#org5b7187f)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org9018a2f)
    - [junctions](#orga01618a)
  - [appendix: the usual links](#org07bbef8)
    - [code examples](#org2642b87)
    - [meeting notes (material from this file)](#org9e1ff68)
    - [SF Perl page, has links to mailing list](#org0de733b)
    - [perl6-users mailing list archive](#org4dbf0ca)
  - [announcments](#org07c3034)
    - [next meeting: July 11th](#orgf75d64c)


<a id="orgcc89003"></a>

# meeting notes June 20, 2021


<a id="org0e5659e"></a>

## stuff


<a id="orgbd27cb1"></a>

### bills stacko


<a id="orga862089"></a>

### david, perl utility


<a id="org9be35e7"></a>

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


<a id="orgb429d0a"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org733d19b"></a>

### bits from the Conference in the Clouds (CinC &#x2013; pronounced "sink"/"sync"):

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
    
    4.  kebabcase: Fernando Correa, JJ Atria  this-is-kebab
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  my new band name: "keyboard noise people"


<a id="orgf980929"></a>

## from the last study group


<a id="org2616195"></a>

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


<a id="org7d41077"></a>

## other topic ideas


<a id="org556a314"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org78f7446"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org88a2211"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org9ade229"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org6789845"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgaf7ccf1"></a>

### raku die handlers vs perl5


<a id="orgdeaa7b8"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="orgfc329d9"></a>

## more leftover stuff


<a id="org5b7187f"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org9018a2f"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orga01618a"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org07bbef8"></a>

## appendix: the usual links


<a id="org2642b87"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org9e1ff68"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org0de733b"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org4dbf0ca"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org07c3034"></a>

## announcments


<a id="orgf75d64c"></a>

### next meeting: July 11th
