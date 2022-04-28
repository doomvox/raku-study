- [meeting notes May 08, 2022](#org2fc412f)
  - [the raku study group](#org86ff0c9)
    - ["Raku Saki Robots" (?)](#org729ac26)
    - [usual links](#orgd7b3111)
  - [the new "darkroast" project](#org899d6af)
    - [<https://github.com/doomvox/darkroast>](#orgb729c14)
    - [expanded the first test there](#orgbad1dad)
  - [raku's "move" considered screwed-up](#org0d91451)
    - [<https://docs.raku.org/routine/move>](#org36b8e92)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org999428d)
    - [discussed last meeting:](#org0442d6a)
  - [bill michaels](#org842988e)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orgb90567d)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orge02951d)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orge9318f1)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org9da14fd)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgb66d0b0)
  - [equilibirum index](#org11ae31b)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#orgddbc2fd)
    - [revisit this next time (Rob solution?)](#org2afec94)
  - [Rob's interested in discussing missing basic tools](#org1b5935f)
  - [weekly challenge this week](#orgfa6345b)
    - [<https://theweeklychallenge.org/>](#org51f45ce)
  - [from previous meetings](#org2fd22cd)
    - [an answer to what's Raku for:](#orga98558a)
    - [gui toolkits](#org891def7)
  - [announcements](#org63abab6)
    - [May 8th: next raku study group meeting](#org3e7dbcd)
    - [June 21-25: tprc: perl/raku conference](#org372f58a)


<a id="org2fc412f"></a>

# meeting notes May 08, 2022


<a id="org86ff0c9"></a>

## the raku study group


<a id="org729ac26"></a>

### "Raku Saki Robots" (?)


<a id="orgd7b3111"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org899d6af"></a>

## the new "darkroast" project


<a id="orgb729c14"></a>

### <https://github.com/doomvox/darkroast>


<a id="orgbad1dad"></a>

### expanded the first test there

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection>

2.  miscelanious things could be said about the code

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="org0d91451"></a>

## raku's "move" considered screwed-up


<a id="org36b8e92"></a>

### <https://docs.raku.org/routine/move>


<a id="org999428d"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org0442d6a"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org842988e"></a>

## bill michaels


<a id="orgb90567d"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orge02951d"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orge9318f1"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org9da14fd"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgb66d0b0"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  bill michaels brought up this piece from 2009

2.  true enough: "There are many wonderful modules in CPAN, but learning about them, learning to use them, finding out about their hidden corner-cases and unexpected behaviors takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

4.  links to steve yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>

6.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>

7.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>

8.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>

9.  move/copy command in Raku doesn't work with directory as second arg

    1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>
    
    2.  raku -e 'for dir(test => / .+ \\.txt /) {.say};'
    
    3.  "persons.txt".IO
    
        "time.txt".IO
    
    4.  raku -e 'mkdir IO::Path.new("../dest");'
    
    5.  raku -e 'for dir(test => / .+ \\.txt $ /) { copy $\_, "../dest/$\_", createonly => True};'
    
    6.  ls ../dest
    
    7.  persons.txt time.txt


<a id="org11ae31b"></a>

## equilibirum index


<a id="orgddbc2fd"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org2afec94"></a>

### TODO revisit this next time (Rob solution?)


<a id="org1b5935f"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgfa6345b"></a>

## weekly challenge this week


<a id="org51f45ce"></a>

### <https://theweeklychallenge.org/>


<a id="org2fd22cd"></a>

## from previous meetings


<a id="orga98558a"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org891def7"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org63abab6"></a>

## announcements


<a id="org3e7dbcd"></a>

### May 8th: next raku study group meeting


<a id="org372f58a"></a>

### June 21-25: tprc: perl/raku conference
