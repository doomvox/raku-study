- [meeting notes April 24, 2022](#orga354732)
  - [the raku study group](#org1b13fba)
    - [usual links](#orgd0fd6a6)
  - [the new "darkroast" project](#orge05df72)
    - [<https://github.com/doomvox/darkroast>](#orgbd21f83)
  - [rob ransbottom](#orgde3baff)
    - [<https://theweeklychallenge.org/>](#org1a20f26)
  - [bill michaels](#org9f7f31e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org3b5a11d)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1c75344)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgd38c7db)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgc22aff9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org7c915b3)
  - [earlier weekly challenge "four is magic", bruce gray](#org74db2e2)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orgd281775)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org3bdd6e3)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgf5a1d22)
  - [postponed from previous meetings](#orgf93f14b)
    - [an answer to what's Raku for:](#orgf0b209c)
  - [earlier topics, follow-up some time:](#org0756351)
    - [gui toolkits](#orgb0d6ec4)
  - [untopics](#org11cb22e)
  - [announcements](#org620fd11)
    - [May 8th: next raku study group meeting](#org3b03e9a)
    - [June 21-25: tprc: perl/raku conference](#orge1be3a6)


<a id="orga354732"></a>

# meeting notes April 24, 2022


<a id="org1b13fba"></a>

## the raku study group


<a id="orgd0fd6a6"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orge05df72"></a>

## the new "darkroast" project


<a id="orgbd21f83"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgde3baff"></a>

## rob ransbottom


<a id="org1a20f26"></a>

### <https://theweeklychallenge.org/>


<a id="org9f7f31e"></a>

## bill michaels


<a id="org3b5a11d"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1c75344"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd38c7db"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgc22aff9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org7c915b3"></a>

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


<a id="org74db2e2"></a>

## earlier weekly challenge "four is magic", bruce gray


<a id="orgd281775"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org3bdd6e3"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgf5a1d22"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgf93f14b"></a>

## postponed from previous meetings


<a id="orgf0b209c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org0756351"></a>

## earlier topics, follow-up some time:


<a id="orgb0d6ec4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org11cb22e"></a>

## untopics


<a id="org620fd11"></a>

## announcements


<a id="org3b03e9a"></a>

### May 8th: next raku study group meeting


<a id="orge1be3a6"></a>

### June 21-25: tprc: perl/raku conference
