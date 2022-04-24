- [meeting notes April 24, 2022](#orgd2f9a3f)
  - [the raku study group](#orgdc7c36f)
    - [usual links](#org027c8ea)
  - [the new "darkroast" project](#orgb07fbfe)
    - [<https://github.com/doomvox/darkroast>](#org794b107)
  - [rob ransbottom](#org3456cd7)
    - [<https://theweeklychallenge.org/>](#org319e4a4)
  - [bill michaels](#org14fe480)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org68a896d)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgfa0c296)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgdbad8af)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgc11483b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org9665931)
  - [earlier weekly challenge: "four is magic", bruce gray](#org4a8e617)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org4426cff)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orgb62661f)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgaa145ee)
  - [equilibirum index](#org6407c68)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org0eeb8af)
    - [revisit this next time](#org941cb8c)
  - [postponed from previous meetings](#org6fd29e7)
    - [an answer to what's Raku for:](#org11ec14a)
  - [earlier topics, follow-up some time:](#org9984700)
    - [gui toolkits](#orge0c1a62)
  - [untopics](#org7856ead)
  - [announcements](#org15ebc90)
    - [May 8th: next raku study group meeting](#org4596f75)
    - [June 21-25: tprc: perl/raku conference](#orgae045f9)


<a id="orgd2f9a3f"></a>

# meeting notes April 24, 2022


<a id="orgdc7c36f"></a>

## the raku study group


<a id="org027c8ea"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgb07fbfe"></a>

## the new "darkroast" project


<a id="org794b107"></a>

### <https://github.com/doomvox/darkroast>


<a id="org3456cd7"></a>

## rob ransbottom


<a id="org319e4a4"></a>

### <https://theweeklychallenge.org/>


<a id="org14fe480"></a>

## bill michaels


<a id="org68a896d"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgfa0c296"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgdbad8af"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgc11483b"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org9665931"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt
    
    8.  <https://docs.raku.org/routine/move>
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not. (( Seriously? ))


<a id="org4a8e617"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org4426cff"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orgb62661f"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgaa145ee"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org6407c68"></a>

## equilibirum index


<a id="org0eeb8af"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org941cb8c"></a>

### TODO revisit this next time


<a id="org6fd29e7"></a>

## postponed from previous meetings


<a id="org11ec14a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org9984700"></a>

## earlier topics, follow-up some time:


<a id="orge0c1a62"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org7856ead"></a>

## untopics


<a id="org15ebc90"></a>

## announcements


<a id="org4596f75"></a>

### May 8th: next raku study group meeting


<a id="orgae045f9"></a>

### June 21-25: tprc: perl/raku conference
