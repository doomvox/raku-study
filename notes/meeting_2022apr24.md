- [meeting notes April 24, 2022](#org35a2c9a)
  - [the raku study group](#orgae3d1ff)
    - [usual links](#orgf940ff6)
  - [the new "darkroast" project](#org10e05ac)
    - [<https://github.com/doomvox/darkroast>](#orgc33af93)
  - [rob ransbottom](#org9f85784)
    - [<https://theweeklychallenge.org/>](#orga129fa6)
  - [bill michaels](#org399a514)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgdfccfca)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org69c0260)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org62c97a3)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org177d922)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org59191a6)
  - [earlier weekly challenge, bruce gray](#orgc85d6f2)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orgd468cfe)
  - [postponed from previous meetings](#org3db9fcc)
    - [an answer to what's Raku for:](#org974cd54)
  - [earlier topics, follow-up some time:](#org92125bd)
    - [gui toolkits](#org1de8aeb)
  - [untopics](#org3bfaae3)
  - [announcements](#orge6e787e)
    - [May 8th: next raku study group meeting](#org8fd90d0)
    - [June 21-25: tprc: perl/raku conference](#org4a4426c)


<a id="org35a2c9a"></a>

# meeting notes April 24, 2022


<a id="orgae3d1ff"></a>

## the raku study group


<a id="orgf940ff6"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org10e05ac"></a>

## the new "darkroast" project


<a id="orgc33af93"></a>

### <https://github.com/doomvox/darkroast>


<a id="org9f85784"></a>

## rob ransbottom


<a id="orga129fa6"></a>

### <https://theweeklychallenge.org/>


<a id="org399a514"></a>

## bill michaels


<a id="orgdfccfca"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org69c0260"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org62c97a3"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org177d922"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org59191a6"></a>

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


<a id="orgc85d6f2"></a>

## earlier weekly challenge, bruce gray


<a id="orgd468cfe"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org3db9fcc"></a>

## postponed from previous meetings


<a id="org974cd54"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org92125bd"></a>

## earlier topics, follow-up some time:


<a id="org1de8aeb"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org3bfaae3"></a>

## untopics


<a id="orge6e787e"></a>

## announcements


<a id="org8fd90d0"></a>

### May 8th: next raku study group meeting


<a id="org4a4426c"></a>

### June 21-25: tprc: perl/raku conference
