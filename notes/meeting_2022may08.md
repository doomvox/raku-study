- [meeting notes May 08, 2022](#org9916036)
  - [the raku study group](#org212704f)
    - ["Raku Saki Robots" (?)](#orgb85e710)
    - [usual links](#orgd3f04e6)
  - [the new "darkroast" project](#org0b5bbf1)
    - [<https://github.com/doomvox/darkroast>](#org3b48e31)
    - [](#org2271b4b)
  - [raku's "move" considered screwed-up](#org4643b99)
    - [<https://docs.raku.org/routine/move>](#org28f8b9f)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgaa111d9)
    - [discussed last meeting:](#org5809ef3)
  - [bill michaels](#orga0673e3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgfe75798)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1abd2d0)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgb13f5ad)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1cd1abe)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org28b0d16)
  - [equilibirum index](#org747033c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org3a63c74)
    - [revisit this next time (Rob solution?)](#orgb2e69a5)
  - [Rob's interested in discussing missing basic tools](#orgd715490)
  - [weekly challenge this week](#org5abf94e)
    - [<https://theweeklychallenge.org/>](#org33e749e)
  - [from previous meetings](#org5758cd1)
    - [an answer to what's Raku for:](#org2503354)
    - [gui toolkits](#org7d28a12)
  - [announcements](#org343acd0)
    - [May 8th: next raku study group meeting](#org2cde577)
    - [June 21-25: tprc: perl/raku conference](#orge72f70f)


<a id="org9916036"></a>

# meeting notes May 08, 2022


<a id="org212704f"></a>

## the raku study group


<a id="orgb85e710"></a>

### "Raku Saki Robots" (?)


<a id="orgd3f04e6"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org0b5bbf1"></a>

## the new "darkroast" project


<a id="org3b48e31"></a>

### <https://github.com/doomvox/darkroast>


<a id="org2271b4b"></a>

### 


<a id="org4643b99"></a>

## raku's "move" considered screwed-up


<a id="org28f8b9f"></a>

### <https://docs.raku.org/routine/move>


<a id="orgaa111d9"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org5809ef3"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orga0673e3"></a>

## bill michaels


<a id="orgfe75798"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1abd2d0"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgb13f5ad"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1cd1abe"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org28b0d16"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

    1.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

2.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org747033c"></a>

## equilibirum index


<a id="org3a63c74"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgb2e69a5"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgd715490"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org5abf94e"></a>

## weekly challenge this week


<a id="org33e749e"></a>

### <https://theweeklychallenge.org/>


<a id="org5758cd1"></a>

## from previous meetings


<a id="org2503354"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7d28a12"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org343acd0"></a>

## announcements


<a id="org2cde577"></a>

### May 8th: next raku study group meeting


<a id="orge72f70f"></a>

### June 21-25: tprc: perl/raku conference
