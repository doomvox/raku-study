- [meeting notes April 24, 2022](#orgf84b2aa)
  - [the raku study group](#orgb1faa69)
    - [usual links](#org6a80eb9)
  - [the new "darkroast" project](#org4b4cd12)
    - [<https://github.com/doomvox/darkroast>](#org465c2e7)
  - [weekly challenge this week, rob ransbottom](#org59ef7f5)
    - [<https://theweeklychallenge.org/>](#org77e19e0)
  - [bill michaels](#orgc4a6098)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org412281c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org2b4dc0b)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org1f14bc9)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga21adde)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org24f50fc)
  - [earlier weekly challenge: "four is magic", bruce gray](#org07a910a)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>](#org504fe9c)
    - [<https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>](#org02730bb)
    - [<http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>](#orgaf3f527)
  - [equilibirum index](#org1dec5a9)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org94da3b6)
    - [revisit this next time (Rob solution?)](#org7aba5fd)
  - [postponed from previous meetings](#org46d9b46)
    - [an answer to what's Raku for:](#org64eeadf)
  - [earlier topics, follow-up some time:](#orge387b3d)
    - [gui toolkits](#org5b75b71)
  - [untopics](#orge5851a4)
  - [announcements](#org7875f7b)
    - [May 8th: next raku study group meeting](#org80d4b8c)
    - [June 21-25: tprc: perl/raku conference](#org75ffcd1)


<a id="orgf84b2aa"></a>

# meeting notes April 24, 2022


<a id="orgb1faa69"></a>

## the raku study group


<a id="org6a80eb9"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr24.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022apr24>


<a id="org4b4cd12"></a>

## the new "darkroast" project


<a id="org465c2e7"></a>

### <https://github.com/doomvox/darkroast>


<a id="org59ef7f5"></a>

## weekly challenge this week, rob ransbottom


<a id="org77e19e0"></a>

### <https://theweeklychallenge.org/>


<a id="orgc4a6098"></a>

## bill michaels


<a id="org412281c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org2b4dc0b"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org1f14bc9"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga21adde"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org24f50fc"></a>

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


<a id="org07a910a"></a>

## earlier weekly challenge: "four is magic", bruce gray


<a id="org504fe9c"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-160/>


<a id="org02730bb"></a>

### <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-160/bruce-gray/raku>


<a id="orgaf3f527"></a>

### <http://blogs.perl.org/users/bruce_gray/2022/04/twc-160-mysticmath-balance.html>


<a id="org1dec5a9"></a>

## equilibirum index


<a id="org94da3b6"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org7aba5fd"></a>

### TODO revisit this next time (Rob solution?)


<a id="org46d9b46"></a>

## postponed from previous meetings


<a id="org64eeadf"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge387b3d"></a>

## earlier topics, follow-up some time:


<a id="org5b75b71"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge5851a4"></a>

## untopics


<a id="org7875f7b"></a>

## announcements


<a id="org80d4b8c"></a>

### May 8th: next raku study group meeting


<a id="org75ffcd1"></a>

### June 21-25: tprc: perl/raku conference
