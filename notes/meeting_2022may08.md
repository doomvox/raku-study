- [meeting notes May 08, 2022](#org537f040)
  - [the raku study group](#orgdcfd66e)
    - ["Raku Saki Robots" (?)](#orgfb8f196)
    - [usual links](#org4d7b682)
  - [the new "darkroast" project](#orga3b3f20)
    - [<https://github.com/doomvox/darkroast>](#org37a0e33)
    - [](#org60a51b2)
  - [bill michaels](#orgbf5bd30)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge8db15f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org58e78aa)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org864988e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org6734423)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6854b53)
  - [equilibirum index](#orgf63ea86)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org4ea4725)
    - [revisit this next time (Rob solution?)](#orga0ba5ef)
  - [Rob's interested in discussing missing basic tools](#org9fdfeed)
  - [weekly challenge this week](#orge7e0bfc)
    - [<https://theweeklychallenge.org/>](#org44bf1f6)
  - [from previous meetings](#org014fd2f)
    - [an answer to what's Raku for:](#orge9fee3c)
    - [gui toolkits](#orge7d8373)
  - [announcements](#orgbe3186d)
    - [May 8th: next raku study group meeting](#org7437043)
    - [June 21-25: tprc: perl/raku conference](#orgca3eb80)


<a id="org537f040"></a>

# meeting notes May 08, 2022


<a id="orgdcfd66e"></a>

## the raku study group


<a id="orgfb8f196"></a>

### "Raku Saki Robots" (?)


<a id="org4d7b682"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga3b3f20"></a>

## the new "darkroast" project


<a id="org37a0e33"></a>

### <https://github.com/doomvox/darkroast>


<a id="org60a51b2"></a>

### 


<a id="orgbf5bd30"></a>

## bill michaels


<a id="orge8db15f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org58e78aa"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org864988e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org6734423"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org6854b53"></a>

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


<a id="orgf63ea86"></a>

## equilibirum index


<a id="org4ea4725"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga0ba5ef"></a>

### TODO revisit this next time (Rob solution?)


<a id="org9fdfeed"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orge7e0bfc"></a>

## weekly challenge this week


<a id="org44bf1f6"></a>

### <https://theweeklychallenge.org/>


<a id="org014fd2f"></a>

## from previous meetings


<a id="orge9fee3c"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge7d8373"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgbe3186d"></a>

## announcements


<a id="org7437043"></a>

### May 8th: next raku study group meeting


<a id="orgca3eb80"></a>

### June 21-25: tprc: perl/raku conference
