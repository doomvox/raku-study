- [meeting notes May 02, 2021](#orgf509c07)
  - [meeting links](#orge913c8c)
  - [agenda stuff](#org1a928f2)
    - [69 cent tour of git and github](#orgab5f9e6)
    - [bruce gray rosetta code entry:  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#org19d36e2)
    - [type system: what is accepted by what](#orgaa4ab19)
    - [raku classes as data containers](#org29b6b95)
    - [programming in the large (david christensen)](#org63a97c3)
  - [ongoing](#org61d8991)
    - [raku idioms](#org094629f)
  - [announcements](#orgaaba741)
    - [Next month is mother's day.  No meeting.](#orge8ba583)
  - [appendix: the usual links](#org16e1e1f)
    - [code examples](#org34f98e7)
    - [meeting notes (material from this file)](#org54ff66b)
    - [SF Perl page, has links to mailing list](#org5ffe89b)
    - [perl6-users mailing list archive](#orgb65a448)
  - [misc links via chat](#org12426b0)


<a id="orgf509c07"></a>

# meeting notes May 02, 2021


<a id="orge913c8c"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="org1a928f2"></a>

## agenda stuff


<a id="orgab5f9e6"></a>

### 69 cent tour of git and github

<https://github.com/doomvox/raku-study/blob/main/notes/69cent_tour_git.md>


<a id="org19d36e2"></a>

### bruce gray rosetta code entry:  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgaa4ab19"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically


<a id="org29b6b95"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org63a97c3"></a>

### programming in the large (david christensen)

1.  larger applications

2.  circular dependencies in functions


<a id="org61d8991"></a>

## ongoing


<a id="org094629f"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orgaaba741"></a>

## announcements


<a id="orge8ba583"></a>

### Next month is mother's day.  No meeting.


<a id="org16e1e1f"></a>

## appendix: the usual links


<a id="org34f98e7"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may02>


<a id="org54ff66b"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may02.md>


<a id="org5ffe89b"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgb65a448"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="org12426b0"></a>

## misc links via chat

14:06:08 From Bill Michels : <https://perlmonks.org/index.pl?node_id=861966>

14:29:42 From Bill Michels : <https://www.openpgp.org/>

14:50:52 From David Christensen : <https://docs.github.com/en/github/authenticating-to-github/githubs-ssh-key-fingerprints>

15:37:02 From Joseph Brenner : git push -u origin main 15:56:35 From Bruce Gray : git init ; git add . ; git commit -m 'Initial commit' 15:59:06 From Bruce Gray : <https://cli.github.com/> 15:59:32 From Joseph Brenner : <https://cli.github.com/> 16:02:52 From Bruce Gray : <https://apple.stackexchange.com/questions/48502/how-can-i-permanently-add-my-ssh-private-key-to-keychain-so-it-is-automatically> 16:19:25 From Bruce Gray : <https://metacpan.org/pod/release/VPARSEVAL/Devel-Calltree-0.00_3/script/calltree> 16:25:13 From Bruce Gray : <http://rosettacode.org/wiki/Discrete_Fourier_transform#Raku> 16:25:17 From Bruce Gray : <http://rosettacode.org/wiki/Coprime_triplets#Raku> 16:35:24 From Joseph Brenner : firefox: 16:35:27 From Joseph Brenner :

fourier=: ] +/@:\* ^@(0j<sub>2p1</sub> \* **/~@i.@# % #) ifourier=: # %~ ] +/@:** ^@(0j2p1 \* \*/~@i.@# % #)
