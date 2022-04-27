- [meeting notes May 08, 2022](#orgf376f52)
  - [the raku study group](#org94d4547)
    - ["Raku Saki Robots" (?)](#org082f0bc)
    - [usual links](#org9fdd620)
  - [the new "darkroast" project](#orgf8c390e)
    - [<https://github.com/doomvox/darkroast>](#org3285fbf)
    - [expanded the first test there](#orgb303507)
  - [raku's "move" considered screwed-up](#org6dbb12d)
    - [<https://docs.raku.org/routine/move>](#org389dfc8)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgd167996)
    - [discussed last meeting:](#orge3f5d34)
  - [bill michaels](#orgaf5f06b)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orga44c8dd)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgb29202e)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgaf24c98)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1bc9307)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org0940bcf)
  - [equilibirum index](#orgefdd867)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orga64fc82)
    - [revisit this next time (Rob solution?)](#org502c8ec)
  - [Rob's interested in discussing missing basic tools](#org304126a)
  - [weekly challenge this week](#orgdb775cf)
    - [<https://theweeklychallenge.org/>](#orgf23f3dc)
  - [from previous meetings](#org88f8974)
    - [an answer to what's Raku for:](#org7695c1e)
    - [gui toolkits](#org2d6a0fc)
  - [announcements](#org84032b3)
    - [May 8th: next raku study group meeting](#org07f320a)
    - [June 21-25: tprc: perl/raku conference](#org00e3bc5)


<a id="orgf376f52"></a>

# meeting notes May 08, 2022


<a id="org94d4547"></a>

## the raku study group


<a id="org082f0bc"></a>

### "Raku Saki Robots" (?)


<a id="org9fdd620"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgf8c390e"></a>

## the new "darkroast" project


<a id="org3285fbf"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgb303507"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about it:

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org6dbb12d"></a>

## raku's "move" considered screwed-up


<a id="org389dfc8"></a>

### <https://docs.raku.org/routine/move>


<a id="orgd167996"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orge3f5d34"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgaf5f06b"></a>

## bill michaels


<a id="orga44c8dd"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgb29202e"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgaf24c98"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1bc9307"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0940bcf"></a>

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


<a id="orgefdd867"></a>

## equilibirum index


<a id="orga64fc82"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org502c8ec"></a>

### TODO revisit this next time (Rob solution?)


<a id="org304126a"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgdb775cf"></a>

## weekly challenge this week


<a id="orgf23f3dc"></a>

### <https://theweeklychallenge.org/>


<a id="org88f8974"></a>

## from previous meetings


<a id="org7695c1e"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org2d6a0fc"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org84032b3"></a>

## announcements


<a id="org07f320a"></a>

### May 8th: next raku study group meeting


<a id="org00e3bc5"></a>

### June 21-25: tprc: perl/raku conference
