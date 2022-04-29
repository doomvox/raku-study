- [meeting notes May 08, 2022](#org28ba060)
  - [the raku study group](#org76dc1bf)
    - [usual links](#orga280662)
  - [finished test to examine ^methods issues](#org5d85a15)
  - [raku's "move" considered screwed-up](#org4b21e28)
    - [<https://docs.raku.org/routine/move>](#orgf3b0377)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org1ec9b2a)
    - [discussed last meeting:](#orgd56d715)
  - [sniping at perl, circa 2009](#org196c6f7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org34fee69)
  - [equilibirum index](#org88917ac)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc969d7f)
    - [revisit this next time (Rob solution?)](#orge69e7dc)
  - [Rob's interested in discussing missing basic tools](#org46c7f2e)
  - [weekly challenge this week](#org84b6af2)
    - [<https://theweeklychallenge.org/>](#org1bd884b)
  - [from previous meetings](#org599ca19)
    - [an answer to what's Raku for:](#org2530597)
    - [gui toolkits](#org728b339)
  - [bill michaels](#org31f2970)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org2688143)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org0983b43)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orge7301ca)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgf3e41e1)
  - [announcements](#org2e5957c)
    - [May 8th: next raku study group meeting](#org0b9d37c)
    - [June 21-25: tprc: perl/raku conference](#orge836561)


<a id="org28ba060"></a>

# meeting notes May 08, 2022


<a id="org76dc1bf"></a>

## the raku study group


<a id="orga280662"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org5d85a15"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org4b21e28"></a>

## raku's "move" considered screwed-up


<a id="orgf3b0377"></a>

### <https://docs.raku.org/routine/move>


<a id="org1ec9b2a"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgd56d715"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org196c6f7"></a>

## sniping at perl, circa 2009


<a id="org34fee69"></a>

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


<a id="org88917ac"></a>

## equilibirum index


<a id="orgc969d7f"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orge69e7dc"></a>

### TODO revisit this next time (Rob solution?)


<a id="org46c7f2e"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org84b6af2"></a>

## weekly challenge this week


<a id="org1bd884b"></a>

### <https://theweeklychallenge.org/>


<a id="org599ca19"></a>

## from previous meetings


<a id="org2530597"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org728b339"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org31f2970"></a>

## bill michaels


<a id="org2688143"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org0983b43"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orge7301ca"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgf3e41e1"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org2e5957c"></a>

## announcements


<a id="org0b9d37c"></a>

### May 8th: next raku study group meeting


<a id="orge836561"></a>

### June 21-25: tprc: perl/raku conference
