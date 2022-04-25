- [meeting notes April 24, 2022](#org4f669ac)
  - [the raku study group](#org2823b3f)
    - [usual links](#org5c74008)
  - [the new "darkroast" project](#org600a312)
    - [<https://github.com/doomvox/darkroast>](#org59e0251)
  - [weekly challenge this week, rob ransbottom](#org8503855)
    - [<https://theweeklychallenge.org/>](#org671cbd7)
  - [bill michaels](#org22758d5)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org796bb68)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org4bce619)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org2127d10)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org28d6ea8)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgdeede56)
  - [earlier weekly challenge: "four is magic", bruce gray](#orge0b88ff)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org9f7b6bf)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org63b82a6)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#org3bafd50)
  - [equilibirum index](#org50765c8)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdbc68ee)
    - [revisit this next time (Rob solution?)](#orgfadc683)
  - [postponed from previous meetings](#org8a055e1)
    - [an answer to what's Raku for:](#org6bd167d)
  - [Rob's interested in discussing missing basic tools](#org2e41c20)
  - [earlier topics, follow-up some time:](#org81fd3b9)
    - [gui toolkits](#org1fa074b)
  - [announcements](#org559415e)
    - [May 8th: next raku study group meeting](#orgbad3850)
    - [June 21-25: tprc: perl/raku conference](#orgc46b05a)


<a id="org4f669ac"></a>

# meeting notes April 24, 2022


<a id="org2823b3f"></a>

## the raku study group


<a id="org5c74008"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org600a312"></a>

## the new "darkroast" project


<a id="org59e0251"></a>

### <https://github.com/doomvox/darkroast>


<a id="org8503855"></a>

## weekly challenge this week, rob ransbottom


<a id="org671cbd7"></a>

### <https://theweeklychallenge.org/>


<a id="org22758d5"></a>

## bill michaels


<a id="org796bb68"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org4bce619"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org2127d10"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org28d6ea8"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgdeede56"></a>

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


<a id="orge0b88ff"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org9f7b6bf"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org63b82a6"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="org3bafd50"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org50765c8"></a>

## equilibirum index


<a id="orgdbc68ee"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgfadc683"></a>

### TODO revisit this next time (Rob solution?)


<a id="org8a055e1"></a>

## postponed from previous meetings


<a id="org6bd167d"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2e41c20"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org81fd3b9"></a>

## earlier topics, follow-up some time:


<a id="org1fa074b"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org559415e"></a>

## announcements


<a id="orgbad3850"></a>

### May 8th: next raku study group meeting


<a id="orgc46b05a"></a>

### June 21-25: tprc: perl/raku conference
