- [meeting notes May 08, 2022](#orgfa5f665)
  - [the raku study group](#orga0506f7)
    - ["Raku Saki Robots" (?)](#orga8f590c)
    - [usual links](#org83ca7d9)
  - [the new "darkroast" project](#org8675b3b)
    - [<https://github.com/doomvox/darkroast>](#org42f0be8)
    - [expanded the first test there](#orgdeb78dd)
  - [raku's "move" considered screwed-up](#org34cc322)
    - [<https://docs.raku.org/routine/move>](#org599ea74)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org61985a9)
    - [discussed last meeting:](#org0d25438)
  - [bill michaels](#org0e680ba)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org5c5f4a4)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org13cfd10)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org5b348b1)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orge811627)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org31aac1e)
  - [equilibirum index](#org67917f4)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgc4c61e6)
    - [revisit this next time (Rob solution?)](#orgc56fb80)
  - [Rob's interested in discussing missing basic tools](#orge618090)
  - [weekly challenge this week](#orgfc548e7)
    - [<https://theweeklychallenge.org/>](#orgd13ef48)
  - [from previous meetings](#org178978f)
    - [an answer to what's Raku for:](#org57bd6cd)
    - [gui toolkits](#orga61ee1a)
  - [announcements](#org93c92ae)
    - [May 8th: next raku study group meeting](#org662c879)
    - [June 21-25: tprc: perl/raku conference](#orgef59281)


<a id="orgfa5f665"></a>

# meeting notes May 08, 2022


<a id="orga0506f7"></a>

## the raku study group


<a id="orga8f590c"></a>

### "Raku Saki Robots" (?)


<a id="org83ca7d9"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org8675b3b"></a>

## the new "darkroast" project


<a id="org42f0be8"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgdeb78dd"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org34cc322"></a>

## raku's "move" considered screwed-up


<a id="org599ea74"></a>

### <https://docs.raku.org/routine/move>


<a id="org61985a9"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org0d25438"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org0e680ba"></a>

## bill michaels


<a id="org5c5f4a4"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org13cfd10"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org5b348b1"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orge811627"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org31aac1e"></a>

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


<a id="org67917f4"></a>

## equilibirum index


<a id="orgc4c61e6"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgc56fb80"></a>

### TODO revisit this next time (Rob solution?)


<a id="orge618090"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgfc548e7"></a>

## weekly challenge this week


<a id="orgd13ef48"></a>

### <https://theweeklychallenge.org/>


<a id="org178978f"></a>

## from previous meetings


<a id="org57bd6cd"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga61ee1a"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org93c92ae"></a>

## announcements


<a id="org662c879"></a>

### May 8th: next raku study group meeting


<a id="orgef59281"></a>

### June 21-25: tprc: perl/raku conference
