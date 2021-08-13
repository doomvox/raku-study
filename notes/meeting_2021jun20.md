- [meeting notes June 20, 2021](#org24e0d6b)
  - [for next time](#org928aa88)
    - [jeff implenting rpn syntax in raku](#org8254a58)
    - [jeff: interested in new work on immutable data structures (post by daniel?)](#org391bccb)
    - [bill stackexchange posts:](#orgbf58292)
    - [david: has a perl utility he wants to talk about (next meeting?)](#orgc3be628)
  - [this meeting's stuff](#orge483968)
    - [deepmap](#orgf8458e7)
    - [Doing the Data::Map job in raku](#org40ab6e8)
    - [last rakudo weekly had a bunch of stuff:](#orgafaabc1)
    - [bits from the Conference in the Clouds (CinC &#x2013; hereafter pronounced "sink"/"sync"):](#orge9c3b4e)
  - [from the last study group](#orgc1f377d)
    - [follow-up: passing junctions as an argument](#org86e85b1)
  - [other topic ideas](#org873f89e)
    - [raku classes as data containers (joe brenner)](#org825bc8e)
    - [unusual argument passing signatures (joe brenner)](#orge96de5f)
    - [bruce gray rosettacode](#org472ea18)
    - [how flat is flat](#orgf8d323e)
    - [go through my perl5 templates: how much is core raku now?](#orge71b6c6)
    - [raku die handlers vs perl5](#org11d09ad)
    - [raku idioms](#org15e67e3)
  - [more leftover stuff](#org95b5013)
    - [note to self: you can't look for raku modules with file system searches.](#org279455a)
    - [is it possible to just mail "SUBSCRIBE" to documentation@raku.org](#org49daa6a)
    - [junctions](#orga906724)
  - [appendix: the usual links](#org8e1f568)
    - [code examples](#orgfc33000)
    - [meeting notes (material from this file)](#orge4fccaa)
    - [SF Perl page, has links to mailing list](#org1665c84)
    - [perl6-users mailing list archive](#org4671e49)
  - [announcments](#org557bb55)
    - [next meeting: July 11th](#org8c15309)
    - [The Oakland Museum is re-opening--](#orgb3f8bc5)


<a id="org24e0d6b"></a>

# meeting notes June 20, 2021


<a id="org928aa88"></a>

## for next time


<a id="org8254a58"></a>

### jeff implenting rpn syntax in raku

1.  grammar

2.  bruce gray reports difficulties with prefix operators with more than one argument


<a id="org391bccb"></a>

### jeff: interested in new work on immutable data structures (post by daniel?)


<a id="orgbf58292"></a>

### bill stackexchange posts:

13:33:09 From Bill Michels : <https://unix.stackexchange.com/a/654184/227738> 13:35:04 From Bill Michels : <https://unix.stackexchange.com/a/654444/227738> 13:38:35 From Bill Michels : <https://unix.stackexchange.com/a/654467/227738>


<a id="orgc3be628"></a>

### david: has a perl utility he wants to talk about (next meeting?)


<a id="orge483968"></a>

## this meeting's stuff


<a id="orgf8458e7"></a>

### deepmap

1.  basics

2.  looked at where it's defined in the core

3.  turned up bug: a bad condition can mangle the returned structure


<a id="org40ab6e8"></a>

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


<a id="orgafaabc1"></a>

### last rakudo weekly had a bunch of stuff:

1.  <https://rakudoweekly.blog/2021/06/14/2021-24-missing/>


<a id="orge9c3b4e"></a>

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


<a id="orgc1f377d"></a>

## from the last study group


<a id="org86e85b1"></a>

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


<a id="org873f89e"></a>

## other topic ideas


<a id="org825bc8e"></a>

### raku classes as data containers (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may16/data_container_class_iii.raku>

    1.  spots example
    
        1.  schema: /home/doom/End/Cave/GraphVizDbiGeneral/Wall/graphs/schema<sub>diagram.png</sub>
        
            1.  generated with: /home/doom/End/Cave/GraphVizDbiGeneral/bin/generate<sub>schema</sub><sub>diagram</sub><sub>spots</sub>
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021may30/spots_data_container_class.raku>


<a id="orge96de5f"></a>

### unusual argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="org472ea18"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgf8d323e"></a>

### how flat is flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>


<a id="orge71b6c6"></a>

### go through my perl5 templates: how much is core raku now?


<a id="org11d09ad"></a>

### raku die handlers vs perl5


<a id="org15e67e3"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  maybe: favor methods over functions?
    
    2.  leon<sub>timmermans</sub>: junctions, favor function on lh, operators on rh?


<a id="org95b5013"></a>

## more leftover stuff


<a id="org279455a"></a>

### note to self: you can't look for raku modules with file system searches.


<a id="org49daa6a"></a>

### is it possible to just mail "SUBSCRIBE" to documentation@raku.org


<a id="orga906724"></a>

### junctions

1.  basics

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/notes/junctions
    
        <https://github.com/doomvox/raku-study/tree/main/notes/junctions>
    
    2.  <https://www.nntp.perl.org/group/perl.perl6.users/2020/06/msg8870.html>
    
    3.  recent discussion of oddities: <https://www.nntp.perl.org/group/perl.perl6.users/2021/05/msg9961.html>


<a id="org8e1f568"></a>

## appendix: the usual links


<a id="orgfc33000"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021jun20>


<a id="orge4fccaa"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021jun20.md>


<a id="org1665c84"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org4671e49"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org557bb55"></a>

## announcments


<a id="org8c15309"></a>

### next meeting: July 11th


<a id="orgb3f8bc5"></a>

### The Oakland Museum is re-opening--

1.  we might try alternating live and online meetings
