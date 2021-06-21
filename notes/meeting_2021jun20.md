- [meeting notes June 20, 2021](#orgf8f0a4e)
  - [stuff](#orgecf28a7)
    - [jeff implenting rpn syntax in raku](#orgba3e14d)
    - [jeff: interested in new work on immutable data structures (post by daniel?)](#org6776a63)
    - [bill stackexchange posts:](#org6230084)
    - [david: has a perl utility he wants to talk about (next meeting?)](#orga35f9c9)
    - [deepmap](#orgae84b4d)
    - [Doing the Data::Map job in raku](#org26219cb)
    - [last rakudo weekly had a bunch of stuff:](#org2b37e26)
    - [bits from the Conference in the Clouds (CinC &#x2013; hereafter pronounced "sink"/"sync"):](#orgd935664)
  - [from the last study group](#orge3e6470)
    - [follow-up: passing junctions as an argument](#org86db9f2)
  - [other topic ideas](#orgf7bb43a)
    - [raku classes as data containers (joe brenner)](#org151e11b)
    - [unusual argument passing signatures (joe brenner)](#org4f56513)
    - [bruce gray rosettacode](#orgb92bdca)
    - [how flat is flat](#org93fec96)
    - [go through my perl5 templates: how much is core raku now?](#org58f8589)
    - [raku die handlers vs perl5](#org0cbb7ef)
    - [raku idioms](#orgd74e8fa)
  - [more leftover stuff](#orgad2994c)
    - [note to self: you can't look for raku modules with file system searches.](#org961903f)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#orgf989e97)
    - [junctions](#org5f1f2bf)
  - [appendix: the usual links](#orgecdd91d)
    - [code examples](#org50a5c5e)
    - [meeting notes (material from this file)](#org838e661)
    - [SF Perl page, has links to mailing list](#org1f26b6c)
    - [perl6-users mailing list archive](#org2739a3d)
  - [announcments](#org516fccf)
    - [next meeting: July 11th](#org0a2184b)
    - [The Oakland Museum is re-opening--](#org4830bba)


<a id="orgf8f0a4e"></a>

# meeting notes June 20, 2021


<a id="orgecf28a7"></a>

## stuff


<a id="orgba3e14d"></a>

### jeff implenting rpn syntax in raku

1.  grammar

2.  bruce gray reports difficulties with prefix operators with more than one argument


<a id="org6776a63"></a>

### jeff: interested in new work on immutable data structures (post by daniel?)


<a id="org6230084"></a>

### bill stackexchange posts:

13:33:09 From Bill Michels : <https://unix.stackexchange.com/a/654184/227738> 13:35:04 From Bill Michels : <https://unix.stackexchange.com/a/654444/227738> 13:38:35 From Bill Michels : <https://unix.stackexchange.com/a/654467/227738>


<a id="orga35f9c9"></a>

### david: has a perl utility he wants to talk about (next meeting?)


<a id="orgae84b4d"></a>

### deepmap

1.  basics

2.  looked at where it's defined in the core

3.  turned up bug: a bad condition can mangle the returned structure


<a id="org26219cb"></a>

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


<a id="org2b37e26"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="orgd935664"></a>

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
    
    4.  kebabcase: Fernando Correa, JJ Atria  this-is-kebab
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  my new band name: "keyboard noise people"


<a id="orge3e6470"></a>

## from the last study group


<a id="org86db9f2"></a>

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


<a id="orgf7bb43a"></a>

## other topic ideas


<a id="org151e11b"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4f56513"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgb92bdca"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org93fec96"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org58f8589"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org0cbb7ef"></a>

### raku die handlers vs perl5


<a id="orgd74e8fa"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="orgad2994c"></a>

## more leftover stuff


<a id="org961903f"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="orgf989e97"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org5f1f2bf"></a>

### junctions

1.  basics

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="orgecdd91d"></a>

## appendix: the usual links


<a id="org50a5c5e"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="org838e661"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org1f26b6c"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org2739a3d"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org516fccf"></a>

## announcments


<a id="org0a2184b"></a>

### next meeting: July 11th


<a id="org4830bba"></a>

### The Oakland Museum is re-opening--

1.  we might try alternating live and online meetings
