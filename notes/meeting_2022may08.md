- [meeting notes May 08, 2022](#org51ebb9a)
  - [the raku study group](#orgac73d7f)
    - ["Raku Saki Robots"](#org352158b)
    - [usual links](#orgecb9627)
  - [finished to test to examine ^methods issues](#orgc4a2d7f)
  - [raku's "move" considered screwed-up](#org87ec597)
    - [<https://docs.raku.org/routine/move>](#org9ee488c)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org13823cc)
    - [discussed last meeting:](#org6fff87c)
  - [bill michaels](#orgfd1f0ba)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1b0a087)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org5e50b06)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org5d4b478)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org6afc42d)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org57c15b6)
  - [equilibirum index](#orgf5d45a0)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orge1cbbfb)
    - [revisit this next time (Rob solution?)](#orgea9ed78)
  - [Rob's interested in discussing missing basic tools](#org376601b)
  - [weekly challenge this week](#org7354503)
    - [<https://theweeklychallenge.org/>](#org00b5875)
  - [from previous meetings](#org30e5be8)
    - [an answer to what's Raku for:](#org4065c2d)
    - [gui toolkits](#org51a737f)
  - [announcements](#orgccfb4f0)
    - [May 8th: next raku study group meeting](#orgccbe20c)
    - [June 21-25: tprc: perl/raku conference](#org6176773)


<a id="org51ebb9a"></a>

# meeting notes May 08, 2022


<a id="orgac73d7f"></a>

## the raku study group


<a id="org352158b"></a>

### "Raku Saki Robots"


<a id="orgecb9627"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgc4a2d7f"></a>

## finished to test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org87ec597"></a>

## raku's "move" considered screwed-up


<a id="org9ee488c"></a>

### <https://docs.raku.org/routine/move>


<a id="org13823cc"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org6fff87c"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgfd1f0ba"></a>

## bill michaels


<a id="org1b0a087"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org5e50b06"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org5d4b478"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org6afc42d"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org57c15b6"></a>

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


<a id="orgf5d45a0"></a>

## equilibirum index


<a id="orge1cbbfb"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgea9ed78"></a>

### TODO revisit this next time (Rob solution?)


<a id="org376601b"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org7354503"></a>

## weekly challenge this week


<a id="org00b5875"></a>

### <https://theweeklychallenge.org/>


<a id="org30e5be8"></a>

## from previous meetings


<a id="org4065c2d"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org51a737f"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgccfb4f0"></a>

## announcements


<a id="orgccbe20c"></a>

### May 8th: next raku study group meeting


<a id="org6176773"></a>

### June 21-25: tprc: perl/raku conference
