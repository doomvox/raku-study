- [meeting notes April 24, 2022](#orga32baab)
  - [the raku study group](#org30100e8)
    - [usual links](#orgffb47d7)
  - [the new "darkroast" project](#orge9491fc)
    - [<https://github.com/doomvox/darkroast>](#orgc6fd5cd)
  - [rob ransbottom](#org9dd1d48)
    - [<https://theweeklychallenge.org/>](#org9e46060)
  - [bill michaels](#org0d5fd95)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org3c83b4b)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf4624e0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org706bf0a)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgcb75ed0)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org324a2e2)
  - [postponed from previous meetings](#orga1cec94)
    - [an answer to what's Raku for:](#org7b1ab80)
  - [earlier topics, follow-up some time:](#orga5ffc40)
    - [gui toolkits](#org1bff95b)
  - [untopics](#orgcae278b)
  - [announcements](#orgb72bee1)
    - [May 8th: next raku study group meeting](#orgd2470ae)
    - [June 21-25: tprc: perl/raku conference](#org8436498)


<a id="orga32baab"></a>

# meeting notes April 24, 2022


<a id="org30100e8"></a>

## the raku study group


<a id="orgffb47d7"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orge9491fc"></a>

## the new "darkroast" project


<a id="orgc6fd5cd"></a>

### <https://github.com/doomvox/darkroast>


<a id="org9dd1d48"></a>

## rob ransbottom


<a id="org9e46060"></a>

### <https://theweeklychallenge.org/>


<a id="org0d5fd95"></a>

## bill michaels


<a id="org3c83b4b"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf4624e0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org706bf0a"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgcb75ed0"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org324a2e2"></a>

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


<a id="orga1cec94"></a>

## postponed from previous meetings


<a id="org7b1ab80"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga5ffc40"></a>

## earlier topics, follow-up some time:


<a id="org1bff95b"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgcae278b"></a>

## untopics


<a id="orgb72bee1"></a>

## announcements


<a id="orgd2470ae"></a>

### May 8th: next raku study group meeting


<a id="org8436498"></a>

### June 21-25: tprc: perl/raku conference
