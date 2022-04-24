- [meeting notes April 24, 2022](#org4d5648d)
  - [the raku study group](#orgbee16f2)
    - [usual links](#org9e1ce62)
  - [the new "darkroast" project](#org010133b)
    - [<https://github.com/doomvox/darkroast>](#org6ef6b09)
  - [rob ransbottom](#orgdd56501)
    - [<https://theweeklychallenge.org/>](#org9295fa8)
  - [bill michaels](#org3c9148a)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8461b86)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org935093d)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org144a4ef)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgaf152a7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org694572e)
  - [postponed from previous meetings](#org4874f41)
    - [an answer to what's Raku for:](#orgc415aed)
  - [earlier topics, follow-up some time:](#orga7210ee)
    - [gui toolkits](#org03b3992)
  - [untopics](#org0615f24)
  - [announcements](#org904665f)
    - [May 8th: next raku study group meeting](#orgd1e32fe)
    - [June 21-25: tprc: perl/raku conference](#org3183cbb)


<a id="org4d5648d"></a>

# meeting notes April 24, 2022


<a id="orgbee16f2"></a>

## the raku study group


<a id="org9e1ce62"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org010133b"></a>

## the new "darkroast" project


<a id="org6ef6b09"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgdd56501"></a>

## rob ransbottom


<a id="org9295fa8"></a>

### <https://theweeklychallenge.org/>


<a id="org3c9148a"></a>

## bill michaels


<a id="org8461b86"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org935093d"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org144a4ef"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgaf152a7"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org694572e"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    ~parent/source$ raku -e 'for dir(test => / .+ \\.txt /) {.say};' "persons.txt".IO "time.txt".IO ~/parent/source$ raku -e 'mkdir IO::Path.new("../dest");' ~/parent/source$ raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/\(_", createonly => True};' ~/parent/source\) ls ../dest persons.txt time.txt


<a id="org4874f41"></a>

## postponed from previous meetings


<a id="orgc415aed"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga7210ee"></a>

## earlier topics, follow-up some time:


<a id="org03b3992"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org0615f24"></a>

## untopics


<a id="org904665f"></a>

## announcements


<a id="orgd1e32fe"></a>

### May 8th: next raku study group meeting


<a id="org3183cbb"></a>

### June 21-25: tprc: perl/raku conference
