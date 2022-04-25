- [meeting notes April 24, 2022](#orge46b6ae)
  - [the raku study group](#orgf6d5c40)
    - [usual links](#orgdfdfc53)
  - [the new "darkroast" project](#org174e23a)
    - [<https://github.com/doomvox/darkroast>](#org5097fbb)
  - [weekly challenge this week, rob ransbottom](#orge62b8e2)
    - [<https://theweeklychallenge.org/>](#org215748d)
  - [bill michaels](#org0af0f80)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf66d00f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga1150ee)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org6c7e313)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org2d730bb)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org64d8c3c)
  - [earlier weekly challenge: "four is magic", bruce gray](#org1862b7c)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org388dbb4)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orgc32271b)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org5f84d57)
  - [equilibirum index](#org46505f7)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org350c540)
    - [revisit this next time (Rob solution?)](#org44b89be)
  - [postponed from previous meetings](#org7cfaf64)
    - [an answer to what's Raku for:](#org3da596c)
  - [earlier topics, follow-up some time:](#org2b463aa)
    - [gui toolkits](#org760da92)
  - [untopics](#org41badfe)
  - [announcements](#org2a15f17)
    - [May 8th: next raku study group meeting](#org83a2fc2)
    - [June 21-25: tprc: perl/raku conference](#orgbafc28e)


<a id="orge46b6ae"></a>

# meeting notes April 24, 2022


<a id="orgf6d5c40"></a>

## the raku study group


<a id="orgdfdfc53"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org174e23a"></a>

## the new "darkroast" project


<a id="org5097fbb"></a>

### <https://github.com/doomvox/darkroast>


<a id="orge62b8e2"></a>

## weekly challenge this week, rob ransbottom


<a id="org215748d"></a>

### <https://theweeklychallenge.org/>


<a id="org0af0f80"></a>

## bill michaels


<a id="orgf66d00f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga1150ee"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org6c7e313"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org2d730bb"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org64d8c3c"></a>

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


<a id="org1862b7c"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org388dbb4"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orgc32271b"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org5f84d57"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org46505f7"></a>

## equilibirum index


<a id="org350c540"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org44b89be"></a>

### TODO revisit this next time (Rob solution?)


<a id="org7cfaf64"></a>

## postponed from previous meetings


<a id="org3da596c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2b463aa"></a>

## earlier topics, follow-up some time:


<a id="org760da92"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org41badfe"></a>

## untopics


<a id="org2a15f17"></a>

## announcements


<a id="org83a2fc2"></a>

### May 8th: next raku study group meeting


<a id="orgbafc28e"></a>

### June 21-25: tprc: perl/raku conference
