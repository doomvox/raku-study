- [meeting notes May 02, 2021](#org87d50b4)
  - [meeting links](#orgae069fb)
  - [agenda stuff](#org73ecb15)
    - [69 cent tour of git and github](#org00d1fa0)
    - [bruce gray rosetta code entry:  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#orgd7591a3)
    - [type system: what is accepted by what](#orgd221cb8)
    - [raku classes as data containers](#org9794d1c)
    - [programming in the large (david christensen)](#orge18d2b3)
  - [ongoing](#org7ef24e6)
    - [raku idioms](#orgefc8ced)
  - [announcements](#orga08c55a)
    - [Next month is mother's day.  No meeting.](#org018a5aa)
  - [appendix: the usual links](#orgf02e2a7)
    - [code examples](#org72ef160)
    - [meeting notes (material from this file)](#org09f4664)
    - [SF Perl page, has links to mailing list](#org69ca7a4)
    - [perl6-users mailing list archive](#orgf2d7831)
  - [misc links via chat](#orgc6700fd)


<a id="org87d50b4"></a>

# meeting notes May 02, 2021


<a id="orgae069fb"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="org73ecb15"></a>

## agenda stuff


<a id="org00d1fa0"></a>

### 69 cent tour of git and github

<https://github.com/doomvox/raku-study/blob/main/notes/69cent_tour_git.md>


<a id="orgd7591a3"></a>

### bruce gray rosetta code entry:  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="orgd221cb8"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically


<a id="org9794d1c"></a>

### raku classes as data containers

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="orge18d2b3"></a>

### programming in the large (david christensen)

1.  larger applications

2.  circular dependencies in functions


<a id="org7ef24e6"></a>

## ongoing


<a id="orgefc8ced"></a>

### raku idioms

1.  <https://github.com/doomvox/raku-study/blob/main/notes/idioms.org>

    1.  <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
    
    2.  maybe: favor methods over functions?


<a id="orga08c55a"></a>

## announcements


<a id="org018a5aa"></a>

### Next month is mother's day.  No meeting.


<a id="orgf02e2a7"></a>

## appendix: the usual links


<a id="org72ef160"></a>

### code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021may02>


<a id="org09f4664"></a>

### meeting notes (material from this file)

<https://github.com/doomvox/raku-study/tree/main/notes/meeting_2021may02.md>


<a id="org69ca7a4"></a>

### SF Perl page, has links to mailing list

<http://sf.pm.org/>


<a id="orgf2d7831"></a>

### perl6-users mailing list archive

<https://www.nntp.perl.org/group/perl.perl6.users/>


<a id="orgc6700fd"></a>

## misc links via chat

14:06:08 From Bill Michels : <https://perlmonks.org/index.pl?node_id=861966>

14:29:42 From Bill Michels : <https://www.openpgp.org/>

14:50:52 From David Christensen : <https://docs.github.com/en/github/authenticating-to-github/githubs-ssh-key-fingerprints>

15:37:02 From Joseph Brenner : git push -u origin main 15:56:35 From Bruce Gray : git init ; git add . ; git commit -m 'Initial commit'

15:59:06 From Bruce Gray : <https://cli.github.com/> 15:59:32 From Joseph Brenner : <https://cli.github.com/> 16:02:52 From Bruce Gray : <https://apple.stackexchange.com/questions/48502/how-can-i-permanently-add-my-ssh-private-key-to-keychain-so-it-is-automatically> 16:19:25 From Bruce Gray : <https://metacpan.org/pod/release/VPARSEVAL/Devel-Calltree-0.00_3/script/calltree> 16:25:13 From Bruce Gray : <http://rosettacode.org/wiki/Discrete_Fourier_transform#Raku> 16:25:17 From Bruce Gray : <http://rosettacode.org/wiki/Coprime_triplets#Raku> 16:35:24 From Joseph Brenner : firefox: 16:35:27 From Joseph Brenner :

fourier=: ] +/@:\* ^@(0j<sub>2p1</sub> \* **/~@i.@# % #) ifourier=: # %~ ] +/@:** ^@(0j2p1 \* \*/~@i.@# % #)
