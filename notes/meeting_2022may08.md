- [meeting notes May 08, 2022](#orgb55981d)
  - [the raku study group](#orgf166117)
    - ["Raku Saki Robots" (?)](#org89ea538)
    - [usual links](#org989812b)
  - [the new "darkroast" project](#org6e8e090)
    - [<https://github.com/doomvox/darkroast>](#orgb911c8a)
    - [](#orgb871e33)
  - [weekly challenge this week, rob ransbottom](#org6cc6d36)
    - [<https://theweeklychallenge.org/>](#org34c0eb3)
  - [bill michaels](#orge7ea0f9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga52e522)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org9eac7ae)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgbb7820c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org44a0ea1)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4226885)
  - [equilibirum index](#org0b129aa)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgff5198d)
    - [revisit this next time (Rob solution?)](#org851f367)
  - [Rob's interested in discussing missing basic tools](#org566ad37)
  - [from previous meetings](#orgf8e51f8)
    - [an answer to what's Raku for:](#org5eb84b2)
    - [gui toolkits](#orga1e9f5a)
  - [announcements](#org78709b0)
    - [May 8th: next raku study group meeting](#orgd6b4a07)
    - [June 21-25: tprc: perl/raku conference](#org502e01f)


<a id="orgb55981d"></a>

# meeting notes May 08, 2022


<a id="orgf166117"></a>

## the raku study group


<a id="org89ea538"></a>

### "Raku Saki Robots" (?)


<a id="org989812b"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org6e8e090"></a>

## the new "darkroast" project


<a id="orgb911c8a"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgb871e33"></a>

### 


<a id="org6cc6d36"></a>

## weekly challenge this week, rob ransbottom


<a id="org34c0eb3"></a>

### <https://theweeklychallenge.org/>


<a id="orge7ea0f9"></a>

## bill michaels


<a id="orga52e522"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org9eac7ae"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgbb7820c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org44a0ea1"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4226885"></a>

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


<a id="org0b129aa"></a>

## equilibirum index


<a id="orgff5198d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org851f367"></a>

### TODO revisit this next time (Rob solution?)


<a id="org566ad37"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgf8e51f8"></a>

## from previous meetings


<a id="org5eb84b2"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga1e9f5a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org78709b0"></a>

## announcements


<a id="orgd6b4a07"></a>

### May 8th: next raku study group meeting


<a id="org502e01f"></a>

### June 21-25: tprc: perl/raku conference
