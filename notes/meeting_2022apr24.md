- [meeting notes April 24, 2022](#org43346f8)
  - [the raku study group](#org1f1b3e1)
    - [usual links](#org7ebf685)
  - [the new "darkroast" project](#orgf2d865d)
    - [<https://github.com/doomvox/darkroast>](#org7f89a63)
  - [rob ransbottom](#org92f6ef2)
    - [<https://theweeklychallenge.org/>](#org6e7697e)
  - [bill michaels](#org9d588d7)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf2b45e9)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgb3ef774)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org1eac0ed)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org0706fcd)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgec1ab16)
  - [postponed from previous meetings](#org186d7a2)
    - [an answer to what's Raku for:](#org7071621)
  - [earlier topics, follow-up some time:](#org2114367)
    - [gui toolkits](#org393e0c4)
  - [untopics](#org758e7a6)
  - [announcements](#org54af00f)
    - [May 8th: next raku study group meeting](#org31ce022)
    - [June 21-25: tprc: perl/raku conference](#org62ec09f)


<a id="org43346f8"></a>

# meeting notes April 24, 2022


<a id="org1f1b3e1"></a>

## the raku study group


<a id="org7ebf685"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgf2d865d"></a>

## the new "darkroast" project


<a id="org7f89a63"></a>

### <https://github.com/doomvox/darkroast>


<a id="org92f6ef2"></a>

## rob ransbottom


<a id="org6e7697e"></a>

### <https://theweeklychallenge.org/>


<a id="org9d588d7"></a>

## bill michaels


<a id="orgf2b45e9"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgb3ef774"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org1eac0ed"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org0706fcd"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgec1ab16"></a>

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


<a id="org186d7a2"></a>

## postponed from previous meetings


<a id="org7071621"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2114367"></a>

## earlier topics, follow-up some time:


<a id="org393e0c4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org758e7a6"></a>

## untopics


<a id="org54af00f"></a>

## announcements


<a id="org31ce022"></a>

### May 8th: next raku study group meeting


<a id="org62ec09f"></a>

### June 21-25: tprc: perl/raku conference
