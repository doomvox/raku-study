- [meeting notes April 24, 2022](#orge4c11a4)
  - [the raku study group](#orgf93789a)
    - [usual links](#orgb4c5cf7)
  - [the new "darkroast" project](#orgf6b52e7)
    - [<https://github.com/doomvox/darkroast>](#org10d44dc)
  - [rob ransbottom](#org57c0ea3)
    - [<https://theweeklychallenge.org/>](#orgbb934bf)
  - [bill michaels](#org13571e4)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgad69606)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1cab7bf)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgd0f58dc)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8b45945)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgab7858f)
  - [postponed from previous meetings](#orge86ef11)
    - [an answer to what's Raku for:](#org682f765)
  - [earlier topics, follow-up some time:](#orge620996)
    - [gui toolkits](#org56bbc6a)
  - [untopics](#org08fd9b7)
  - [announcements](#org5a3cfcf)
    - [May 8th: next raku study group meeting](#orgc7c4849)
    - [June 21-25: tprc: perl/raku conference](#org736d847)


<a id="orge4c11a4"></a>

# meeting notes April 24, 2022


<a id="orgf93789a"></a>

## the raku study group


<a id="orgb4c5cf7"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgf6b52e7"></a>

## the new "darkroast" project


<a id="org10d44dc"></a>

### <https://github.com/doomvox/darkroast>


<a id="org57c0ea3"></a>

## rob ransbottom


<a id="orgbb934bf"></a>

### <https://theweeklychallenge.org/>


<a id="org13571e4"></a>

## bill michaels


<a id="orgad69606"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1cab7bf"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd0f58dc"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8b45945"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgab7858f"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
        ~parent/source$ raku -e 'for dir(test => / .+ \\.txt /) {.say};' "persons.txt".IO "time.txt".IO ~/parent/source$ raku -e 'mkdir IO::Path.new("../dest");' ~/parent/source$ raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/\(_", createonly => True};' ~/parent/source\) ls ../dest persons.txt time.txt
    
    2.  <https://docs.raku.org/routine/move>
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not.
        
        1.  Seriously?


<a id="orge86ef11"></a>

## postponed from previous meetings


<a id="org682f765"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge620996"></a>

## earlier topics, follow-up some time:


<a id="org56bbc6a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org08fd9b7"></a>

## untopics


<a id="org5a3cfcf"></a>

## announcements


<a id="orgc7c4849"></a>

### May 8th: next raku study group meeting


<a id="org736d847"></a>

### June 21-25: tprc: perl/raku conference
