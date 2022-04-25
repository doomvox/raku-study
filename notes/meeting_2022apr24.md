- [meeting notes April 24, 2022](#org9b16941)
  - [the raku study group](#org07e4468)
    - [usual links](#orgdb81b39)
  - [the new "darkroast" project](#orgeda9df0)
    - [<https://github.com/doomvox/darkroast>](#orgca78451)
  - [weekly challenge this week, rob ransbottom](#orgf8e52ce)
    - [<https://theweeklychallenge.org/>](#orgd956e80)
  - [bill michaels](#orgc0a5628)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org6616a80)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1f52ebd)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgac59378)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org95e1a29)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgf40e162)
  - [earlier weekly challenge: "four is magic", bruce gray](#orgcf097f7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orga4fa3f3)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org3413753)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgaa0165b)
  - [equilibirum index](#org6a783b3)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org39f06ac)
    - [revisit this next time (Rob solution?)](#org20a1d78)
  - [postponed from previous meetings](#org00d187a)
    - [an answer to what's Raku for:](#org2c9df71)
  - [Rob's interested in discussing missing basic tools](#org4956796)
  - [earlier topics, follow-up some time:](#org41a36fa)
    - [gui toolkits](#org6c1c28c)
  - [announcements](#org5875486)
    - [May 8th: next raku study group meeting](#orgf85217c)
    - [June 21-25: tprc: perl/raku conference](#org7576f2d)


<a id="org9b16941"></a>

# meeting notes April 24, 2022


<a id="org07e4468"></a>

## the raku study group


<a id="orgdb81b39"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgeda9df0"></a>

## the new "darkroast" project


<a id="orgca78451"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgf8e52ce"></a>

## weekly challenge this week, rob ransbottom


<a id="orgd956e80"></a>

### <https://theweeklychallenge.org/>


<a id="orgc0a5628"></a>

## bill michaels


<a id="org6616a80"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1f52ebd"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgac59378"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org95e1a29"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgf40e162"></a>

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
    
        1.  To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not.
        
            1.  TODO (( Seriously? ))


<a id="orgcf097f7"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orga4fa3f3"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org3413753"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgaa0165b"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org6a783b3"></a>

## equilibirum index


<a id="org39f06ac"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org20a1d78"></a>

### TODO revisit this next time (Rob solution?)


<a id="org00d187a"></a>

## postponed from previous meetings


<a id="org2c9df71"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org4956796"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org41a36fa"></a>

## earlier topics, follow-up some time:


<a id="org6c1c28c"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org5875486"></a>

## announcements


<a id="orgf85217c"></a>

### May 8th: next raku study group meeting


<a id="org7576f2d"></a>

### June 21-25: tprc: perl/raku conference
