- [meeting notes April 24, 2022](#org8aea47b)
  - [the raku study group](#orgfde16e4)
    - [usual links](#org9064e73)
  - [the new "darkroast" project](#org01d217c)
    - [<https://github.com/doomvox/darkroast>](#orgf192013)
  - [rob ransbottom](#org7b29ee4)
    - [<https://theweeklychallenge.org/>](#org8f190a0)
  - [bill michaels](#org89c8ae8)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgde5a77b)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org9057ba2)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org7e72a37)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org699620e)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org90094f1)
  - [earlier weekly challenge: "four is magic", bruce gray](#org164b9fb)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orge18e675)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org51172e0)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org07251f7)
  - [postponed from previous meetings](#orgabef31b)
    - [an answer to what's Raku for:](#orgdc0bc9f)
  - [earlier topics, follow-up some time:](#org0c5f827)
    - [gui toolkits](#org7c26b0f)
  - [untopics](#org42d8e6f)
  - [announcements](#orgadfe32f)
    - [May 8th: next raku study group meeting](#orge6d07be)
    - [June 21-25: tprc: perl/raku conference](#org389dc50)


<a id="org8aea47b"></a>

# meeting notes April 24, 2022


<a id="orgfde16e4"></a>

## the raku study group


<a id="org9064e73"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org01d217c"></a>

## the new "darkroast" project


<a id="orgf192013"></a>

### <https://github.com/doomvox/darkroast>


<a id="org7b29ee4"></a>

## rob ransbottom


<a id="org8f190a0"></a>

### <https://theweeklychallenge.org/>


<a id="org89c8ae8"></a>

## bill michaels


<a id="orgde5a77b"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org9057ba2"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org7e72a37"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org699620e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org90094f1"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt
    
    8.  <https://docs.raku.org/routine/move>
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not.
        
        1.  Seriously?


<a id="org164b9fb"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orge18e675"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org51172e0"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org07251f7"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgabef31b"></a>

## postponed from previous meetings


<a id="orgdc0bc9f"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org0c5f827"></a>

## earlier topics, follow-up some time:


<a id="org7c26b0f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org42d8e6f"></a>

## untopics


<a id="orgadfe32f"></a>

## announcements


<a id="orge6d07be"></a>

### May 8th: next raku study group meeting


<a id="org389dc50"></a>

### June 21-25: tprc: perl/raku conference
