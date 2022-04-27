- [meeting notes May 08, 2022](#orgfbc5ef7)
  - [the raku study group](#orgb638f06)
    - ["Raku Saki Robots" (?)](#org53bccf5)
    - [usual links](#org3bc5388)
  - [the new "darkroast" project](#org30eae89)
    - [<https://github.com/doomvox/darkroast>](#org1492be4)
    - [expanded the first test there](#org72a9207)
  - [raku's "move" considered screwed-up](#org9364d7c)
    - [<https://docs.raku.org/routine/move>](#org45ce98e)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgd4dd59c)
    - [discussed last meeting:](#orga0331d9)
  - [bill michaels](#orgb46ae92)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7b39ad4)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgf14bea6)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org87a01f7)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orge7555ee)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org4cb497b)
  - [equilibirum index](#orgdd48b61)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org3ce4681)
    - [revisit this next time (Rob solution?)](#org71a7570)
  - [Rob's interested in discussing missing basic tools](#org6794b8c)
  - [weekly challenge this week](#org94dece1)
    - [<https://theweeklychallenge.org/>](#org43c9ca9)
  - [from previous meetings](#orged31891)
    - [an answer to what's Raku for:](#org84351c7)
    - [gui toolkits](#orgcbd5084)
  - [announcements](#org05c8fa7)
    - [May 8th: next raku study group meeting](#org01ced78)
    - [June 21-25: tprc: perl/raku conference](#org092b0ef)


<a id="orgfbc5ef7"></a>

# meeting notes May 08, 2022


<a id="orgb638f06"></a>

## the raku study group


<a id="org53bccf5"></a>

### "Raku Saki Robots" (?)


<a id="org3bc5388"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org30eae89"></a>

## the new "darkroast" project


<a id="org1492be4"></a>

### <https://github.com/doomvox/darkroast>


<a id="org72a9207"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org9364d7c"></a>

## raku's "move" considered screwed-up


<a id="org45ce98e"></a>

### <https://docs.raku.org/routine/move>


<a id="orgd4dd59c"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orga0331d9"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgb46ae92"></a>

## bill michaels


<a id="org7b39ad4"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgf14bea6"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org87a01f7"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orge7555ee"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org4cb497b"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

4.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="orgdd48b61"></a>

## equilibirum index


<a id="org3ce4681"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org71a7570"></a>

### TODO revisit this next time (Rob solution?)


<a id="org6794b8c"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org94dece1"></a>

## weekly challenge this week


<a id="org43c9ca9"></a>

### <https://theweeklychallenge.org/>


<a id="orged31891"></a>

## from previous meetings


<a id="org84351c7"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgcbd5084"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org05c8fa7"></a>

## announcements


<a id="org01ced78"></a>

### May 8th: next raku study group meeting


<a id="org092b0ef"></a>

### June 21-25: tprc: perl/raku conference
