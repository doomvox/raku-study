- [meeting notes May 08, 2022](#org0aaf014)
  - [the raku study group](#org0ec5b0d)
    - ["Raku Saki Robots" (?)](#org900d69d)
    - [usual links](#orgfe3e41a)
  - [the new "darkroast" project](#orgdb5977f)
    - [<https://github.com/doomvox/darkroast>](#orgc2756df)
    - [](#orgb8a26a2)
  - [raku's "move" considered screwed-up](#orgf8b9d65)
    - [<https://docs.raku.org/routine/move>](#org48379c1)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgd8163d9)
    - [discussed last meeting:](#org7c07716)
  - [bill michaels](#org481d63e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgb8f8108)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7a233de)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org67d944c)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org78ab6db)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org73e6f36)
  - [equilibirum index](#org08c5ae7)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc21b323)
    - [revisit this next time (Rob solution?)](#org86d7c25)
  - [Rob's interested in discussing missing basic tools](#orgc0b8d42)
  - [weekly challenge this week](#org494e311)
    - [<https://theweeklychallenge.org/>](#orge2a2c71)
  - [from previous meetings](#orgebf98c3)
    - [an answer to what's Raku for:](#org30c1e0e)
    - [gui toolkits](#orge60d1b5)
  - [announcements](#orga25bd93)
    - [May 8th: next raku study group meeting](#org53eef67)
    - [June 21-25: tprc: perl/raku conference](#orgb0214f3)


<a id="org0aaf014"></a>

# meeting notes May 08, 2022


<a id="org0ec5b0d"></a>

## the raku study group


<a id="org900d69d"></a>

### "Raku Saki Robots" (?)


<a id="orgfe3e41a"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgdb5977f"></a>

## the new "darkroast" project


<a id="orgc2756df"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgb8a26a2"></a>

### 


<a id="orgf8b9d65"></a>

## raku's "move" considered screwed-up


<a id="org48379c1"></a>

### <https://docs.raku.org/routine/move>


<a id="orgd8163d9"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org7c07716"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org481d63e"></a>

## bill michaels


<a id="orgb8f8108"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7a233de"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org67d944c"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org78ab6db"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org73e6f36"></a>

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


<a id="org08c5ae7"></a>

## equilibirum index


<a id="orgc21b323"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org86d7c25"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgc0b8d42"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org494e311"></a>

## weekly challenge this week


<a id="orge2a2c71"></a>

### <https://theweeklychallenge.org/>


<a id="orgebf98c3"></a>

## from previous meetings


<a id="org30c1e0e"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge60d1b5"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orga25bd93"></a>

## announcements


<a id="org53eef67"></a>

### May 8th: next raku study group meeting


<a id="orgb0214f3"></a>

### June 21-25: tprc: perl/raku conference
