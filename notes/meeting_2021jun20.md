- [meeting notes June 20, 2021](#org2fd3e06)
  - [for next time](#orgea69231)
    - [jeff implenting rpn syntax in raku](#org8935e5c)
    - [jeff: interested in new work on immutable data structures (post by daniel?)](#org692785c)
    - [bill stackexchange posts:](#orga1b0e06)
    - [david: has a perl utility he wants to talk about (next meeting?)](#orgc5a96e3)
  - [this meeting's stuff](#orgb6cb05e)
    - [deepmap](#org2402692)
    - [Doing the Data::Map job in raku](#orge6878ba)
    - [last rakudo weekly had a bunch of stuff:](#orgdacd303)
    - [bits from the Conference in the Clouds (CinC &#x2013; hereafter pronounced "sink"/"sync"):](#org2b272e7)
  - [from the last study group](#orgfce4320)
    - [follow-up: passing junctions as an argument](#org1b41aed)
  - [other topic ideas](#org71f4504)
    - [raku classes as data containers (joe brenner)](#orgef15e31)
    - [unusual argument passing signatures (joe brenner)](#org4768878)
    - [bruce gray rosettacode](#orgb419d09)
    - [how flat is flat](#orgeef2bf8)
    - [go through my perl5 templates: how much is core raku now?](#org08eee24)
    - [raku die handlers vs perl5](#org04d07c4)
    - [raku idioms](#org14a998c)
  - [more leftover stuff](#orge0573bc)
    - [note to self: you can't look for raku modules with file system searches.](#orgaf8a408)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org451b331)
    - [junctions](#org0a52deb)
  - [appendix: the usual links](#orgb914f1d)
    - [code examples](#org5c715ac)
    - [meeting notes (material from this file)](#orgb4c8149)
    - [SF Perl page, has links to mailing list](#org222c40b)
    - [perl6-users mailing list archive](#orgb71dc1b)
  - [announcments](#org8af1601)
    - [next meeting: July 11th](#orgc31867a)
    - [The Oakland Museum is re-opening--](#org10ac151)


<a id="org2fd3e06"></a>

# meeting notes June 20, 2021


<a id="orgea69231"></a>

## for next time


<a id="org8935e5c"></a>

### jeff implenting rpn syntax in raku

1.  grammar

2.  bruce gray reports difficulties with prefix operators with more than one argument


<a id="org692785c"></a>

### jeff: interested in new work on immutable data structures (post by daniel?)


<a id="orga1b0e06"></a>

### bill stackexchange posts:

13:33:09 From Bill Michels : <https://unix.stackexchange.com/a/654184/227738> 13:35:04 From Bill Michels : <https://unix.stackexchange.com/a/654444/227738> 13:38:35 From Bill Michels : <https://unix.stackexchange.com/a/654467/227738>


<a id="orgc5a96e3"></a>

### david: has a perl utility he wants to talk about (next meeting?)


<a id="orgb6cb05e"></a>

## this meeting's stuff


<a id="org2402692"></a>

### deepmap

1.  basics

2.  looked at where it's defined in the core

3.  turned up bug: a bad condition can mangle the returned structure


<a id="orge6878ba"></a>

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


<a id="orgdacd303"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="org2b272e7"></a>

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
    
    4.  kebabcase: Fernando Correa, JJ Atria                  this-is-kebab
    
        1.  There's nothing fundamentally interesting about this debate, except the fact that it exists.

4.  my new band name: "keyboard noise people"


<a id="orgfce4320"></a>

## from the last study group


<a id="org1b41aed"></a>

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
    
    2.  <https://github.com/rakudo/rakudo/issues/2624>
    
    3.  out:
    
        \#+BEGIN<sub>SRC</sub> text
        
        I was trying to use an old library of perl regexes via :P5, and I was having trouble with the embedded pattern-match modifiers, e.g.
        
        m:P5/(?<sup>i</sup>: &#x2026; )/
        
        My first preference would be to get :P5 working so that it's perfectly compatible with perl; second best would be to carefully document the ways it's not compatible; third best would be to deprecate it and generate a warning when you try to use it.
        
        The absolute worst thing to do is what's currently being done: leaving a semi-broken feature lying around (and then when someone trips over it imply they're dumb for trying to use it).
        
        This issue has been open for over two years now.
        
        \#END<sub>SRC</sub>


<a id="org71f4504"></a>

## other topic ideas


<a id="orgef15e31"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="org4768878"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgb419d09"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgeef2bf8"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="org08eee24"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org04d07c4"></a>

### raku die handlers vs perl5


<a id="org14a998c"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="orge0573bc"></a>

## more leftover stuff


<a id="orgaf8a408"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org451b331"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="org0a52deb"></a>

### junctions

1.  basics

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="orgb914f1d"></a>

## appendix: the usual links


<a id="org5c715ac"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orgb4c8149"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org222c40b"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgb71dc1b"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org8af1601"></a>

## announcments


<a id="orgc31867a"></a>

### next meeting: July 11th


<a id="org10ac151"></a>

### The Oakland Museum is re-opening--

1.  we might try alternating live and online meetings
