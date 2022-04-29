- [meeting notes May 08, 2022](#org7e19daf)
  - [the raku study group](#org2603ac7)
    - [usual links](#org4c3f2b7)
  - [finished test to examine ^methods issues](#orga1556e7)
  - [raku's "move" considered screwed-up](#org7bdc03e)
    - [<https://docs.raku.org/routine/move>](#org635f392)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orga5030d4)
    - [move/copy command in Raku doesn't work with directory as second arg](#org842ba01)
    - [discussed last meeting:](#org08767e5)
  - [sniping at perl, circa 2009](#orgb92c267)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org1ce16ce)
  - [equilibirum index](#org6a918c4)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org1ed09d8)
    - [revisit this next time (Rob solution?)](#org1987a47)
  - [Rob's interested in discussing missing basic tools](#org597a782)
  - [weekly challenge this week](#org95c9e76)
    - [<https://theweeklychallenge.org/>](#org45fdb70)
  - [from previous meetings](#orgf624890)
    - [an answer to what's Raku for:](#org5cca02d)
    - [gui toolkits](#orgacf8d21)
  - [bill michaels](#orgb7523ce)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgf73f3a0)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org4ac86a8)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org50f1d8f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org5d6b93e)
  - [announcements](#org6ec5186)
    - [May 8th: next raku study group meeting](#org938be32)
    - [June 21-25: tprc: perl/raku conference](#org64fdfdb)


<a id="org7e19daf"></a>

# meeting notes May 08, 2022


<a id="org2603ac7"></a>

## the raku study group


<a id="org4c3f2b7"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga1556e7"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org7bdc03e"></a>

## raku's "move" considered screwed-up


<a id="org635f392"></a>

### <https://docs.raku.org/routine/move>


<a id="orga5030d4"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org842ba01"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org08767e5"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'

3.  "persons.txt".IO

    "time.txt".IO

4.  raku -e 'mkdir IO::Path.new("../dest");'

5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'

6.  ls ../dest

7.  persons.txt time.txt


<a id="orgb92c267"></a>

## sniping at perl, circa 2009


<a id="org1ce16ce"></a>

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


<a id="org6a918c4"></a>

## equilibirum index


<a id="org1ed09d8"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org1987a47"></a>

### TODO revisit this next time (Rob solution?)


<a id="org597a782"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org95c9e76"></a>

## weekly challenge this week


<a id="org45fdb70"></a>

### <https://theweeklychallenge.org/>


<a id="orgf624890"></a>

## from previous meetings


<a id="org5cca02d"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgacf8d21"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgb7523ce"></a>

## bill michaels


<a id="orgf73f3a0"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org4ac86a8"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org50f1d8f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org5d6b93e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org6ec5186"></a>

## announcements


<a id="org938be32"></a>

### May 8th: next raku study group meeting


<a id="org64fdfdb"></a>

### June 21-25: tprc: perl/raku conference
