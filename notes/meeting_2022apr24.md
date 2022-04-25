- [meeting notes April 24, 2022](#org7f63a87)
  - [the raku study group](#org6875436)
    - [usual links](#org3eb771d)
  - [the new "darkroast" project](#org1c9de8f)
    - [<https://github.com/doomvox/darkroast>](#org82ebc14)
  - [weekly challenge this week, rob ransbottom](#org96b56a4)
    - [<https://theweeklychallenge.org/>](#orgb4b3405)
  - [bill michaels](#org43feb08)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgca06553)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga38453f)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org32904b4)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org6267706)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgbac75c5)
  - [earlier weekly challenge: "four is magic", bruce gray](#orgb46c713)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orgaf43d14)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org9c9f739)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org7443ab6)
  - [equilibirum index](#org16634b0)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orge3287a8)
    - [revisit this next time (Rob solution?)](#org0b37008)
  - [postponed from previous meetings](#org8e9c605)
    - [an answer to what's Raku for:](#orgdb2e11a)
  - [earlier topics, follow-up some time:](#orge09b84d)
    - [gui toolkits](#orgbb3f0aa)
  - [untopics](#org51f1d82)
  - [announcements](#org1cd212a)
    - [May 8th: next raku study group meeting](#org1d9b18e)
    - [June 21-25: tprc: perl/raku conference](#orge85c20c)


<a id="org7f63a87"></a>

# meeting notes April 24, 2022


<a id="org6875436"></a>

## the raku study group


<a id="org3eb771d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org1c9de8f"></a>

## the new "darkroast" project


<a id="org82ebc14"></a>

### <https://github.com/doomvox/darkroast>


<a id="org96b56a4"></a>

## weekly challenge this week, rob ransbottom


<a id="orgb4b3405"></a>

### <https://theweeklychallenge.org/>


<a id="org43feb08"></a>

## bill michaels


<a id="orgca06553"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga38453f"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org32904b4"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org6267706"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgbac75c5"></a>

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


<a id="orgb46c713"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orgaf43d14"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org9c9f739"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org7443ab6"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org16634b0"></a>

## equilibirum index


<a id="orge3287a8"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org0b37008"></a>

### TODO revisit this next time (Rob solution?)


<a id="org8e9c605"></a>

## postponed from previous meetings


<a id="orgdb2e11a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge09b84d"></a>

## earlier topics, follow-up some time:


<a id="orgbb3f0aa"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org51f1d82"></a>

## untopics


<a id="org1cd212a"></a>

## announcements


<a id="org1d9b18e"></a>

### May 8th: next raku study group meeting


<a id="orge85c20c"></a>

### June 21-25: tprc: perl/raku conference
