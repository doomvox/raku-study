- [meeting notes April 24, 2022](#org9d0b803)
  - [the raku study group](#orge21e3f9)
    - [usual links](#org875320d)
  - [the new "darkroast" project](#org0e28a85)
    - [<https://github.com/doomvox/darkroast>](#org0905671)
  - [rob ransbottom](#org91f9cb8)
    - [<https://theweeklychallenge.org/>](#orgfce8752)
  - [bill michaels](#org6de1814)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8fdeb05)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgd5483a0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgd84bde1)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgd21a035)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org64ee706)
  - [earlier weekly challenge: "four is magic", bruce gray](#org93e45b2)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orge197942)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org82f9ccc)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org5ec4bea)
  - [postponed from previous meetings](#orgdd33cb4)
    - [an answer to what's Raku for:](#org2b240cd)
  - [earlier topics, follow-up some time:](#org5817efb)
    - [gui toolkits](#org3826519)
  - [untopics](#org4182b08)
  - [announcements](#org75ff077)
    - [May 8th: next raku study group meeting](#orgb0f3c41)
    - [June 21-25: tprc: perl/raku conference](#org8fd80de)


<a id="org9d0b803"></a>

# meeting notes April 24, 2022


<a id="orge21e3f9"></a>

## the raku study group


<a id="org875320d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org0e28a85"></a>

## the new "darkroast" project


<a id="org0905671"></a>

### <https://github.com/doomvox/darkroast>


<a id="org91f9cb8"></a>

## rob ransbottom


<a id="orgfce8752"></a>

### <https://theweeklychallenge.org/>


<a id="org6de1814"></a>

## bill michaels


<a id="org8fdeb05"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgd5483a0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgd84bde1"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgd21a035"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org64ee706"></a>

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
    
        To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not. (( Seriously? ))


<a id="org93e45b2"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orge197942"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org82f9ccc"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org5ec4bea"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgdd33cb4"></a>

## postponed from previous meetings


<a id="org2b240cd"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org5817efb"></a>

## earlier topics, follow-up some time:


<a id="org3826519"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org4182b08"></a>

## untopics


<a id="org75ff077"></a>

## announcements


<a id="orgb0f3c41"></a>

### May 8th: next raku study group meeting


<a id="org8fd80de"></a>

### June 21-25: tprc: perl/raku conference
