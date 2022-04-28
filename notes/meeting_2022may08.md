- [meeting notes May 08, 2022](#org036440d)
  - [the raku study group](#org2ff02e9)
    - ["Raku Saki Robots" (?)](#orged4208a)
    - [usual links](#orgafac228)
  - [finished to test to examine ^methods issues](#org3a1d295)
  - [raku's "move" considered screwed-up](#orgefc95ae)
    - [<https://docs.raku.org/routine/move>](#orgf8dfae1)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org48ffc87)
    - [discussed last meeting:](#org7c419a4)
  - [bill michaels](#orgd4e06c4)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org25239af)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgbc48fc3)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org7213669)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org5207b8a)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orga000ec3)
  - [equilibirum index](#org38466e0)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org9e83312)
    - [revisit this next time (Rob solution?)](#org0b2190c)
  - [Rob's interested in discussing missing basic tools](#org3c8afc8)
  - [weekly challenge this week](#org4807a7e)
    - [<https://theweeklychallenge.org/>](#org662c4d5)
  - [from previous meetings](#orgc1c8f97)
    - [an answer to what's Raku for:](#org76db5ca)
    - [gui toolkits](#orgabf94aa)
  - [announcements](#org67a3b9e)
    - [May 8th: next raku study group meeting](#org8e09013)
    - [June 21-25: tprc: perl/raku conference](#org6e862b3)


<a id="org036440d"></a>

# meeting notes May 08, 2022


<a id="org2ff02e9"></a>

## the raku study group


<a id="orged4208a"></a>

### "Raku Saki Robots" (?)


<a id="orgafac228"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org3a1d295"></a>

## finished to test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgefc95ae"></a>

## raku's "move" considered screwed-up


<a id="orgf8dfae1"></a>

### <https://docs.raku.org/routine/move>


<a id="org48ffc87"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org7c419a4"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgd4e06c4"></a>

## bill michaels


<a id="org25239af"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgbc48fc3"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org7213669"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org5207b8a"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orga000ec3"></a>

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


<a id="org38466e0"></a>

## equilibirum index


<a id="org9e83312"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org0b2190c"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3c8afc8"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org4807a7e"></a>

## weekly challenge this week


<a id="org662c4d5"></a>

### <https://theweeklychallenge.org/>


<a id="orgc1c8f97"></a>

## from previous meetings


<a id="org76db5ca"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgabf94aa"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org67a3b9e"></a>

## announcements


<a id="org8e09013"></a>

### May 8th: next raku study group meeting


<a id="org6e862b3"></a>

### June 21-25: tprc: perl/raku conference
