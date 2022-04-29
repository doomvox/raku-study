- [meeting notes May 08, 2022](#orgee8c7ec)
  - [the raku study group](#org92ba9d4)
    - [usual links](#org8b3e095)
  - [finished test to examine ^methods issues](#org01b606e)
  - [raku's "move" considered screwed-up](#org2b4c73c)
    - [<https://docs.raku.org/routine/move>](#org76c4681)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org0631d70)
    - [discussed last meeting:](#org3c5eaf9)
  - [sniping at perl, circa 2009](#orgcc5b219)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orge0a9a34)
  - [equilibirum index](#org4f6b6b2)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org3d265cf)
    - [revisit this next time (Rob solution?)](#org992e7e7)
  - [Rob's interested in discussing missing basic tools](#org47635f5)
  - [weekly challenge this week](#org5079bb5)
    - [<https://theweeklychallenge.org/>](#orgb57f17a)
  - [from previous meetings](#org52e244e)
    - [an answer to what's Raku for:](#org06408a6)
    - [gui toolkits](#orge0ec90c)
  - [bill michaels](#org89dca7e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgbd7d36a)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org8418a21)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org41e4a7e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org43773c2)
  - [announcements](#org9c02123)
    - [May 8th: next raku study group meeting](#org0f6753e)
    - [June 21-25: tprc: perl/raku conference](#org651393d)


<a id="orgee8c7ec"></a>

# meeting notes May 08, 2022


<a id="org92ba9d4"></a>

## the raku study group


<a id="org8b3e095"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org01b606e"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org2b4c73c"></a>

## raku's "move" considered screwed-up


<a id="org76c4681"></a>

### <https://docs.raku.org/routine/move>


<a id="org0631d70"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org3c5eaf9"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgcc5b219"></a>

## sniping at perl, circa 2009


<a id="orge0a9a34"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>

6.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org4f6b6b2"></a>

## equilibirum index


<a id="org3d265cf"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org992e7e7"></a>

### TODO revisit this next time (Rob solution?)


<a id="org47635f5"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org5079bb5"></a>

## weekly challenge this week


<a id="orgb57f17a"></a>

### <https://theweeklychallenge.org/>


<a id="org52e244e"></a>

## from previous meetings


<a id="org06408a6"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge0ec90c"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org89dca7e"></a>

## bill michaels


<a id="orgbd7d36a"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org8418a21"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org41e4a7e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org43773c2"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org9c02123"></a>

## announcements


<a id="org0f6753e"></a>

### May 8th: next raku study group meeting


<a id="org651393d"></a>

### June 21-25: tprc: perl/raku conference
