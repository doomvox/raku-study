- [meeting notes April 24, 2022](#orgbfd9ce4)
  - [the raku study group](#org785c2e2)
    - [usual links](#orga6b1b16)
  - [the new "darkroast" project](#orgb49d9dc)
    - [<https://github.com/doomvox/darkroast>](#orgb6fd09f)
  - [rob ransbottom](#orge1730f4)
    - [<https://theweeklychallenge.org/>](#org33a4bbd)
  - [bill michaels](#org6e0ed17)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1d5e53d)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7855417)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org76a0593)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgaaf173f)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org3fde648)
  - [earlier weekly challenge: "four is magic", bruce gray](#orgc04fc32)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org9d3022a)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org720b7c1)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgf99196b)
  - [equilibirum index](#org3a51fe5)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgcb0e334)
    - [revisit this next time (Rob solution?)](#orgbc1f1a2)
  - [postponed from previous meetings](#org3f3d9a8)
    - [an answer to what's Raku for:](#org8a049bc)
  - [earlier topics, follow-up some time:](#org56dad7a)
    - [gui toolkits](#org3f279c7)
  - [untopics](#org6b04c21)
  - [announcements](#org5d3e05b)
    - [May 8th: next raku study group meeting](#org05cfd81)
    - [June 21-25: tprc: perl/raku conference](#org1b731eb)


<a id="orgbfd9ce4"></a>

# meeting notes April 24, 2022


<a id="org785c2e2"></a>

## the raku study group


<a id="orga6b1b16"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgb49d9dc"></a>

## the new "darkroast" project


<a id="orgb6fd09f"></a>

### <https://github.com/doomvox/darkroast>


<a id="orge1730f4"></a>

## rob ransbottom


<a id="org33a4bbd"></a>

### <https://theweeklychallenge.org/>


<a id="org6e0ed17"></a>

## bill michaels


<a id="org1d5e53d"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7855417"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org76a0593"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgaaf173f"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org3fde648"></a>

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


<a id="orgc04fc32"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org9d3022a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org720b7c1"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgf99196b"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org3a51fe5"></a>

## equilibirum index


<a id="orgcb0e334"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgbc1f1a2"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3f3d9a8"></a>

## postponed from previous meetings


<a id="org8a049bc"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org56dad7a"></a>

## earlier topics, follow-up some time:


<a id="org3f279c7"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org6b04c21"></a>

## untopics


<a id="org5d3e05b"></a>

## announcements


<a id="org05cfd81"></a>

### May 8th: next raku study group meeting


<a id="org1b731eb"></a>

### June 21-25: tprc: perl/raku conference
