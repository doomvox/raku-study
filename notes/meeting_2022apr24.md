- [meeting notes April 24, 2022](#org6b2c4ef)
  - [the raku study group](#org66d3c77)
    - [usual links](#orge65a338)
  - [the new "darkroast" project](#org2f0dcb1)
    - [<https://github.com/doomvox/darkroast>](#org4c447e2)
  - [rob ransbottom](#org0987da4)
    - [<https://theweeklychallenge.org/>](#orge056547)
  - [bill michaels](#org5e89122)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7b76c22)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org729dfb0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org72557af)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgae38036)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgec4a5f5)
  - [earlier weekly challenge, bruce gray](#org1c3ee06)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org729cb09)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org6c2d3d3)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org98ef881)
  - [postponed from previous meetings](#org4325bd2)
    - [an answer to what's Raku for:](#orgab61da0)
  - [earlier topics, follow-up some time:](#org3cb07a9)
    - [gui toolkits](#orga0bd20c)
  - [untopics](#org268eb27)
  - [announcements](#orgf399550)
    - [May 8th: next raku study group meeting](#orga84ce71)
    - [June 21-25: tprc: perl/raku conference](#org6a25faa)


<a id="org6b2c4ef"></a>

# meeting notes April 24, 2022


<a id="org66d3c77"></a>

## the raku study group


<a id="orge65a338"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org2f0dcb1"></a>

## the new "darkroast" project


<a id="org4c447e2"></a>

### <https://github.com/doomvox/darkroast>


<a id="org0987da4"></a>

## rob ransbottom


<a id="orge056547"></a>

### <https://theweeklychallenge.org/>


<a id="org5e89122"></a>

## bill michaels


<a id="org7b76c22"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org729dfb0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org72557af"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgae38036"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgec4a5f5"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
        raku -e 'for dir(test => / .+ \\.txt /) {.say};' "persons.txt".IO "time.txt".IO
        
        raku -e 'mkdir IO::Path.new("../dest");'
        
        raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
        
        ls ../dest persons.txt time.txt
    
    2.  <https://docs.raku.org/routine/move>
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not.
        
        1.  Seriously?


<a id="org1c3ee06"></a>

## earlier weekly challenge, bruce gray


<a id="org729cb09"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org6c2d3d3"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org98ef881"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org4325bd2"></a>

## postponed from previous meetings


<a id="orgab61da0"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org3cb07a9"></a>

## earlier topics, follow-up some time:


<a id="orga0bd20c"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org268eb27"></a>

## untopics


<a id="orgf399550"></a>

## announcements


<a id="orga84ce71"></a>

### May 8th: next raku study group meeting


<a id="org6a25faa"></a>

### June 21-25: tprc: perl/raku conference
