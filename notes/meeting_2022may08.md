- [meeting notes May 08, 2022](#org6b8d2e6)
  - [the raku study group](#org647af3a)
    - ["Raku Saki Robots" (?)](#org53677e8)
    - [usual links](#org222dc37)
  - [the new "darkroast" project](#org067449b)
    - [<https://github.com/doomvox/darkroast>](#org71e6a52)
    - [](#org68bd3e4)
  - [raku's "move" considered screwed-up](#org41c4e38)
    - [<https://docs.raku.org/routine/move>](#org1963a7e)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org5476c5e)
    - [discussed last meeting:](#org66ee4b3)
  - [bill michaels](#org698967b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge229b01)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org5815d8e)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orga60af38)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1257223)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgee19801)
  - [equilibirum index](#org7d7588b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org68fd854)
    - [revisit this next time (Rob solution?)](#org25f3063)
  - [Rob's interested in discussing missing basic tools](#orgc0cda44)
  - [weekly challenge this week](#org0be39ac)
    - [<https://theweeklychallenge.org/>](#orgfc48fca)
  - [from previous meetings](#org0880a2d)
    - [an answer to what's Raku for:](#org9705c41)
    - [gui toolkits](#org50df126)
  - [announcements](#orge13f8b7)
    - [May 8th: next raku study group meeting](#org52f8253)
    - [June 21-25: tprc: perl/raku conference](#orgd23e07b)


<a id="org6b8d2e6"></a>

# meeting notes May 08, 2022


<a id="org647af3a"></a>

## the raku study group


<a id="org53677e8"></a>

### "Raku Saki Robots" (?)


<a id="org222dc37"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org067449b"></a>

## the new "darkroast" project


<a id="org71e6a52"></a>

### <https://github.com/doomvox/darkroast>


<a id="org68bd3e4"></a>

### 


<a id="org41c4e38"></a>

## raku's "move" considered screwed-up


<a id="org1963a7e"></a>

### <https://docs.raku.org/routine/move>


<a id="org5476c5e"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org66ee4b3"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org698967b"></a>

## bill michaels


<a id="orge229b01"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org5815d8e"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orga60af38"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1257223"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgee19801"></a>

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


<a id="org7d7588b"></a>

## equilibirum index


<a id="org68fd854"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org25f3063"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgc0cda44"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org0be39ac"></a>

## weekly challenge this week


<a id="orgfc48fca"></a>

### <https://theweeklychallenge.org/>


<a id="org0880a2d"></a>

## from previous meetings


<a id="org9705c41"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org50df126"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orge13f8b7"></a>

## announcements


<a id="org52f8253"></a>

### May 8th: next raku study group meeting


<a id="orgd23e07b"></a>

### June 21-25: tprc: perl/raku conference
