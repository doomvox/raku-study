- [meeting notes June 20, 2021](#orga6b0c20)
  - [stuff](#org7097c9c)
    - [bills stacko](#org499a20a)
    - [david, perl utility](#org317abdb)
    - [Doing the Data::Map job in raku](#org209e7e5)
    - [last rakudo weekly had a bunch of stuff:](#orge7d5a22)
    - [bits from the Conference in the Clouds (CinC &#x2013; pronounced "sink"/"sync"):](#orge446199)
  - [from the last study group](#orgef2e5c6)
    - [follow-up: passing junctions as an argument](#org61f3abb)
  - [other topic ideas](#org4a5f98f)
    - [raku classes as data containers (joe brenner)](#org5c3f7cf)
    - [unusual argument passing signatures (joe brenner)](#org4055149)
    - [bruce gray rosettacode](#orgfd312d6)
    - [how flat is flat](#orge29bf23)
    - [go through my perl5 templates: how much is core raku now?](#org3366641)
    - [raku die handlers vs perl5](#org96e1679)
    - [raku idioms](#org17ca9c6)
  - [more leftover stuff](#org201af12)
    - [note to self: you can't look for raku modules with file system searches.](#org7fdd89c)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org5dcf784)
    - [junctions](#org85692a0)
  - [appendix: the usual links](#org9c8a955)
    - [code examples](#org8c2684a)
    - [meeting notes (material from this file)](#orgb1ebe1d)
    - [SF Perl page, has links to mailing list](#org6aeee1f)
    - [perl6-users mailing list archive](#orge722a15)
  - [announcments](#org5bb5a42)
    - [next meeting: July 11th](#orgf5b04b0)


<a id="orga6b0c20"></a>

# meeting notes June 20, 2021


<a id="org7097c9c"></a>

## stuff


<a id="org499a20a"></a>

### bills stacko


<a id="org317abdb"></a>

### david, perl utility


<a id="org209e7e5"></a>

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


<a id="orge7d5a22"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="orge446199"></a>

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


<a id="orgef2e5c6"></a>

## from the last study group


<a id="org61f3abb"></a>

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


<a id="org4a5f98f"></a>

## other topic ideas


<a id="org5c3f7cf"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4055149"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgfd312d6"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orge29bf23"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org3366641"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org96e1679"></a>

### raku die handlers vs perl5


<a id="org17ca9c6"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org201af12"></a>

## more leftover stuff


<a id="org7fdd89c"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org5dcf784"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org85692a0"></a>

### junctions

1.  basics (we've talked about them before)

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org9c8a955"></a>

## appendix: the usual links


<a id="org8c2684a"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgb1ebe1d"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org6aeee1f"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orge722a15"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org5bb5a42"></a>

## announcments


<a id="orgf5b04b0"></a>

### next meeting: July 11th
