- [meeting notes May 08, 2022](#org86b48aa)
  - [the raku study group](#orgcb6c772)
    - ["Raku Saki Robots" (?)](#org3ceb27b)
    - [usual links](#org4d076f0)
  - [the new "darkroast" project](#orgd90b82c)
    - [<https://github.com/doomvox/darkroast>](#org7db4485)
    - [expanded the first test there](#org053d816)
  - [raku's "move" considered screwed-up](#orgdcacc4d)
    - [<https://docs.raku.org/routine/move>](#orga526954)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org7e763c9)
    - [discussed last meeting:](#org576fad4)
  - [bill michaels](#org4e0dde1)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga942159)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org6a278ff)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org70c0248)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org745e7a4)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org96889da)
  - [equilibirum index](#org2fccc8e)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org692854e)
    - [revisit this next time (Rob solution?)](#orgbc01c07)
  - [Rob's interested in discussing missing basic tools](#org0cbd77a)
  - [weekly challenge this week](#org1469a09)
    - [<https://theweeklychallenge.org/>](#org4e74fb6)
  - [from previous meetings](#org6ea3989)
    - [an answer to what's Raku for:](#org80415ba)
    - [gui toolkits](#orgdd92480)
  - [announcements](#org23d4507)
    - [May 8th: next raku study group meeting](#orgf3f40db)
    - [June 21-25: tprc: perl/raku conference](#orgda3eed4)


<a id="org86b48aa"></a>

# meeting notes May 08, 2022


<a id="orgcb6c772"></a>

## the raku study group


<a id="org3ceb27b"></a>

### "Raku Saki Robots" (?)


<a id="org4d076f0"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgd90b82c"></a>

## the new "darkroast" project


<a id="org7db4485"></a>

### <https://github.com/doomvox/darkroast>


<a id="org053d816"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgdcacc4d"></a>

## raku's "move" considered screwed-up


<a id="orga526954"></a>

### <https://docs.raku.org/routine/move>


<a id="org7e763c9"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org576fad4"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org4e0dde1"></a>

## bill michaels


<a id="orga942159"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org6a278ff"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org70c0248"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org745e7a4"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org96889da"></a>

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


<a id="org2fccc8e"></a>

## equilibirum index


<a id="org692854e"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgbc01c07"></a>

### TODO revisit this next time (Rob solution?)


<a id="org0cbd77a"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org1469a09"></a>

## weekly challenge this week


<a id="org4e74fb6"></a>

### <https://theweeklychallenge.org/>


<a id="org6ea3989"></a>

## from previous meetings


<a id="org80415ba"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgdd92480"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org23d4507"></a>

## announcements


<a id="orgf3f40db"></a>

### May 8th: next raku study group meeting


<a id="orgda3eed4"></a>

### June 21-25: tprc: perl/raku conference
