- [meeting notes April 24, 2022](#org8d6c5af)
  - [the raku study group](#orgb01d29a)
    - [usual links](#orgc7bb929)
  - [the new "darkroast" project](#org609c43a)
    - [<https://github.com/doomvox/darkroast>](#org1e0e9bc)
  - [rob ransbottom](#org07b7333)
    - [<https://theweeklychallenge.org/>](#orga8b0933)
  - [bill michaels](#org9a4bdc7)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org680e29d)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc26abe1)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org7d221b2)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org4d89ba9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6415c3a)
  - [postponed from previous meetings](#org038ff2c)
    - [an answer to what's Raku for:](#orgbcdeaba)
  - [earlier topics, follow-up some time:](#org482912c)
    - [gui toolkits](#org74c2d8b)
  - [untopics](#orgfcb63fe)
  - [announcements](#org53d2f15)
    - [May 8th: next raku study group meeting](#org295583e)
    - [June 21-25: tprc: perl/raku conference](#orgcbff3f5)


<a id="org8d6c5af"></a>

# meeting notes April 24, 2022


<a id="orgb01d29a"></a>

## the raku study group


<a id="orgc7bb929"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org609c43a"></a>

## the new "darkroast" project


<a id="org1e0e9bc"></a>

### <https://github.com/doomvox/darkroast>


<a id="org07b7333"></a>

## rob ransbottom


<a id="orga8b0933"></a>

### <https://theweeklychallenge.org/>


<a id="org9a4bdc7"></a>

## bill michaels


<a id="org680e29d"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc26abe1"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org7d221b2"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org4d89ba9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org6415c3a"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

~parent/source$ raku -e 'for dir(test => / .+ \\.txt /) {.say};' "persons.txt".IO "time.txt".IO ~/parent/source$ raku -e 'mkdir IO::Path.new("../dest");' ~/parent/source$ raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/\(_", createonly => True};' ~/parent/source\) ls ../dest persons.txt time.txt


<a id="org038ff2c"></a>

## postponed from previous meetings


<a id="orgbcdeaba"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org482912c"></a>

## earlier topics, follow-up some time:


<a id="org74c2d8b"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgfcb63fe"></a>

## untopics


<a id="org53d2f15"></a>

## announcements


<a id="org295583e"></a>

### May 8th: next raku study group meeting


<a id="orgcbff3f5"></a>

### June 21-25: tprc: perl/raku conference
