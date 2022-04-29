- [meeting notes May 08, 2022](#orga71d9d2)
  - [the raku study group](#org2abd926)
    - [usual links](#orgde519ac)
  - [finished test to examine ^methods issues](#org0b93e56)
  - [raku's "move" considered screwed-up](#org1cf0b10)
    - [<https://docs.raku.org/routine/move>](#orgdc6db3a)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org00e21d3)
    - [discussed last meeting:](#orgf698ccc)
  - [sniping at perl, circa 2009](#org6991a3b)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org13ee3b3)
  - [equilibirum index](#orgc2a6782)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org01b34ff)
    - [revisit this next time (Rob solution?)](#org9431d6d)
  - [Rob's interested in discussing missing basic tools](#orgce6d21f)
  - [weekly challenge this week](#org9eaf1f6)
    - [<https://theweeklychallenge.org/>](#orge7762de)
  - [from previous meetings](#orgecd338e)
    - [an answer to what's Raku for:](#orgfcca646)
    - [gui toolkits](#orga8b92af)
  - [bill michaels](#orgdcff806)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org58d2589)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org8d472a7)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgbcfe14a)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org0b28cb6)
  - [announcements](#orgc63aaf2)
    - [May 8th: next raku study group meeting](#org2b47d58)
    - [June 21-25: tprc: perl/raku conference](#orge993b1d)


<a id="orga71d9d2"></a>

# meeting notes May 08, 2022


<a id="org2abd926"></a>

## the raku study group


<a id="orgde519ac"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org0b93e56"></a>

## finished test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org1cf0b10"></a>

## raku's "move" considered screwed-up


<a id="orgdc6db3a"></a>

### <https://docs.raku.org/routine/move>


<a id="org00e21d3"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgf698ccc"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org6991a3b"></a>

## sniping at perl, circa 2009


<a id="org13ee3b3"></a>

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


<a id="orgc2a6782"></a>

## equilibirum index


<a id="org01b34ff"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org9431d6d"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgce6d21f"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org9eaf1f6"></a>

## weekly challenge this week


<a id="orge7762de"></a>

### <https://theweeklychallenge.org/>


<a id="orgecd338e"></a>

## from previous meetings


<a id="orgfcca646"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga8b92af"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgdcff806"></a>

## bill michaels


<a id="org58d2589"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org8d472a7"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgbcfe14a"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org0b28cb6"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgc63aaf2"></a>

## announcements


<a id="org2b47d58"></a>

### May 8th: next raku study group meeting


<a id="orge993b1d"></a>

### June 21-25: tprc: perl/raku conference
