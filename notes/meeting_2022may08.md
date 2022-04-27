- [meeting notes May 08, 2022](#org505dc7c)
  - [the raku study group](#orgb2aa3d6)
    - ["Raku Saki Robots" (?)](#org33ce526)
    - [usual links](#org8503ef5)
  - [the new "darkroast" project](#org7ee5245)
    - [<https://github.com/doomvox/darkroast>](#org102a37c)
    - [](#org0cfc2e4)
  - [raku's "move" considered screwed-up](#org71841f2)
    - [<https://docs.raku.org/routine/move>](#orgc80e408)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org6ad4f57)
    - [discussed last meeting:](#org917213e)
  - [bill michaels](#org9d983b3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org84fb2ea)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org3586c69)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org7b81f66)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orga33f7b9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org698083a)
  - [equilibirum index](#org50845fb)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgbcd9d61)
    - [revisit this next time (Rob solution?)](#org8710c29)
  - [Rob's interested in discussing missing basic tools](#org8ceb21b)
  - [weekly challenge this week](#orga8b415d)
    - [<https://theweeklychallenge.org/>](#orgb3007ee)
  - [from previous meetings](#org8d1b985)
    - [an answer to what's Raku for:](#org1981786)
    - [gui toolkits](#org066daee)
  - [announcements](#orgcee333a)
    - [May 8th: next raku study group meeting](#orgebaa0a2)
    - [June 21-25: tprc: perl/raku conference](#orgd069f90)


<a id="org505dc7c"></a>

# meeting notes May 08, 2022


<a id="orgb2aa3d6"></a>

## the raku study group


<a id="org33ce526"></a>

### "Raku Saki Robots" (?)


<a id="org8503ef5"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org7ee5245"></a>

## the new "darkroast" project


<a id="org102a37c"></a>

### <https://github.com/doomvox/darkroast>


<a id="org0cfc2e4"></a>

### 


<a id="org71841f2"></a>

## raku's "move" considered screwed-up


<a id="orgc80e408"></a>

### <https://docs.raku.org/routine/move>


<a id="org6ad4f57"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org917213e"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org9d983b3"></a>

## bill michaels


<a id="org84fb2ea"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org3586c69"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org7b81f66"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orga33f7b9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org698083a"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

    1.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"
    
    2.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."
    
    3.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

2.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org50845fb"></a>

## equilibirum index


<a id="orgbcd9d61"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org8710c29"></a>

### TODO revisit this next time (Rob solution?)


<a id="org8ceb21b"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga8b415d"></a>

## weekly challenge this week


<a id="orgb3007ee"></a>

### <https://theweeklychallenge.org/>


<a id="org8d1b985"></a>

## from previous meetings


<a id="org1981786"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org066daee"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgcee333a"></a>

## announcements


<a id="orgebaa0a2"></a>

### May 8th: next raku study group meeting


<a id="orgd069f90"></a>

### June 21-25: tprc: perl/raku conference
