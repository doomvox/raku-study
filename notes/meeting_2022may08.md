- [meeting notes May 08, 2022](#org33815bd)
  - [the raku study group](#org9a08490)
    - ["Raku Saki Robots"](#org78fee10)
    - [usual links](#org696c378)
  - [finished to test to examine ^methods issues](#orgd330b46)
  - [raku's "move" considered screwed-up](#org1019a21)
    - [<https://docs.raku.org/routine/move>](#org6feab02)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgff4b021)
    - [discussed last meeting:](#orga21bd7b)
  - [sniping at perl, circa 2009](#org373e780)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org37cb99f)
  - [equilibirum index](#org4ec3fb1)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgcbcda51)
    - [revisit this next time (Rob solution?)](#org30acd71)
  - [Rob's interested in discussing missing basic tools](#orgec99f4d)
  - [weekly challenge this week](#orge6098bc)
    - [<https://theweeklychallenge.org/>](#orgb98aefa)
  - [from previous meetings](#org389a854)
    - [an answer to what's Raku for:](#org58bcd3e)
    - [gui toolkits](#org8c696c0)
  - [bill michaels](#orgabd59f7)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org7a47527)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org10b5be4)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org9310e7f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org2804d1c)
  - [announcements](#org004bad9)
    - [May 8th: next raku study group meeting](#org9eee63f)
    - [June 21-25: tprc: perl/raku conference](#orgb051b93)


<a id="org33815bd"></a>

# meeting notes May 08, 2022


<a id="org9a08490"></a>

## the raku study group


<a id="org78fee10"></a>

### "Raku Saki Robots"


<a id="org696c378"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgd330b46"></a>

## finished to test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org1019a21"></a>

## raku's "move" considered screwed-up


<a id="org6feab02"></a>

### <https://docs.raku.org/routine/move>


<a id="orgff4b021"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orga21bd7b"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org373e780"></a>

## sniping at perl, circa 2009


<a id="org37cb99f"></a>

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


<a id="org4ec3fb1"></a>

## equilibirum index


<a id="orgcbcda51"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org30acd71"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgec99f4d"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orge6098bc"></a>

## weekly challenge this week


<a id="orgb98aefa"></a>

### <https://theweeklychallenge.org/>


<a id="org389a854"></a>

## from previous meetings


<a id="org58bcd3e"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org8c696c0"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgabd59f7"></a>

## bill michaels


<a id="org7a47527"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org10b5be4"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org9310e7f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org2804d1c"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org004bad9"></a>

## announcements


<a id="org9eee63f"></a>

### May 8th: next raku study group meeting


<a id="orgb051b93"></a>

### June 21-25: tprc: perl/raku conference
