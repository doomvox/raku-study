- [meeting notes May 08, 2022](#orgec5dcb3)
  - [the raku study group](#orgd1ff7cc)
    - ["Raku Saki Robots" (?)](#org2c1b4d5)
    - [usual links](#org44ef28e)
  - [the new "darkroast" project](#org0dce3a7)
    - [<https://github.com/doomvox/darkroast>](#orgad0ca73)
    - [expanded the first test there](#org7525f16)
  - [raku's "move" considered screwed-up](#org1671437)
    - [<https://docs.raku.org/routine/move>](#org0087844)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgb900d20)
    - [discussed last meeting:](#org81e0fa6)
  - [bill michaels](#orgddef18c)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgdbaa4e0)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orga75f5b3)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org049438b)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org132526e)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgf3a1340)
  - [equilibirum index](#org72c5c69)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgd631186)
    - [revisit this next time (Rob solution?)](#orga864632)
  - [Rob's interested in discussing missing basic tools](#org6e07e81)
  - [weekly challenge this week](#org8f80b8e)
    - [<https://theweeklychallenge.org/>](#org3af48c4)
  - [from previous meetings](#orga5e4680)
    - [an answer to what's Raku for:](#org11b8812)
    - [gui toolkits](#org3c4d022)
  - [announcements](#org965f10f)
    - [May 8th: next raku study group meeting](#org943a7d4)
    - [June 21-25: tprc: perl/raku conference](#org5315f45)


<a id="orgec5dcb3"></a>

# meeting notes May 08, 2022


<a id="orgd1ff7cc"></a>

## the raku study group


<a id="org2c1b4d5"></a>

### "Raku Saki Robots" (?)


<a id="org44ef28e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org0dce3a7"></a>

## the new "darkroast" project


<a id="orgad0ca73"></a>

### <https://github.com/doomvox/darkroast>


<a id="org7525f16"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  miscelanious things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org1671437"></a>

## raku's "move" considered screwed-up


<a id="org0087844"></a>

### <https://docs.raku.org/routine/move>


<a id="orgb900d20"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org81e0fa6"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orgddef18c"></a>

## bill michaels


<a id="orgdbaa4e0"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orga75f5b3"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org049438b"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org132526e"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgf3a1340"></a>

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


<a id="org72c5c69"></a>

## equilibirum index


<a id="orgd631186"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orga864632"></a>

### TODO revisit this next time (Rob solution?)


<a id="org6e07e81"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org8f80b8e"></a>

## weekly challenge this week


<a id="org3af48c4"></a>

### <https://theweeklychallenge.org/>


<a id="orga5e4680"></a>

## from previous meetings


<a id="org11b8812"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org3c4d022"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org965f10f"></a>

## announcements


<a id="org943a7d4"></a>

### May 8th: next raku study group meeting


<a id="org5315f45"></a>

### June 21-25: tprc: perl/raku conference
