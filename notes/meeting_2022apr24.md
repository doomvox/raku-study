- [meeting notes April 24, 2022](#orgec0757b)
  - [the raku study group](#org818170e)
    - [usual links](#orgadcf57b)
  - [the new "darkroast" project](#org29851b5)
    - [<https://github.com/doomvox/darkroast>](#org324e1bb)
  - [weekly challenge this week, rob ransbottom](#org276289f)
    - [<https://theweeklychallenge.org/>](#orgf20ee44)
  - [bill michaels](#orgd3cc391)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org69104b8)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org77704c0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org9bb444c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga128e7f)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4b08f8d)
  - [earlier weekly challenge: "four is magic", bruce gray](#org352f68b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#orgd550be7)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org2028005)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org4edb1bf)
  - [equilibirum index](#orgadf1abf)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdbff8fc)
    - [revisit this next time (Rob solution?)](#org5a71c4a)
  - [postponed from previous meetings](#org6cd93ea)
    - [an answer to what's Raku for:](#org20e0fd8)
  - [Rob's interested in discussing missing basic tools](#orgbdb4049)
  - [earlier topics, follow-up some time:](#org785206f)
    - [gui toolkits](#org5f17cc4)
  - [announcements](#org2760864)
    - [May 8th: next raku study group meeting](#orge77a489)
    - [June 21-25: tprc: perl/raku conference](#org3e111ab)


<a id="orgec0757b"></a>

# meeting notes April 24, 2022


<a id="org818170e"></a>

## the raku study group


<a id="orgadcf57b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org29851b5"></a>

## the new "darkroast" project


<a id="org324e1bb"></a>

### <https://github.com/doomvox/darkroast>


<a id="org276289f"></a>

## weekly challenge this week, rob ransbottom


<a id="orgf20ee44"></a>

### <https://theweeklychallenge.org/>


<a id="orgd3cc391"></a>

## bill michaels


<a id="org69104b8"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org77704c0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org9bb444c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga128e7f"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4b08f8d"></a>

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
    
        1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."
        
            1.  TODO (( Seriously? ))


<a id="org352f68b"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="orgd550be7"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org2028005"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org4edb1bf"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="orgadf1abf"></a>

## equilibirum index


<a id="orgdbff8fc"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org5a71c4a"></a>

### TODO revisit this next time (Rob solution?)


<a id="org6cd93ea"></a>

## postponed from previous meetings


<a id="org20e0fd8"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgbdb4049"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org785206f"></a>

## earlier topics, follow-up some time:


<a id="org5f17cc4"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org2760864"></a>

## announcements


<a id="orge77a489"></a>

### May 8th: next raku study group meeting


<a id="org3e111ab"></a>

### June 21-25: tprc: perl/raku conference
