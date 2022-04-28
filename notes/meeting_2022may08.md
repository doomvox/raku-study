- [meeting notes May 08, 2022](#orgb3e1acc)
  - [the raku study group](#orge4a1f7a)
    - ["Raku Saki Robots" (?)](#org3bcbb6e)
    - [usual links](#orge8a722f)
  - [the new "darkroast" project](#org2871b92)
    - [<https://github.com/doomvox/darkroast>](#orgbc5c4f6)
    - [expanded the first test there](#org0452b19)
  - [raku's "move" considered screwed-up](#org3fb365a)
    - [<https://docs.raku.org/routine/move>](#org2fb94ae)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org2b5ff8c)
    - [discussed last meeting:](#orgac066ea)
  - [bill michaels](#orga1b2708)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge50e65f)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org85b0bcf)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org2554f8b)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org00f2a02)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org8774857)
  - [equilibirum index](#orgc2af0eb)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org50e1ad6)
    - [revisit this next time (Rob solution?)](#org4cdf7af)
  - [Rob's interested in discussing missing basic tools](#org9ea7dd4)
  - [weekly challenge this week](#org15e0193)
    - [<https://theweeklychallenge.org/>](#orgde7ddb6)
  - [from previous meetings](#org595e9df)
    - [an answer to what's Raku for:](#orgea5976a)
    - [gui toolkits](#org477d566)
  - [announcements](#org372556d)
    - [May 8th: next raku study group meeting](#orgc92ac05)
    - [June 21-25: tprc: perl/raku conference](#orgf9f0f3b)


<a id="orgb3e1acc"></a>

# meeting notes May 08, 2022


<a id="orge4a1f7a"></a>

## the raku study group


<a id="org3bcbb6e"></a>

### "Raku Saki Robots" (?)


<a id="orge8a722f"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org2871b92"></a>

## the new "darkroast" project


<a id="orgbc5c4f6"></a>

### <https://github.com/doomvox/darkroast>


<a id="org0452b19"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org3fb365a"></a>

## raku's "move" considered screwed-up


<a id="org2fb94ae"></a>

### <https://docs.raku.org/routine/move>


<a id="org2b5ff8c"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orgac066ea"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orga1b2708"></a>

## bill michaels


<a id="orge50e65f"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org85b0bcf"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org2554f8b"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org00f2a02"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org8774857"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

4.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>

6.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>

7.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>

8.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>

9.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="orgc2af0eb"></a>

## equilibirum index


<a id="org50e1ad6"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org4cdf7af"></a>

### TODO revisit this next time (Rob solution?)


<a id="org9ea7dd4"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org15e0193"></a>

## weekly challenge this week


<a id="orgde7ddb6"></a>

### <https://theweeklychallenge.org/>


<a id="org595e9df"></a>

## from previous meetings


<a id="orgea5976a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org477d566"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org372556d"></a>

## announcements


<a id="orgc92ac05"></a>

### May 8th: next raku study group meeting


<a id="orgf9f0f3b"></a>

### June 21-25: tprc: perl/raku conference
