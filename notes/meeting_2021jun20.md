- [meeting notes June 20, 2021](#org78db1f0)
  - [stuff](#orgc4b02c8)
    - [jeff: interested in new work on immutable data structures (post by daniel?)](#org8cd6f96)
    - [bill stackexchange posts:](#org948d224)
    - [david: has a perl utility he wants to talk about](#org6d1dc57)
    - [Doing the Data::Map job in raku](#org37200c7)
    - [last rakudo weekly had a bunch of stuff:](#orgcfba881)
    - [bits from the Conference in the Clouds (CinC &#x2013; pronounced "sink"/"sync"):](#org12d761b)
  - [from the last study group](#orgd3eace3)
    - [follow-up: passing junctions as an argument](#org051df31)
  - [other topic ideas](#org83d954e)
    - [raku classes as data containers (joe brenner)](#org312f54d)
    - [unusual argument passing signatures (joe brenner)](#orgf7655e8)
    - [bruce gray rosettacode](#orgbef61af)
    - [how flat is flat](#org4c452f3)
    - [go through my perl5 templates: how much is core raku now?](#org077ecb0)
    - [raku die handlers vs perl5](#org5742eb7)
    - [raku idioms](#orgfa72923)
  - [more leftover stuff](#org60b7355)
    - [note to self: you can't look for raku modules with file system searches.](#org5ac2860)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orga356e60)
    - [junctions](#org3be8f85)
  - [appendix: the usual links](#org5d863ab)
    - [code examples](#orga8ae7fa)
    - [meeting notes (material from this file)](#org534f677)
    - [SF Perl page, has links to mailing list](#org6c8a68c)
    - [perl6-users mailing list archive](#orgefc8a53)
  - [announcments](#orga6ac594)
    - [next meeting: July 11th](#orgab65141)


<a id="org78db1f0"></a>

# meeting notes June 20, 2021


<a id="orgc4b02c8"></a>

## stuff


<a id="org8cd6f96"></a>

### jeff: interested in new work on immutable data structures (post by daniel?)


<a id="org948d224"></a>

### bill stackexchange posts:

13:33:09 From Bill Michels : <https://unix.stackexchange.com/a/654184/227738> 13:35:04 From Bill Michels : <https://unix.stackexchange.com/a/654444/227738> 13:38:35 From Bill Michels : <https://unix.stackexchange.com/a/654467/227738>


<a id="org6d1dc57"></a>

### david: has a perl utility he wants to talk about


<a id="org37200c7"></a>

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


<a id="orgcfba881"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org12d761b"></a>

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


<a id="orgd3eace3"></a>

## from the last study group


<a id="org051df31"></a>

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


<a id="org83d954e"></a>

## other topic ideas


<a id="org312f54d"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orgf7655e8"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgbef61af"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org4c452f3"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org077ecb0"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org5742eb7"></a>

### raku die handlers vs perl5


<a id="orgfa72923"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org60b7355"></a>

## more leftover stuff


<a id="org5ac2860"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orga356e60"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org3be8f85"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org5d863ab"></a>

## appendix: the usual links


<a id="orga8ae7fa"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org534f677"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org6c8a68c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgefc8a53"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orga6ac594"></a>

## announcments


<a id="orgab65141"></a>

### next meeting: July 11th
