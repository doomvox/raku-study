- [meeting notes June 20, 2021](#org22e892f)
  - [stuff](#orgf041d56)
    - [Doing the Data::Map job in raku](#org19ae959)
    - [last rakudo weekly had a bunch of stuff:](#org886a23d)
    - [bits from the Conference in the Clouds (CinC &#x2013; pronounced "sink"/"sync"):](#org4a90e5d)
  - [from the last study group](#org32259b9)
    - [follow-up: passing junctions as an argument](#orgaf6fd97)
  - [other topic ideas](#org6bc503e)
    - [raku classes as data containers (joe brenner)](#org9f73c3f)
    - [unusual argument passing signatures (joe brenner)](#orgd6946d9)
    - [bruce gray rosettacode](#orga85062f)
    - [how flat is flat](#org926143c)
    - [go through my perl5 templates: how much is core raku now?](#org3b3d46a)
    - [raku die handlers vs perl5](#orgee4abe9)
    - [raku idioms](#org037104a)
  - [more leftover stuff](#org12d5f52)
    - [note to self: you can't look for raku modules with file system searches.](#org3cad70a)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org2b3fdb3)
    - [junctions](#orgd2675fc)
  - [appendix: the usual links](#orgb57471d)
    - [code examples](#org8ea0757)
    - [meeting notes (material from this file)](#org3fd7b45)
    - [SF Perl page, has links to mailing list](#org8ddbb0f)
    - [perl6-users mailing list archive](#org5714bd4)
  - [announcments](#orga55f234)
    - [next meeting: July 11th](#org0c1fb0f)


<a id="org22e892f"></a>

# meeting notes June 20, 2021


<a id="orgf041d56"></a>

## stuff


<a id="org19ae959"></a>

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


<a id="org886a23d"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org4a90e5d"></a>

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
    
    3.  camelcase lovers: Suzana Ezquina ("easier to type")
    
    4.  kebabcase: Fernando Correa, JJ Atria
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  my new band name: "keyboard noise people"


<a id="org32259b9"></a>

## from the last study group


<a id="orgaf6fd97"></a>

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


<a id="org6bc503e"></a>

## other topic ideas


<a id="org9f73c3f"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgd6946d9"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orga85062f"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org926143c"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org3b3d46a"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgee4abe9"></a>

### raku die handlers vs perl5


<a id="org037104a"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org12d5f52"></a>

## more leftover stuff


<a id="org3cad70a"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org2b3fdb3"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orgd2675fc"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="orgb57471d"></a>

## appendix: the usual links


<a id="org8ea0757"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org3fd7b45"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org8ddbb0f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org5714bd4"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga55f234"></a>

## announcments


<a id="org0c1fb0f"></a>

### next meeting: July 11th
