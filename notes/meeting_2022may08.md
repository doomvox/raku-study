- [meeting notes May 08, 2022](#org9a016de)
  - [the raku study group](#org93eca70)
    - ["Raku Saki Robots" (?)](#orgfceb6f9)
    - [usual links](#org9137f8b)
  - [the new "darkroast" project](#org08e33ce)
    - [<https://github.com/doomvox/darkroast>](#orgae46d61)
    - [](#org490baf3)
  - [weekly challenge this week, rob ransbottom](#org9a77040)
    - [<https://theweeklychallenge.org/>](#org3e64332)
  - [bill michaels](#org35e2929)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org6fe3e56)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf134982)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgf83a61e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgac418df)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgaa451ee)
  - [equilibirum index](#org7d6c121)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org95600d3)
    - [revisit this next time (Rob solution?)](#org9266992)
  - [postponed from previous meetings](#org2b25e09)
    - [an answer to what's Raku for:](#orga9287b6)
  - [Rob's interested in discussing missing basic tools](#org8b74569)
  - [earlier topics, follow-up some time:](#org9f814fa)
    - [gui toolkits](#org444c67b)
  - [announcements](#org81ff429)
    - [May 8th: next raku study group meeting](#org5b5827b)
    - [June 21-25: tprc: perl/raku conference](#orgdde7de0)


<a id="org9a016de"></a>

# meeting notes May 08, 2022


<a id="org93eca70"></a>

## the raku study group


<a id="orgfceb6f9"></a>

### "Raku Saki Robots" (?)


<a id="org9137f8b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org08e33ce"></a>

## the new "darkroast" project


<a id="orgae46d61"></a>

### <https://github.com/doomvox/darkroast>


<a id="org490baf3"></a>

### 


<a id="org9a77040"></a>

## weekly challenge this week, rob ransbottom


<a id="org3e64332"></a>

### <https://theweeklychallenge.org/>


<a id="org35e2929"></a>

## bill michaels


<a id="org6fe3e56"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf134982"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgf83a61e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgac418df"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgaa451ee"></a>

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


<a id="org7d6c121"></a>

## equilibirum index


<a id="org95600d3"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org9266992"></a>

### TODO revisit this next time (Rob solution?)


<a id="org2b25e09"></a>

## postponed from previous meetings


<a id="orga9287b6"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8b74569"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org9f814fa"></a>

## earlier topics, follow-up some time:


<a id="org444c67b"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org81ff429"></a>

## announcements


<a id="org5b5827b"></a>

### May 8th: next raku study group meeting


<a id="orgdde7de0"></a>

### June 21-25: tprc: perl/raku conference
