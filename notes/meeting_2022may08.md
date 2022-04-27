- [meeting notes May 08, 2022](#orgaebefcc)
  - [the raku study group](#orgdbd8f3a)
    - ["Raku Saki Robots" (?)](#org69f00b8)
    - [usual links](#org18fc4a0)
  - [the new "darkroast" project](#org6f9fdc2)
    - [<https://github.com/doomvox/darkroast>](#orgd02bd64)
  - [raku's "move" considered screwed-up](#orgeeb97e0)
    - [<https://docs.raku.org/routine/move>](#org8552bef)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org71667d2)
    - [discussed last meeting:](#orgfcc8589)
  - [bill michaels](#org4f0275b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1e53f9b)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc62cd4f)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgc960905)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3ad66f9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb118c10)
  - [equilibirum index](#org2d1816b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org1fb1547)
    - [revisit this next time (Rob solution?)](#org9ee55e5)
  - [Rob's interested in discussing missing basic tools](#org52b9ca6)
  - [weekly challenge this week](#orga20eb3b)
    - [<https://theweeklychallenge.org/>](#orgc932455)
  - [from previous meetings](#orgacf3f1a)
    - [an answer to what's Raku for:](#orge08ff34)
    - [gui toolkits](#orga12d810)
  - [announcements](#org1d8edec)
    - [May 8th: next raku study group meeting](#org5c71894)
    - [June 21-25: tprc: perl/raku conference](#org795b8fc)


<a id="orgaebefcc"></a>

# meeting notes May 08, 2022


<a id="orgdbd8f3a"></a>

## the raku study group


<a id="org69f00b8"></a>

### "Raku Saki Robots" (?)


<a id="org18fc4a0"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org6f9fdc2"></a>

## the new "darkroast" project


<a id="orgd02bd64"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgeeb97e0"></a>

## raku's "move" considered screwed-up


<a id="org8552bef"></a>

### <https://docs.raku.org/routine/move>


<a id="org71667d2"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgfcc8589"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org4f0275b"></a>

## bill michaels


<a id="org1e53f9b"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc62cd4f"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgc960905"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3ad66f9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgb118c10"></a>

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


<a id="org2d1816b"></a>

## equilibirum index


<a id="org1fb1547"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org9ee55e5"></a>

### TODO revisit this next time (Rob solution?)


<a id="org52b9ca6"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga20eb3b"></a>

## weekly challenge this week


<a id="orgc932455"></a>

### <https://theweeklychallenge.org/>


<a id="orgacf3f1a"></a>

## from previous meetings


<a id="orge08ff34"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga12d810"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org1d8edec"></a>

## announcements


<a id="org5c71894"></a>

### May 8th: next raku study group meeting


<a id="org795b8fc"></a>

### June 21-25: tprc: perl/raku conference
