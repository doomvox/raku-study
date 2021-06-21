- [meeting notes June 20, 2021](#org9947ea4)
  - [stuff](#org25fd4f0)
    - [jeff: interested in new work on immutable data structures (post by daniel?)](#org1be9677)
    - [bill stackexchange posts:](#org203cfe7)
    - [david: has a perl utility he wants to talk about](#org47194f4)
    - [Doing the Data::Map job in raku](#orgd68ebb1)
    - [last rakudo weekly had a bunch of stuff:](#orge288538)
    - [bits from the Conference in the Clouds (CinC &#x2013; pronounced "sink"/"sync"):](#org3f4e33a)
  - [from the last study group](#orgdd191df)
    - [follow-up: passing junctions as an argument](#org83e6102)
  - [other topic ideas](#orgc5633bb)
    - [raku classes as data containers (joe brenner)](#org2574426)
    - [unusual argument passing signatures (joe brenner)](#orgb7ac25f)
    - [bruce gray rosettacode](#org2640209)
    - [how flat is flat](#orgb08f8cf)
    - [go through my perl5 templates: how much is core raku now?](#orge084e9e)
    - [raku die handlers vs perl5](#orgff8c63f)
    - [raku idioms](#orgb850c6c)
  - [more leftover stuff](#org14812c6)
    - [note to self: you can't look for raku modules with file system searches.](#org3e99adf)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orge809901)
    - [junctions](#org5105b05)
  - [appendix: the usual links](#org258b501)
    - [code examples](#org7fe82eb)
    - [meeting notes (material from this file)](#org8d8fd6e)
    - [SF Perl page, has links to mailing list](#orgea20ab5)
    - [perl6-users mailing list archive](#org6746164)
  - [announcments](#org6211bc2)
    - [next meeting: July 11th](#orgb994d88)
    - [The Oakland Museum is re-opening--](#orga05480a)


<a id="org9947ea4"></a>

# meeting notes June 20, 2021


<a id="org25fd4f0"></a>

## stuff


<a id="org1be9677"></a>

### jeff: interested in new work on immutable data structures (post by daniel?)


<a id="org203cfe7"></a>

### bill stackexchange posts:

13:33:09 From Bill Michels : <https://unix.stackexchange.com/a/654184/227738> 13:35:04 From Bill Michels : <https://unix.stackexchange.com/a/654444/227738> 13:38:35 From Bill Michels : <https://unix.stackexchange.com/a/654467/227738>


<a id="org47194f4"></a>

### david: has a perl utility he wants to talk about


<a id="orgd68ebb1"></a>

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


<a id="orge288538"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org3f4e33a"></a>

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


<a id="orgdd191df"></a>

## from the last study group


<a id="org83e6102"></a>

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


<a id="orgc5633bb"></a>

## other topic ideas


<a id="org2574426"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgb7ac25f"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org2640209"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgb08f8cf"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orge084e9e"></a>

### go through my perl5 templates: how much is core raku now?


<a id="orgff8c63f"></a>

### raku die handlers vs perl5


<a id="orgb850c6c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org14812c6"></a>

## more leftover stuff


<a id="org3e99adf"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orge809901"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org5105b05"></a>

### junctions

1.  basics

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org258b501"></a>

## appendix: the usual links


<a id="org7fe82eb"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org8d8fd6e"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="orgea20ab5"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6746164"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org6211bc2"></a>

## announcments


<a id="orgb994d88"></a>

### next meeting: July 11th


<a id="orga05480a"></a>

### The Oakland Museum is re-opening--

1.  we might try alternating live and online meetings
