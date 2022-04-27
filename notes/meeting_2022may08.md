- [meeting notes May 08, 2022](#orga6a6888)
  - [the raku study group](#org5ef5451)
    - ["Raku Saki Robots" (?)](#orgac1e7ef)
    - [usual links](#org7eef920)
  - [the new "darkroast" project](#org48f2102)
    - [<https://github.com/doomvox/darkroast>](#orgd9728fb)
    - [](#orgb4381ea)
  - [weekly challenge this week, rob ransbottom](#org4acc4f8)
    - [<https://theweeklychallenge.org/>](#org56b8136)
  - [bill michaels](#orga991091)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7ba03c9)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgd6c7a91)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgfa0ffc9)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgaef5324)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4ab8163)
  - [equilibirum index](#org317757b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgfaef57c)
    - [revisit this next time (Rob solution?)](#org617f9e7)
  - [Rob's interested in discussing missing basic tools](#orgbf04baa)
  - [postponed from previous meetings](#org1096ce0)
    - [an answer to what's Raku for:](#orgd1120fc)
  - [earlier topics, follow-up some time:](#org145e761)
    - [gui toolkits](#org594474f)
  - [announcements](#org213acde)
    - [May 8th: next raku study group meeting](#orgf8fb757)
    - [June 21-25: tprc: perl/raku conference](#orgbb1052a)


<a id="orga6a6888"></a>

# meeting notes May 08, 2022


<a id="org5ef5451"></a>

## the raku study group


<a id="orgac1e7ef"></a>

### "Raku Saki Robots" (?)


<a id="org7eef920"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org48f2102"></a>

## the new "darkroast" project


<a id="orgd9728fb"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgb4381ea"></a>

### 


<a id="org4acc4f8"></a>

## weekly challenge this week, rob ransbottom


<a id="org56b8136"></a>

### <https://theweeklychallenge.org/>


<a id="orga991091"></a>

## bill michaels


<a id="org7ba03c9"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgd6c7a91"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgfa0ffc9"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgaef5324"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4ab8163"></a>

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


<a id="org317757b"></a>

## equilibirum index


<a id="orgfaef57c"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org617f9e7"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgbf04baa"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org1096ce0"></a>

## postponed from previous meetings


<a id="orgd1120fc"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org145e761"></a>

## earlier topics, follow-up some time:


<a id="org594474f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org213acde"></a>

## announcements


<a id="orgf8fb757"></a>

### May 8th: next raku study group meeting


<a id="orgbb1052a"></a>

### June 21-25: tprc: perl/raku conference
