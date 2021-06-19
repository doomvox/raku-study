- [meeting notes June 20, 2021](#org5c8ffb6)
  - [stuff](#orga9b7928)
    - [Doing the Data::Map job in raku](#orge00e2bb)
    - [a fat rakudo weekly:](#orgd24e44b)
    - [bits from the conference in the clouds (CinC):](#orgba0786a)
  - [from the last study group](#orgbc7ee8d)
    - [junctions](#org967f79b)
    - [follow-up: passing junctions as an argument](#org4f64278)
  - [other topic ideas](#orgfa54860)
    - [raku classes as data containers (joe brenner)](#orgcf2c49a)
    - [unusual argument passing signatures (joe brenner)](#orgdb5ff7b)
    - [bruce gray rosettacode](#org7013249)
    - [how flat is flat](#org42a6113)
    - [go through my perl5 templates: how much is core raku now?](#org439da8f)
    - [raku die handlers vs perl5](#orgb33b725)
    - [raku idioms](#orgdd089f5)
  - [more leftover stuff](#org48adb18)
    - [note to self: you can't look for raku modules with file system searches.](#org6b28c20)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orgb5d63e7)
  - [appendix: the usual links](#org6308361)
    - [code examples](#orgd807bcb)
    - [meeting notes (material from this file)](#org1bdc11a)
    - [SF Perl page, has links to mailing list](#org171ec46)
    - [perl6-users mailing list archive](#org7f0245b)
  - [announcments](#orgf79e19e)
    - [next meeting: July 11th](#orgd3d9e46)


<a id="org5c8ffb6"></a>

# meeting notes June 20, 2021


<a id="orga9b7928"></a>

## stuff


<a id="orge00e2bb"></a>

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


<a id="orgd24e44b"></a>

### a fat rakudo weekly:

<https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="orgba0786a"></a>

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


<a id="orgbc7ee8d"></a>

## from the last study group

1.  sorting and comparators documentation


<a id="org967f79b"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org4f64278"></a>

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


<a id="orgfa54860"></a>

## other topic ideas


<a id="orgcf2c49a"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgdb5ff7b"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org7013249"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org42a6113"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org439da8f"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgb33b725"></a>

### raku die handlers vs perl5


<a id="orgdd089f5"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?


<a id="org48adb18"></a>

## more leftover stuff


<a id="org6b28c20"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orgb5d63e7"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org6308361"></a>

## appendix: the usual links


<a id="orgd807bcb"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org1bdc11a"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org171ec46"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org7f0245b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgf79e19e"></a>

## announcments


<a id="orgd3d9e46"></a>

### next meeting: July 11th
