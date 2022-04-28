- [meeting notes May 08, 2022](#org3bd91d7)
  - [the raku study group](#org7ef34f3)
    - ["Raku Saki Robots" (?)](#orgdd680ac)
    - [usual links](#org25d2327)
  - [finished to test to examine ^methods issues](#org4a3430e)
    - [new "darkroast" project: <https://github.com/doomvox/darkroast>](#orgddfc0a8)
  - [raku's "move" considered screwed-up](#org66b0684)
    - [<https://docs.raku.org/routine/move>](#orgdcedb60)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgf350202)
    - [discussed last meeting:](#orge2af8b9)
  - [bill michaels](#org3449d88)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgc1b98b2)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org60b9c72)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org7fbccdb)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org3a9d688)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb8b46e9)
  - [equilibirum index](#org9c28b4a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orga0ad940)
    - [revisit this next time (Rob solution?)](#orgd53b57a)
  - [Rob's interested in discussing missing basic tools](#org0ab3c61)
  - [weekly challenge this week](#org078dfba)
    - [<https://theweeklychallenge.org/>](#org50ed7db)
  - [from previous meetings](#orgf695d3f)
    - [an answer to what's Raku for:](#org1d8f413)
    - [gui toolkits](#orgd1eaa71)
  - [announcements](#org2cd57ad)
    - [May 8th: next raku study group meeting](#org9f4c8f7)
    - [June 21-25: tprc: perl/raku conference](#org7d94e19)


<a id="org3bd91d7"></a>

# meeting notes May 08, 2022


<a id="org7ef34f3"></a>

## the raku study group


<a id="orgdd680ac"></a>

### "Raku Saki Robots" (?)


<a id="org25d2327"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org4a3430e"></a>

## finished to test to examine ^methods issues


<a id="orgddfc0a8"></a>

### new "darkroast" project: <https://github.com/doomvox/darkroast>

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  miscelanious things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org66b0684"></a>

## raku's "move" considered screwed-up


<a id="orgdcedb60"></a>

### <https://docs.raku.org/routine/move>


<a id="orgf350202"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orge2af8b9"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org3449d88"></a>

## bill michaels


<a id="orgc1b98b2"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org60b9c72"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org7fbccdb"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org3a9d688"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgb8b46e9"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

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


<a id="org9c28b4a"></a>

## equilibirum index


<a id="orga0ad940"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgd53b57a"></a>

### TODO revisit this next time (Rob solution?)


<a id="org0ab3c61"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org078dfba"></a>

## weekly challenge this week


<a id="org50ed7db"></a>

### <https://theweeklychallenge.org/>


<a id="orgf695d3f"></a>

## from previous meetings


<a id="org1d8f413"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgd1eaa71"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org2cd57ad"></a>

## announcements


<a id="org9f4c8f7"></a>

### May 8th: next raku study group meeting


<a id="org7d94e19"></a>

### June 21-25: tprc: perl/raku conference
