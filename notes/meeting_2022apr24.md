- [meeting notes April 24, 2022](#orgae29007)
  - [the raku study group](#orgf26fc59)
    - [usual links](#org375abfc)
  - [the new "darkroast" project](#org29ee41d)
    - [<https://github.com/doomvox/darkroast>](#orge096895)
  - [rob ransbottom](#org7ff532a)
    - [<https://theweeklychallenge.org/>](#org98b2f30)
  - [bill michaels](#orgc5c4e6b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8c3f010)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org41fb626)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org99909ea)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org2923b86)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4e7df5c)
  - [postponed from previous meetings](#orga2fe2ce)
    - [an answer to what's Raku for:](#orgaa939f2)
  - [earlier topics, follow-up some time:](#orgc4cdf63)
    - [gui toolkits](#org78b9412)
  - [untopics](#org29e4cf6)
  - [announcements](#org2a71935)
    - [May 8th: next raku study group meeting](#org4dd1b49)
    - [June 21-25: tprc: perl/raku conference](#orgc5a1bb4)


<a id="orgae29007"></a>

# meeting notes April 24, 2022


<a id="orgf26fc59"></a>

## the raku study group


<a id="org375abfc"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org29ee41d"></a>

## the new "darkroast" project


<a id="orge096895"></a>

### <https://github.com/doomvox/darkroast>


<a id="org7ff532a"></a>

## rob ransbottom


<a id="org98b2f30"></a>

### <https://theweeklychallenge.org/>


<a id="orgc5c4e6b"></a>

## bill michaels


<a id="org8c3f010"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org41fb626"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org99909ea"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org2923b86"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4e7df5c"></a>

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


<a id="orga2fe2ce"></a>

## postponed from previous meetings


<a id="orgaa939f2"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgc4cdf63"></a>

## earlier topics, follow-up some time:


<a id="org78b9412"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org29e4cf6"></a>

## untopics


<a id="org2a71935"></a>

## announcements


<a id="org4dd1b49"></a>

### May 8th: next raku study group meeting


<a id="orgc5a1bb4"></a>

### June 21-25: tprc: perl/raku conference
