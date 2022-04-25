- [meeting notes April 24, 2022](#org28562d9)
  - [the raku study group](#org55140e6)
    - [usual links](#org2c6e45e)
  - [the new "darkroast" project](#orgebb6c4c)
    - [<https://github.com/doomvox/darkroast>](#orge7bfc7f)
  - [weekly challenge this week, rob ransbottom](#org66e557f)
    - [<https://theweeklychallenge.org/>](#orga5e762b)
  - [bill michaels](#orgde00933)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org2649bc1)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org3c8f4dc)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgde9775f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org0bb230b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgdea45f0)
  - [earlier weekly challenge: "four is magic", bruce gray](#orgbe49c50)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org320d6d0)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org6042747)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orge4ffd1e)
  - [equilibirum index](#org924d30a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orga9bdb07)
    - [revisit this next time (Rob solution?)](#orgc29a523)
  - [postponed from previous meetings](#org31c4c24)
    - [an answer to what's Raku for:](#orgf6087f2)
  - [earlier topics, follow-up some time:](#orgc83a55a)
    - [gui toolkits](#orgf490cf6)
  - [untopics](#org83b0f12)
  - [announcements](#org8bb42e0)
    - [May 8th: next raku study group meeting](#orgae7690e)
    - [June 21-25: tprc: perl/raku conference](#orgb01e367)


<a id="org28562d9"></a>

# meeting notes April 24, 2022


<a id="org55140e6"></a>

## the raku study group


<a id="org2c6e45e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="orgebb6c4c"></a>

## the new "darkroast" project


<a id="orge7bfc7f"></a>

### <https://github.com/doomvox/darkroast>


<a id="org66e557f"></a>

## weekly challenge this week, rob ransbottom


<a id="orga5e762b"></a>

### <https://theweeklychallenge.org/>


<a id="orgde00933"></a>

## bill michaels


<a id="org2649bc1"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org3c8f4dc"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgde9775f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org0bb230b"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgdea45f0"></a>

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


<a id="orgbe49c50"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org320d6d0"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org6042747"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orge4ffd1e"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org924d30a"></a>

## equilibirum index


<a id="orga9bdb07"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgc29a523"></a>

### TODO revisit this next time (Rob solution?)


<a id="org31c4c24"></a>

## postponed from previous meetings


<a id="orgf6087f2"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgc83a55a"></a>

## earlier topics, follow-up some time:


<a id="orgf490cf6"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org83b0f12"></a>

## untopics


<a id="org8bb42e0"></a>

## announcements


<a id="orgae7690e"></a>

### May 8th: next raku study group meeting


<a id="orgb01e367"></a>

### June 21-25: tprc: perl/raku conference
