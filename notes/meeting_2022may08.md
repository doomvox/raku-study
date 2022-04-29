- [meeting notes May 08, 2022](#org8f1b5eb)
  - [the raku study group](#org7bbdea0)
    - [usual links](#org2e4c54f)
  - [finished test to examine ^methods issues](#orgcda902b)
  - [raku's "move" considered screwed-up](#org8c7f10c)
    - [<https://docs.raku.org/routine/move>](#orge3a1f1a)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org85210f0)
    - [move/copy command in Raku doesn't work with directory as second arg](#org1358684)
    - [discussed last meeting:](#orgd907f42)
  - [sniping at perl, circa 2009](#org436e5fe)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgc93b14b)
  - [equilibirum index](#org0e7ec26)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgfc8ec4c)
    - [revisit this next time (Rob solution?)](#org3501ff8)
  - [Rob's interested in discussing missing basic tools](#org3527008)
  - [weekly challenge this week](#orga21cf56)
    - [<https://theweeklychallenge.org/>](#orge3653f9)
  - [from previous meetings](#orgc0ed2a3)
    - [an answer to what's Raku for:](#org8e07dbc)
    - [gui toolkits](#orgef6a1c8)
  - [bill michaels](#orgb0d7e2e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge87fd8f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org482c905)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org798ebb1)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orge0eee62)
  - [announcements](#orgf65ad92)
    - [May 8th: next raku study group meeting](#org718d1f1)
    - [June 21-25: tprc: perl/raku conference](#org1e9a1dc)


<a id="org8f1b5eb"></a>

# meeting notes May 08, 2022


<a id="org7bbdea0"></a>

## the raku study group


<a id="org2e4c54f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgcda902b"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org8c7f10c"></a>

## raku's "move" considered screwed-up


<a id="orge3a1f1a"></a>

### <https://docs.raku.org/routine/move>


<a id="org85210f0"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org1358684"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgd907f42"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>

2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'

3.  "persons.txt".IO

    "time.txt".IO

4.  raku -e 'mkdir IO::Path.new("../dest");'

5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'

6.  ls ../dest

7.  persons.txt time.txt


<a id="org436e5fe"></a>

## sniping at perl, circa 2009


<a id="orgc93b14b"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>


<a id="org0e7ec26"></a>

## equilibirum index


<a id="orgfc8ec4c"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org3501ff8"></a>

### TODO revisit this next time (Rob solution?)


<a id="org3527008"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orga21cf56"></a>

## weekly challenge this week


<a id="orge3653f9"></a>

### <https://theweeklychallenge.org/>


<a id="orgc0ed2a3"></a>

## from previous meetings


<a id="org8e07dbc"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgef6a1c8"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgb0d7e2e"></a>

## bill michaels


<a id="orge87fd8f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org482c905"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org798ebb1"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orge0eee62"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgf65ad92"></a>

## announcements


<a id="org718d1f1"></a>

### May 8th: next raku study group meeting


<a id="org1e9a1dc"></a>

### June 21-25: tprc: perl/raku conference
