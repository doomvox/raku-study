- [meeting notes April 24, 2022](#org7dbfeee)
  - [the raku study group](#org78ac0f8)
    - [usual links](#org233aca4)
  - [the new "darkroast" project](#org7a388e5)
    - [<https://github.com/doomvox/darkroast>](#org34494fa)
  - [rob ransbottom](#org14d0a8d)
    - [<https://theweeklychallenge.org/>](#org1374a7e)
  - [bill michaels](#org09c8e58)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgaddc7bd)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org57f7e08)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org21ace4a)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org52ffd81)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org5aa88ff)
  - [earlier weekly challenge: "four is magic", bruce gray](#orgb588f92)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org86a41fe)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#orge4eb2e4)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orga06d7e0)
  - [equilibirum index](#org418aab5)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orge36a2ac)
    - [revisit this next time (Rob solution?)](#org3482ac1)
  - [postponed from previous meetings](#orgfc6996c)
    - [an answer to what's Raku for:](#org42e7775)
  - [earlier topics, follow-up some time:](#orgd01d746)
    - [gui toolkits](#orgade0baf)
  - [untopics](#org9e8fcb2)
  - [announcements](#org5b3509e)
    - [May 8th: next raku study group meeting](#org21a8e36)
    - [June 21-25: tprc: perl/raku conference](#orgec56075)


<a id="org7dbfeee"></a>

# meeting notes April 24, 2022


<a id="org78ac0f8"></a>

## the raku study group


<a id="org233aca4"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org7a388e5"></a>

## the new "darkroast" project


<a id="org34494fa"></a>

### <https://github.com/doomvox/darkroast>


<a id="org14d0a8d"></a>

## rob ransbottom


<a id="org1374a7e"></a>

### <https://theweeklychallenge.org/>


<a id="org09c8e58"></a>

## bill michaels


<a id="orgaddc7bd"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org57f7e08"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org21ace4a"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org52ffd81"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5aa88ff"></a>

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


<a id="orgb588f92"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org86a41fe"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="orge4eb2e4"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orga06d7e0"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org418aab5"></a>

## equilibirum index


<a id="orge36a2ac"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org3482ac1"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgfc6996c"></a>

## postponed from previous meetings


<a id="org42e7775"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd01d746"></a>

## earlier topics, follow-up some time:


<a id="orgade0baf"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org9e8fcb2"></a>

## untopics


<a id="org5b3509e"></a>

## announcements


<a id="org21a8e36"></a>

### May 8th: next raku study group meeting


<a id="orgec56075"></a>

### June 21-25: tprc: perl/raku conference
