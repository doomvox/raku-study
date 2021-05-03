- [meeting notes May 02, 2021](#org0b06c29)
  - [meeting links](#org0fb0c0c)
  - [agenda stuff](#orgc38bfd4)
    - [69 cent tour of git and github](#org848e9e4)
    - [bruce gray rosetta code entry:  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#orge98fc64)
    - [type system: what is accepted by what](#org95dbc9c)
    - [raku classes as data containers](#orgfaddeac)
    - [programming in the large (david christensen)](#org714b11c)
  - [ongoing](#org00ede80)
    - [raku idioms](#org9dbc89d)
  - [announcements](#org18e009d)
    - [Next month is mother's day.  No meeting.](#org08f81d6)
  - [appendix: the usual links](#org1052589)
    - [code examples](#orgcdb70a5)
    - [meeting notes (material from this file)](#org31dcb26)
    - [SF Perl page, has links to mailing list](#org62a8fb0)
    - [perl6-users mailing list archive](#org6ea1789)
  - [misc links via chat](#orgc364a8b)


<a id="org0b06c29"></a>

# meeting notes May 02, 2021


<a id="org0fb0c0c"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="orgc38bfd4"></a>

## agenda stuff


<a id="org848e9e4"></a>

### 69 cent tour of git and github

<https://github.com/doomvox/raku-study/blob/main/notes/69cent_tour_git.md>


<a id="orge98fc64"></a>

### bruce gray rosetta code entry:  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org95dbc9c"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically


<a id="orgfaddeac"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org714b11c"></a>

### programming in the large (david christensen)

1.  larger applications

2.  circular dependencies in functions


<a id="org00ede80"></a>

## ongoing


<a id="org9dbc89d"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="org18e009d"></a>

## announcements


<a id="org08f81d6"></a>

### Next month is mother's day.  No meeting.


<a id="org1052589"></a>

## appendix: the usual links


<a id="orgcdb70a5"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may02>


<a id="org31dcb26"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may02.md>


<a id="org62a8fb0"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="org6ea1789"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc364a8b"></a>

## misc links via chat

14:06:08 From Bill Michels : <https://perlmonks.org/index.pl?node_id=861966>

14:29:42 From Bill Michels : <https://www.openpgp.org/>

14:50:52 From David Christensen : <https://docs.github.com/en/github/authenticating-to-github/githubs-ssh-key-fingerprints>

15:37:02 From Joseph Brenner : git push -u origin main

15:56:35 From Bruce Gray : git init ; git add . ; git commit -m 'Initial commit'

15:59:06 From Bruce Gray : <https://cli.github.com/> 15:59:32 From Joseph Brenner : <https://cli.github.com/> 16:02:52 From Bruce Gray : <https://apple.stackexchange.com/questions/48502/how-can-i-permanently-add-my-ssh-private-key-to-keychain-so-it-is-automatically> 16:19:25 From Bruce Gray : <https://metacpan.org/pod/release/VPARSEVAL/Devel-Calltree-0.00_3/script/calltree> 16:25:13 From Bruce Gray : <http://rosettacode.org/wiki/Discrete_Fourier_transform#Raku> 16:25:17 From Bruce Gray : <http://rosettacode.org/wiki/Coprime_triplets#Raku> 16:35:24 From Joseph Brenner : firefox: 16:35:27 From Joseph Brenner :

fourier=: ] +/@:\* ^@(0j<sub>2p1</sub> \* **/~@i.@# % #) ifourier=: # %~ ] +/@:** ^@(0j2p1 \* \*/~@i.@# % #)
