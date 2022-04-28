- [meeting notes May 08, 2022](#org5f61e20)
  - [the raku study group](#orgcf36f23)
    - ["Raku Saki Robots" (?)](#orgcf33572)
    - [usual links](#org5af5910)
  - [finished to test to examine ^methods issues](#orgbe2b1ee)
    - [new "darkroast" project: <https://github.com/doomvox/darkroast>](#org0b721e6)
    - [expanded the first test there](#org1b7a169)
  - [raku's "move" considered screwed-up](#orgf0becd0)
    - [<https://docs.raku.org/routine/move>](#org1bea4af)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org94397c6)
    - [discussed last meeting:](#org20cb6a7)
  - [bill michaels](#orgafb1486)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org130a781)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc7dc2d6)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org6219cd3)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgbb9e9b9)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orga720fd6)
  - [equilibirum index](#org586d121)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org9ec42ed)
    - [revisit this next time (Rob solution?)](#orgd63673f)
  - [Rob's interested in discussing missing basic tools](#org8cd42cc)
  - [weekly challenge this week](#org14c967f)
    - [<https://theweeklychallenge.org/>](#orgaed98a9)
  - [from previous meetings](#org0f97ef5)
    - [an answer to what's Raku for:](#org5382ff5)
    - [gui toolkits](#org611ed31)
  - [announcements](#orgab44667)
    - [May 8th: next raku study group meeting](#org8b347c6)
    - [June 21-25: tprc: perl/raku conference](#orga346a17)


<a id="org5f61e20"></a>

# meeting notes May 08, 2022


<a id="orgcf36f23"></a>

## the raku study group


<a id="orgcf33572"></a>

### "Raku Saki Robots" (?)


<a id="org5af5910"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgbe2b1ee"></a>

## finished to test to examine ^methods issues


<a id="org0b721e6"></a>

### new "darkroast" project: <https://github.com/doomvox/darkroast>


<a id="org1b7a169"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  miscelanious things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgf0becd0"></a>

## raku's "move" considered screwed-up


<a id="org1bea4af"></a>

### <https://docs.raku.org/routine/move>


<a id="org94397c6"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org20cb6a7"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgafb1486"></a>

## bill michaels


<a id="org130a781"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc7dc2d6"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org6219cd3"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgbb9e9b9"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orga720fd6"></a>

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


<a id="org586d121"></a>

## equilibirum index


<a id="org9ec42ed"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgd63673f"></a>

### TODO revisit this next time (Rob solution?)


<a id="org8cd42cc"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org14c967f"></a>

## weekly challenge this week


<a id="orgaed98a9"></a>

### <https://theweeklychallenge.org/>


<a id="org0f97ef5"></a>

## from previous meetings


<a id="org5382ff5"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org611ed31"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgab44667"></a>

## announcements


<a id="org8b347c6"></a>

### May 8th: next raku study group meeting


<a id="orga346a17"></a>

### June 21-25: tprc: perl/raku conference
