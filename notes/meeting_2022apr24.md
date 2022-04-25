- [meeting notes April 24, 2022](#orgc8bb273)
  - [the raku study group](#org7714922)
    - [usual links](#org186ee83)
  - [the new "darkroast" project](#orgf436559)
    - [<https://github.com/doomvox/darkroast>](#org1ed6b18)
  - [weekly challenge this week, rob ransbottom](#orgdf13e00)
    - [<https://theweeklychallenge.org/>](#orgbee727c)
  - [bill michaels](#org51ca255)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc157dbe)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf9454c0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org3e9d2f5)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3c3d777)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org2f51409)
  - [earlier weekly challenge: "four is magic", bruce gray](#org8748f16)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org31840be)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orgeaa1fc7)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org4dd2582)
  - [equilibirum index](#org265bad7)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org15fb09d)
    - [revisit this next time (Rob solution?)](#org4da79c6)
  - [postponed from previous meetings](#orgc59d600)
    - [an answer to what's Raku for:](#org1633d63)
  - [Rob's interested in discussing missing basic tools](#orge6ef5ce)
  - [earlier topics, follow-up some time:](#org5d664e7)
    - [gui toolkits](#orga495c55)
  - [announcements](#orgcc568ca)
    - [May 8th: next raku study group meeting](#org5d1bb48)
    - [June 21-25: tprc: perl/raku conference](#org67ad9a8)


<a id="orgc8bb273"></a>

# meeting notes April 24, 2022


<a id="org7714922"></a>

## the raku study group


<a id="org186ee83"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgf436559"></a>

## the new "darkroast" project


<a id="org1ed6b18"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgdf13e00"></a>

## weekly challenge this week, rob ransbottom


<a id="orgbee727c"></a>

### <https://theweeklychallenge.org/>


<a id="org51ca255"></a>

## bill michaels


<a id="orgc157dbe"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf9454c0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org3e9d2f5"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3c3d777"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org2f51409"></a>

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


<a id="org8748f16"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org31840be"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orgeaa1fc7"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org4dd2582"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org265bad7"></a>

## equilibirum index


<a id="org15fb09d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org4da79c6"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgc59d600"></a>

## postponed from previous meetings


<a id="org1633d63"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge6ef5ce"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org5d664e7"></a>

## earlier topics, follow-up some time:


<a id="orga495c55"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgcc568ca"></a>

## announcements


<a id="org5d1bb48"></a>

### May 8th: next raku study group meeting


<a id="org67ad9a8"></a>

### June 21-25: tprc: perl/raku conference
