- [meeting notes May 08, 2022](#orgd6aec3d)
  - [the raku study group](#org93f6ab9)
    - ["Raku Saki Robots" (?)](#org52cc1d8)
    - [usual links](#org628e57e)
  - [the new "darkroast" project](#org53f6469)
    - [<https://github.com/doomvox/darkroast>](#orga153eb1)
    - [](#org404e952)
  - [raku's "move" considered screwed-up](#orgf461a01)
    - [<https://docs.raku.org/routine/move>](#org9e3622a)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org317d22d)
    - [discussed last meeting:](#org1447161)
  - [bill michaels](#orgc9ca5c0)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org0f031bf)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org130f3a1)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgeacb95d)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org0d04de7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgcd51663)
  - [equilibirum index](#orgef46393)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org5432c1a)
    - [revisit this next time (Rob solution?)](#org895bef5)
  - [Rob's interested in discussing missing basic tools](#orgb0cf6e6)
  - [weekly challenge this week](#orgd945e00)
    - [<https://theweeklychallenge.org/>](#org5c8811e)
  - [from previous meetings](#orgc72b564)
    - [an answer to what's Raku for:](#org12a4900)
    - [gui toolkits](#orgf7212d2)
  - [announcements](#orgac241b1)
    - [May 8th: next raku study group meeting](#orgefa2127)
    - [June 21-25: tprc: perl/raku conference](#orged06d42)


<a id="orgd6aec3d"></a>

# meeting notes May 08, 2022


<a id="org93f6ab9"></a>

## the raku study group


<a id="org52cc1d8"></a>

### "Raku Saki Robots" (?)


<a id="org628e57e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org53f6469"></a>

## the new "darkroast" project


<a id="orga153eb1"></a>

### <https://github.com/doomvox/darkroast>


<a id="org404e952"></a>

### 


<a id="orgf461a01"></a>

## raku's "move" considered screwed-up


<a id="org9e3622a"></a>

### <https://docs.raku.org/routine/move>


<a id="org317d22d"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org1447161"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgc9ca5c0"></a>

## bill michaels


<a id="org0f031bf"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org130f3a1"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgeacb95d"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org0d04de7"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgcd51663"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

    1.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"
    
    2.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

2.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="orgef46393"></a>

## equilibirum index


<a id="org5432c1a"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org895bef5"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgb0cf6e6"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgd945e00"></a>

## weekly challenge this week


<a id="org5c8811e"></a>

### <https://theweeklychallenge.org/>


<a id="orgc72b564"></a>

## from previous meetings


<a id="org12a4900"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgf7212d2"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgac241b1"></a>

## announcements


<a id="orgefa2127"></a>

### May 8th: next raku study group meeting


<a id="orged06d42"></a>

### June 21-25: tprc: perl/raku conference
