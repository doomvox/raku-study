- [meeting notes April 24, 2022](#org1d70360)
  - [the raku study group](#org3c48c44)
    - [usual links](#org5064c27)
  - [the new "darkroast" project](#org9ee4777)
    - [<https://github.com/doomvox/darkroast>](#org82236d3)
  - [rob ransbottom](#org901fbd2)
    - [<https://theweeklychallenge.org/>](#org2aa5ab1)
  - [bill michaels](#org423b1ec)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org70c888b)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org9a8964c)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org736afdf)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3997aa4)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org24eaf45)
  - [earlier weekly challenge: "four is magic", bruce gray](#org6e3b1da)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org5a8b76a)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org03c1c89)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgae46bcb)
  - [equilibirum index](#org24f0f51)
  - [postponed from previous meetings](#orgc71d5ca)
    - [an answer to what's Raku for:](#orgd37ecaf)
  - [earlier topics, follow-up some time:](#org85db6f7)
    - [gui toolkits](#org3e3b00a)
  - [untopics](#org4e5c0cb)
  - [announcements](#org54a0c2f)
    - [May 8th: next raku study group meeting](#orgec9eb91)
    - [June 21-25: tprc: perl/raku conference](#org6b872bf)


<a id="org1d70360"></a>

# meeting notes April 24, 2022


<a id="org3c48c44"></a>

## the raku study group


<a id="org5064c27"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org9ee4777"></a>

## the new "darkroast" project


<a id="org82236d3"></a>

### <https://github.com/doomvox/darkroast>


<a id="org901fbd2"></a>

## rob ransbottom


<a id="org2aa5ab1"></a>

### <https://theweeklychallenge.org/>


<a id="org423b1ec"></a>

## bill michaels


<a id="org70c888b"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org9a8964c"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org736afdf"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3997aa4"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org24eaf45"></a>

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


<a id="org6e3b1da"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org5a8b76a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org03c1c89"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgae46bcb"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org24f0f51"></a>

## equilibirum index

<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgc71d5ca"></a>

## postponed from previous meetings


<a id="orgd37ecaf"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org85db6f7"></a>

## earlier topics, follow-up some time:


<a id="org3e3b00a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org4e5c0cb"></a>

## untopics


<a id="org54a0c2f"></a>

## announcements


<a id="orgec9eb91"></a>

### May 8th: next raku study group meeting


<a id="org6b872bf"></a>

### June 21-25: tprc: perl/raku conference
