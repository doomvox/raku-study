- [meeting notes April 24, 2022](#org6c2ebff)
  - [the raku study group](#org78475ef)
    - [usual links](#orgec5ec9e)
  - [the new "darkroast" project](#orgb023cc5)
    - [<https://github.com/doomvox/darkroast>](#orga2f7a8e)
  - [rob ransbottom](#org50ff9fa)
    - [<https://theweeklychallenge.org/>](#org86da574)
  - [bill michaels](#orgdb041d8)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8788fac)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgaf46be1)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org8dadf10)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org73698c9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4cc1981)
  - [earlier weekly challenge: "four is magic", bruce gray](#orga144a71)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org6aeff0a)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org936fc50)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgbb6d94d)
  - [postponed from previous meetings](#orgfe2f368)
    - [an answer to what's Raku for:](#org8282287)
  - [earlier topics, follow-up some time:](#orgd09fa18)
    - [gui toolkits](#orgc75f422)
  - [untopics](#org41c80c0)
  - [announcements](#org00d6841)
    - [May 8th: next raku study group meeting](#orgd337af8)
    - [June 21-25: tprc: perl/raku conference](#org81d9d41)


<a id="org6c2ebff"></a>

# meeting notes April 24, 2022


<a id="org78475ef"></a>

## the raku study group


<a id="orgec5ec9e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgb023cc5"></a>

## the new "darkroast" project


<a id="orga2f7a8e"></a>

### <https://github.com/doomvox/darkroast>


<a id="org50ff9fa"></a>

## rob ransbottom


<a id="org86da574"></a>

### <https://theweeklychallenge.org/>


<a id="orgdb041d8"></a>

## bill michaels


<a id="org8788fac"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgaf46be1"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org8dadf10"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org73698c9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4cc1981"></a>

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


<a id="orga144a71"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org6aeff0a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org936fc50"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgbb6d94d"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgfe2f368"></a>

## postponed from previous meetings


<a id="org8282287"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd09fa18"></a>

## earlier topics, follow-up some time:


<a id="orgc75f422"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org41c80c0"></a>

## untopics


<a id="org00d6841"></a>

## announcements


<a id="orgd337af8"></a>

### May 8th: next raku study group meeting


<a id="org81d9d41"></a>

### June 21-25: tprc: perl/raku conference
