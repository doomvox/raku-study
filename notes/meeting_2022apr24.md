- [meeting notes April 24, 2022](#org89ef285)
  - [the raku study group](#org6ba6c3b)
    - [usual links](#org79cb588)
  - [the new "darkroast" project](#orgc26c6bc)
    - [<https://github.com/doomvox/darkroast>](#org6bdddc1)
  - [rob ransbottom](#org15cb539)
    - [<https://theweeklychallenge.org/>](#orgd496161)
  - [bill michaels](#org2011c45)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org9af1e83)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org5b2a080)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org25982cf)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3e714e8)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org81621e9)
  - [postponed from previous meetings](#orgf0484a4)
    - [an answer to what's Raku for:](#orgd084967)
  - [earlier topics, follow-up some time:](#orgcbed75e)
    - [gui toolkits](#org6aa6e30)
  - [untopics](#org1d3d408)
  - [announcements](#orga9ced67)
    - [May 8th: next raku study group meeting](#orgd0e1476)
    - [June 21-25: tprc: perl/raku conference](#org9da1157)


<a id="org89ef285"></a>

# meeting notes April 24, 2022


<a id="org6ba6c3b"></a>

## the raku study group


<a id="org79cb588"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgc26c6bc"></a>

## the new "darkroast" project


<a id="org6bdddc1"></a>

### <https://github.com/doomvox/darkroast>


<a id="org15cb539"></a>

## rob ransbottom


<a id="orgd496161"></a>

### <https://theweeklychallenge.org/>


<a id="org2011c45"></a>

## bill michaels


<a id="org9af1e83"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org5b2a080"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org25982cf"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3e714e8"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org81621e9"></a>

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


<a id="orgf0484a4"></a>

## postponed from previous meetings


<a id="orgd084967"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgcbed75e"></a>

## earlier topics, follow-up some time:


<a id="org6aa6e30"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org1d3d408"></a>

## untopics


<a id="orga9ced67"></a>

## announcements


<a id="orgd0e1476"></a>

### May 8th: next raku study group meeting


<a id="org9da1157"></a>

### June 21-25: tprc: perl/raku conference
