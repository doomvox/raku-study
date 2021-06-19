- [meeting notes June 20, 2021](#org653d077)
  - [stuff](#org40ea66b)
    - [Doing the Data::Map job in raku](#org674f9a0)
    - [a fat rakudo weekly:](#org2fa0e2c)
    - [bits from the conference in the clouds (CinC):](#org368759a)
  - [from the last study group](#org49c3219)
    - [junctions](#orgc1e6d24)
    - [follow-up: passing junctions as an argument](#orgd72ba72)
  - [other topic ideas](#orgf122d0b)
    - [raku classes as data containers (joe brenner)](#org84d03bc)
    - [unusual argument passing signatures (joe brenner)](#orgbdbb179)
    - [bruce gray rosettacode](#orgde1a97d)
    - [how flat is flat](#org7b2e1fe)
    - [go through my perl5 templates: how much is core raku now?](#org207974a)
    - [raku die handlers vs perl5](#orge484999)
    - [raku idioms](#org4575863)
  - [more leftover stuff](#orgef93830)
    - [note to self: you can't look for raku modules with file system searches.](#org7d701b1)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org8b18bd9)
  - [appendix: the usual links](#orgfffa07e)
    - [code examples](#org15523ea)
    - [meeting notes (material from this file)](#org7597657)
    - [SF Perl page, has links to mailing list](#org6d2ae4e)
    - [perl6-users mailing list archive](#org4e18d8c)
  - [announcments](#org77ec615)
    - [next meeting: July 11th](#org9a4f353)


<a id="org653d077"></a>

# meeting notes June 20, 2021


<a id="org40ea66b"></a>

## stuff


<a id="org674f9a0"></a>

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
        
        3.  also, what about custom data-container classes?
        
            1.  (could be D::M isn't so relevant?)


<a id="org2fa0e2c"></a>

### a fat rakudo weekly:

<https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org368759a"></a>

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
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  "keyboard noise people" is my new band name


<a id="org49c3219"></a>

## from the last study group

1.  sorting and comparators documentation


<a id="orgc1e6d24"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="orgd72ba72"></a>

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


<a id="orgf122d0b"></a>

## other topic ideas


<a id="org84d03bc"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgbdbb179"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgde1a97d"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org7b2e1fe"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org207974a"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orge484999"></a>

### raku die handlers vs perl5


<a id="org4575863"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="orgef93830"></a>

## more leftover stuff


<a id="org7d701b1"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org8b18bd9"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgfffa07e"></a>

## appendix: the usual links


<a id="org15523ea"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org7597657"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org6d2ae4e"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org4e18d8c"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org77ec615"></a>

## announcments


<a id="org9a4f353"></a>

### next meeting: July 11th
