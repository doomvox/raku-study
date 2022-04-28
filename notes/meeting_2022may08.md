- [meeting notes May 08, 2022](#orgf902244)
  - [the raku study group](#orgda7c819)
    - ["Raku Saki Robots" (?)](#orge35765a)
    - [usual links](#orge7898f4)
  - [finished to test to examine ^methods issues](#org4e361f4)
  - [raku's "move" considered screwed-up](#orgb90aff6)
    - [<https://docs.raku.org/routine/move>](#org3d9ace3)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org1a5a0c3)
    - [discussed last meeting:](#org72ef638)
  - [bill michaels](#org788c9c9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org1df28b6)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc7a5207)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org641e564)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org1385dec)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgda2e462)
  - [equilibirum index](#org5219f18)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org1abd723)
    - [revisit this next time (Rob solution?)](#org2fbf347)
  - [Rob's interested in discussing missing basic tools](#org2d6e73a)
  - [weekly challenge this week](#org51e1691)
    - [<https://theweeklychallenge.org/>](#orgf81fbe5)
  - [from previous meetings](#orgf9846f4)
    - [an answer to what's Raku for:](#org0290d7e)
    - [gui toolkits](#org26136e7)
  - [announcements](#org5ff2450)
    - [May 8th: next raku study group meeting](#org2759794)
    - [June 21-25: tprc: perl/raku conference](#orge2422b9)


<a id="orgf902244"></a>

# meeting notes May 08, 2022


<a id="orgda7c819"></a>

## the raku study group


<a id="orge35765a"></a>

### "Raku Saki Robots" (?)


<a id="orge7898f4"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org4e361f4"></a>

## finished to test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  miscelanious things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgb90aff6"></a>

## raku's "move" considered screwed-up


<a id="org3d9ace3"></a>

### <https://docs.raku.org/routine/move>


<a id="org1a5a0c3"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org72ef638"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org788c9c9"></a>

## bill michaels


<a id="org1df28b6"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc7a5207"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org641e564"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org1385dec"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgda2e462"></a>

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


<a id="org5219f18"></a>

## equilibirum index


<a id="org1abd723"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org2fbf347"></a>

### TODO revisit this next time (Rob solution?)


<a id="org2d6e73a"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org51e1691"></a>

## weekly challenge this week


<a id="orgf81fbe5"></a>

### <https://theweeklychallenge.org/>


<a id="orgf9846f4"></a>

## from previous meetings


<a id="org0290d7e"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org26136e7"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org5ff2450"></a>

## announcements


<a id="org2759794"></a>

### May 8th: next raku study group meeting


<a id="orge2422b9"></a>

### June 21-25: tprc: perl/raku conference
