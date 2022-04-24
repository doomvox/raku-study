- [meeting notes April 24, 2022](#orge329c01)
  - [the raku study group](#orga184b76)
    - [usual links](#orgf6dbb79)
  - [the new "darkroast" project](#orga49628f)
    - [<https://github.com/doomvox/darkroast>](#orgf032cad)
  - [rob ransbottom](#orga999e03)
    - [<https://theweeklychallenge.org/>](#orgb113c24)
  - [bill michaels](#org3375ea2)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org0dc548e)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgd397bf6)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org66fc64a)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1041bae)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgcaec75f)
  - [postponed from previous meetings](#org6893ca1)
    - [an answer to what's Raku for:](#orgca5ceec)
  - [earlier topics, follow-up some time:](#orge393356)
    - [gui toolkits](#org0964327)
  - [untopics](#orgc7b95e6)
  - [announcements](#org88d561b)
    - [May 8th: next raku study group meeting](#orgd7c6407)
    - [June 21-25: tprc: perl/raku conference](#orgd8d78b3)


<a id="orge329c01"></a>

# meeting notes April 24, 2022


<a id="orga184b76"></a>

## the raku study group


<a id="orgf6dbb79"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orga49628f"></a>

## the new "darkroast" project


<a id="orgf032cad"></a>

### <https://github.com/doomvox/darkroast>


<a id="orga999e03"></a>

## rob ransbottom


<a id="orgb113c24"></a>

### <https://theweeklychallenge.org/>


<a id="org3375ea2"></a>

## bill michaels


<a id="org0dc548e"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgd397bf6"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org66fc64a"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1041bae"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgcaec75f"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
        ~parent/source$ raku -e 'for dir(test => / .+ \\.txt /) {.say};' "persons.txt".IO "time.txt".IO ~/parent/source$ raku -e 'mkdir IO::Path.new("../dest");' ~/parent/source$ raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/\(_", createonly => True};' ~/parent/source\) ls ../dest persons.txt time.txt


<a id="org6893ca1"></a>

## postponed from previous meetings


<a id="orgca5ceec"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge393356"></a>

## earlier topics, follow-up some time:


<a id="org0964327"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgc7b95e6"></a>

## untopics


<a id="org88d561b"></a>

## announcements


<a id="orgd7c6407"></a>

### May 8th: next raku study group meeting


<a id="orgd8d78b3"></a>

### June 21-25: tprc: perl/raku conference
