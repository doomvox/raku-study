- [meeting notes May 08, 2022](#orgfd50d33)
  - [the raku study group](#orgdc86bb5)
    - ["Raku Saki Robots" (?)](#org8eedd42)
    - [usual links](#org1eac630)
  - [the new "darkroast" project](#orgf3c265b)
    - [<https://github.com/doomvox/darkroast>](#orge9b669d)
    - [](#org26d504f)
  - [raku's "move" considered screwed-up](#orge865908)
    - [<https://docs.raku.org/routine/move>](#org55ba797)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org45881ae)
    - [discussed last meeting:](#org91ccc50)
  - [bill michaels](#orga53a507)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org0bac4be)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgdf86019)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgb3c34e5)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org41db006)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org57dffdd)
  - [equilibirum index](#org256cfdc)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org78e30ab)
    - [revisit this next time (Rob solution?)](#org579ee86)
  - [Rob's interested in discussing missing basic tools](#orgbd4d715)
  - [weekly challenge this week](#orge5e5d46)
    - [<https://theweeklychallenge.org/>](#org102a19b)
  - [from previous meetings](#orgac14f0f)
    - [an answer to what's Raku for:](#org05f8e4b)
    - [gui toolkits](#orge5536ae)
  - [announcements](#org785d189)
    - [May 8th: next raku study group meeting](#orge3cc9d2)
    - [June 21-25: tprc: perl/raku conference](#orgd613738)


<a id="orgfd50d33"></a>

# meeting notes May 08, 2022


<a id="orgdc86bb5"></a>

## the raku study group


<a id="org8eedd42"></a>

### "Raku Saki Robots" (?)


<a id="org1eac630"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orgf3c265b"></a>

## the new "darkroast" project


<a id="orge9b669d"></a>

### <https://github.com/doomvox/darkroast>


<a id="org26d504f"></a>

### 


<a id="orge865908"></a>

## raku's "move" considered screwed-up


<a id="org55ba797"></a>

### <https://docs.raku.org/routine/move>


<a id="org45881ae"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org91ccc50"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orga53a507"></a>

## bill michaels


<a id="org0bac4be"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgdf86019"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgb3c34e5"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org41db006"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org57dffdd"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

    1.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"
    
    2.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."
    
    3.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

2.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org256cfdc"></a>

## equilibirum index


<a id="org78e30ab"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org579ee86"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgbd4d715"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orge5e5d46"></a>

## weekly challenge this week


<a id="org102a19b"></a>

### <https://theweeklychallenge.org/>


<a id="orgac14f0f"></a>

## from previous meetings


<a id="org05f8e4b"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orge5536ae"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org785d189"></a>

## announcements


<a id="orge3cc9d2"></a>

### May 8th: next raku study group meeting


<a id="orgd613738"></a>

### June 21-25: tprc: perl/raku conference
