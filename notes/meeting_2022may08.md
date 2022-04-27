- [meeting notes May 08, 2022](#orge80a599)
  - [the raku study group](#orgb1c5161)
    - ["Raku Saki Robots" (?)](#org64690b9)
    - [usual links](#org9d60153)
  - [the new "darkroast" project](#orge4400b4)
    - [<https://github.com/doomvox/darkroast>](#org1670d99)
    - [](#org1f05f52)
  - [raku's "move" considered screwed-up](#org93ef15d)
    - [<https://docs.raku.org/routine/move>](#org8b01218)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgb07797c)
    - [discussed last meeting:](#org623f556)
  - [bill michaels](#org6fa2bc3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8e11f13)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf62a1d9)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgba3ec90)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org311b62d)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org83099cc)
  - [equilibirum index](#org8e03ddd)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org189d556)
    - [revisit this next time (Rob solution?)](#orgbbbff7f)
  - [Rob's interested in discussing missing basic tools](#org9e9edf2)
  - [weekly challenge this week](#org571d780)
    - [<https://theweeklychallenge.org/>](#org2057688)
  - [from previous meetings](#orgf83de1b)
    - [an answer to what's Raku for:](#orgce1ef74)
    - [gui toolkits](#orgdf94bac)
  - [announcements](#org7b8e8d4)
    - [May 8th: next raku study group meeting](#org2d70923)
    - [June 21-25: tprc: perl/raku conference](#org1f0ee38)


<a id="orge80a599"></a>

# meeting notes May 08, 2022


<a id="orgb1c5161"></a>

## the raku study group


<a id="org64690b9"></a>

### "Raku Saki Robots" (?)


<a id="org9d60153"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orge4400b4"></a>

## the new "darkroast" project


<a id="org1670d99"></a>

### <https://github.com/doomvox/darkroast>


<a id="org1f05f52"></a>

### 


<a id="org93ef15d"></a>

## raku's "move" considered screwed-up


<a id="org8b01218"></a>

### <https://docs.raku.org/routine/move>


<a id="orgb07797c"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org623f556"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org6fa2bc3"></a>

## bill michaels


<a id="org8e11f13"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf62a1d9"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgba3ec90"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org311b62d"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org83099cc"></a>

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


<a id="org8e03ddd"></a>

## equilibirum index


<a id="org189d556"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgbbbff7f"></a>

### TODO revisit this next time (Rob solution?)


<a id="org9e9edf2"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org571d780"></a>

## weekly challenge this week


<a id="org2057688"></a>

### <https://theweeklychallenge.org/>


<a id="orgf83de1b"></a>

## from previous meetings


<a id="orgce1ef74"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgdf94bac"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org7b8e8d4"></a>

## announcements


<a id="org2d70923"></a>

### May 8th: next raku study group meeting


<a id="org1f0ee38"></a>

### June 21-25: tprc: perl/raku conference
