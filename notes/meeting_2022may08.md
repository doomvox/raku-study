- [meeting notes May 08, 2022](#orga15ba50)
  - [the raku study group](#orgcfd119d)
    - ["Raku Saki Robots" (?)](#org6705125)
    - [usual links](#org9ad089f)
  - [the new "darkroast" project](#orgb9454fb)
    - [<https://github.com/doomvox/darkroast>](#org5bf4f80)
    - [expanded the first test there](#org89d4e40)
  - [raku's "move" considered screwed-up](#org154b82d)
    - [<https://docs.raku.org/routine/move>](#org3cf2f1d)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgf8eef4f)
    - [discussed last meeting:](#orgee02676)
  - [bill michaels](#org916b172)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8679d7e)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org7f48c4d)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org7c16c2a)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org8aec9f7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org12d9b76)
  - [equilibirum index](#org925df56)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org9041238)
    - [revisit this next time (Rob solution?)](#org96425b6)
  - [Rob's interested in discussing missing basic tools](#org4b26afc)
  - [weekly challenge this week](#orgb47218b)
    - [<https://theweeklychallenge.org/>](#orgccd1c1b)
  - [from previous meetings](#orgc1f6aec)
    - [an answer to what's Raku for:](#org0e79753)
    - [gui toolkits](#org0b6243c)
  - [announcements](#org0203cf1)
    - [May 8th: next raku study group meeting](#org22b2e48)
    - [June 21-25: tprc: perl/raku conference](#org70673d6)


<a id="orga15ba50"></a>

# meeting notes May 08, 2022


<a id="orgcfd119d"></a>

## the raku study group


<a id="org6705125"></a>

### "Raku Saki Robots" (?)


<a id="org9ad089f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgb9454fb"></a>

## the new "darkroast" project


<a id="org5bf4f80"></a>

### <https://github.com/doomvox/darkroast>


<a id="org89d4e40"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org154b82d"></a>

## raku's "move" considered screwed-up


<a id="org3cf2f1d"></a>

### <https://docs.raku.org/routine/move>


<a id="orgf8eef4f"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgee02676"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org916b172"></a>

## bill michaels


<a id="org8679d7e"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org7f48c4d"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org7c16c2a"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org8aec9f7"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org12d9b76"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

4.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>

6.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>

7.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>

8.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org925df56"></a>

## equilibirum index


<a id="org9041238"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org96425b6"></a>

### TODO revisit this next time (Rob solution?)


<a id="org4b26afc"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgb47218b"></a>

## weekly challenge this week


<a id="orgccd1c1b"></a>

### <https://theweeklychallenge.org/>


<a id="orgc1f6aec"></a>

## from previous meetings


<a id="org0e79753"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org0b6243c"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org0203cf1"></a>

## announcements


<a id="org22b2e48"></a>

### May 8th: next raku study group meeting


<a id="org70673d6"></a>

### June 21-25: tprc: perl/raku conference
