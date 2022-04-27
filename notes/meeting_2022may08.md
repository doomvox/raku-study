- [meeting notes May 08, 2022](#org2363bb9)
  - [the raku study group](#orge10efd1)
    - ["Raku Saki Robots" (?)](#orgc356963)
    - [usual links](#orgb0488fa)
  - [the new "darkroast" project](#org7a5d4e2)
    - [<https://github.com/doomvox/darkroast>](#org013d447)
    - [](#org2d9c106)
  - [bill michaels](#org0a01545)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org711c8cb)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgbf3a6bb)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgab4a061)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1dca7e6)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orga1aec83)
  - [equilibirum index](#org0f6b057)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdad7d27)
    - [revisit this next time (Rob solution?)](#orgf0e8793)
  - [Rob's interested in discussing missing basic tools](#orgb4429ed)
  - [weekly challenge this week](#org4160ddc)
    - [<https://theweeklychallenge.org/>](#orga0359b2)
  - [from previous meetings](#org3a464de)
    - [an answer to what's Raku for:](#org9a372ce)
    - [gui toolkits](#org8cbc31c)
  - [announcements](#orge65806f)
    - [May 8th: next raku study group meeting](#org424e1f4)
    - [June 21-25: tprc: perl/raku conference](#orga6616ad)


<a id="org2363bb9"></a>

# meeting notes May 08, 2022


<a id="orge10efd1"></a>

## the raku study group


<a id="orgc356963"></a>

### "Raku Saki Robots" (?)


<a id="orgb0488fa"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org7a5d4e2"></a>

## the new "darkroast" project


<a id="org013d447"></a>

### <https://github.com/doomvox/darkroast>


<a id="org2d9c106"></a>

### 


<a id="org0a01545"></a>

## bill michaels


<a id="org711c8cb"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgbf3a6bb"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgab4a061"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1dca7e6"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orga1aec83"></a>

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


<a id="org0f6b057"></a>

## equilibirum index


<a id="orgdad7d27"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgf0e8793"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb4429ed"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org4160ddc"></a>

## weekly challenge this week


<a id="orga0359b2"></a>

### <https://theweeklychallenge.org/>


<a id="org3a464de"></a>

## from previous meetings


<a id="org9a372ce"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8cbc31c"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge65806f"></a>

## announcements


<a id="org424e1f4"></a>

### May 8th: next raku study group meeting


<a id="orga6616ad"></a>

### June 21-25: tprc: perl/raku conference
