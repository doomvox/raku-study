- [meeting notes May 08, 2022](#orge4754d8)
  - [the raku study group](#org8e5ef9b)
    - ["Raku Saki Robots" (?)](#org00f08c8)
    - [usual links](#orge431b3e)
  - [the new "darkroast" project](#org901c838)
    - [<https://github.com/doomvox/darkroast>](#orgf06c9cd)
    - [expanded the first test there](#orgbbc8d98)
  - [raku's "move" considered screwed-up](#org2803e3b)
    - [<https://docs.raku.org/routine/move>](#org73cca2f)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org152916e)
    - [discussed last meeting:](#org68789ec)
  - [bill michaels](#org4601861)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf3f5638)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga99b111)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgbcb0b29)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1cf1b32)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgf19b207)
  - [equilibirum index](#org4d7a48f)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgdaab8f2)
    - [revisit this next time (Rob solution?)](#org4e0964b)
  - [Rob's interested in discussing missing basic tools](#orgd972c50)
  - [weekly challenge this week](#org1e53659)
    - [<https://theweeklychallenge.org/>](#org2e98c4d)
  - [from previous meetings](#orgf13250f)
    - [an answer to what's Raku for:](#org6577d5f)
    - [gui toolkits](#org8464015)
  - [announcements](#orgd0d1e0d)
    - [May 8th: next raku study group meeting](#org54410fa)
    - [June 21-25: tprc: perl/raku conference](#orgd4c8ce0)


<a id="orge4754d8"></a>

# meeting notes May 08, 2022


<a id="org8e5ef9b"></a>

## the raku study group


<a id="org00f08c8"></a>

### "Raku Saki Robots" (?)


<a id="orge431b3e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org901c838"></a>

## the new "darkroast" project


<a id="orgf06c9cd"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgbbc8d98"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org2803e3b"></a>

## raku's "move" considered screwed-up


<a id="org73cca2f"></a>

### <https://docs.raku.org/routine/move>


<a id="org152916e"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org68789ec"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org4601861"></a>

## bill michaels


<a id="orgf3f5638"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga99b111"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgbcb0b29"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1cf1b32"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgf19b207"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

4.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>

6.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>

7.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org4d7a48f"></a>

## equilibirum index


<a id="orgdaab8f2"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org4e0964b"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgd972c50"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org1e53659"></a>

## weekly challenge this week


<a id="org2e98c4d"></a>

### <https://theweeklychallenge.org/>


<a id="orgf13250f"></a>

## from previous meetings


<a id="org6577d5f"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8464015"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgd0d1e0d"></a>

## announcements


<a id="org54410fa"></a>

### May 8th: next raku study group meeting


<a id="orgd4c8ce0"></a>

### June 21-25: tprc: perl/raku conference
