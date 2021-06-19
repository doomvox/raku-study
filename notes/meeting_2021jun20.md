- [meeting notes June 20, 2021](#orga6514e0)
  - [stuff](#org827aad7)
    - [Doing the Data::Map job in raku](#org8f463f8)
    - [a fat rakudo weekly:](#org5e9871e)
    - [bits from the conference in the clouds (CinC):](#orgc910554)
  - [from the last study group](#orgef1a124)
    - [junctions](#org41af47e)
    - [follow-up: passing junctions as an argument](#org9671b74)
  - [other topic ideas](#orgdf69577)
    - [raku classes as data containers (joe brenner)](#org206b999)
    - [unusual argument passing signatures (joe brenner)](#org4fbf988)
    - [bruce gray rosettacode](#orgc7f73fe)
    - [how flat is flat](#org7c757bd)
    - [go through my perl5 templates: how much is core raku now?](#orgb614193)
    - [raku die handlers vs perl5](#org2015094)
    - [raku idioms](#org1daf72c)
  - [more leftover stuff](#orge23dedb)
    - [note to self: you can't look for raku modules with file system searches.](#orgf70d3c9)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orge66f2ca)
  - [appendix: the usual links](#org369129a)
    - [code examples](#orgf953ba9)
    - [meeting notes (material from this file)](#org88abef3)
    - [SF Perl page, has links to mailing list](#org22ad8d6)
    - [perl6-users mailing list archive](#orge52208b)
  - [announcments](#orga50c880)
    - [next meeting: July 11th](#orgf2c6dc9)


<a id="orga6514e0"></a>

# meeting notes June 20, 2021


<a id="org827aad7"></a>

## stuff


<a id="org8f463f8"></a>

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
        
            1.  (could be Data::Math approach isn't so relevant?)


<a id="org5e9871e"></a>

### a fat rakudo weekly:

<https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="orgc910554"></a>

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


<a id="orgef1a124"></a>

## from the last study group

1.  sorting and comparators documentation


<a id="org41af47e"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org9671b74"></a>

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


<a id="orgdf69577"></a>

## other topic ideas


<a id="org206b999"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4fbf988"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgc7f73fe"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org7c757bd"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orgb614193"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org2015094"></a>

### raku die handlers vs perl5


<a id="org1daf72c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="orge23dedb"></a>

## more leftover stuff


<a id="orgf70d3c9"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orge66f2ca"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org369129a"></a>

## appendix: the usual links


<a id="orgf953ba9"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org88abef3"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org22ad8d6"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orge52208b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga50c880"></a>

## announcments


<a id="orgf2c6dc9"></a>

### next meeting: July 11th
