- [meeting notes May 08, 2022](#org5e8308e)
  - [the raku study group](#org26bc2a7)
    - ["Raku Saki Robots" (?)](#org95285ee)
    - [usual links](#orgb839cb5)
  - [the new "darkroast" project](#org647cf0f)
    - [<https://github.com/doomvox/darkroast>](#org811d702)
    - [](#orgf5df89d)
  - [weekly challenge this week, rob ransbottom](#orgca1bd56)
    - [<https://theweeklychallenge.org/>](#org90428e8)
  - [bill michaels](#orgea8d0c3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc2db157)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgfe0e82a)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org60c5f11)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org264beee)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org8b5bae7)
  - [equilibirum index](#orgb8e57de)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgca6e636)
    - [revisit this next time (Rob solution?)](#org83746af)
  - [Rob's interested in discussing missing basic tools](#org2afe63a)
  - [postponed from previous meetings](#orga41b815)
    - [an answer to what's Raku for:](#orge916dd2)
  - [earlier topics, follow-up some time:](#org9330994)
    - [gui toolkits](#org493c1d7)
  - [announcements](#org319f65f)
    - [May 8th: next raku study group meeting](#org9ca5bb2)
    - [June 21-25: tprc: perl/raku conference](#org5ba92ff)


<a id="org5e8308e"></a>

# meeting notes May 08, 2022


<a id="org26bc2a7"></a>

## the raku study group


<a id="org95285ee"></a>

### "Raku Saki Robots" (?)


<a id="orgb839cb5"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org647cf0f"></a>

## the new "darkroast" project


<a id="org811d702"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgf5df89d"></a>

### 


<a id="orgca1bd56"></a>

## weekly challenge this week, rob ransbottom


<a id="org90428e8"></a>

### <https://theweeklychallenge.org/>


<a id="orgea8d0c3"></a>

## bill michaels


<a id="orgc2db157"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgfe0e82a"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org60c5f11"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org264beee"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org8b5bae7"></a>

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


<a id="orgb8e57de"></a>

## equilibirum index


<a id="orgca6e636"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org83746af"></a>

### TODO revisit this next time (Rob solution?)


<a id="org2afe63a"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga41b815"></a>

## postponed from previous meetings


<a id="orge916dd2"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org9330994"></a>

## earlier topics, follow-up some time:


<a id="org493c1d7"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org319f65f"></a>

## announcements


<a id="org9ca5bb2"></a>

### May 8th: next raku study group meeting


<a id="org5ba92ff"></a>

### June 21-25: tprc: perl/raku conference
