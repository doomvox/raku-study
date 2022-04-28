- [meeting notes May 08, 2022](#orgba1a266)
  - [the raku study group](#org1df3f69)
    - ["Raku Saki Robots" (?)](#org2e8eaee)
    - [usual links](#orgf2b5d9d)
  - [finished to test to examine ^methods issues](#org56ffcd6)
  - [raku's "move" considered screwed-up](#orgedd663e)
    - [<https://docs.raku.org/routine/move>](#org174aa68)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org4989e00)
    - [discussed last meeting:](#org72aa691)
  - [bill michaels](#org4c202ba)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org34babd1)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org8f83a61)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org41a76a4)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org7e55336)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org3bc0c29)
  - [equilibirum index](#orgab46e1a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org03c2a8d)
    - [revisit this next time (Rob solution?)](#orgdba1af9)
  - [Rob's interested in discussing missing basic tools](#orga70b2c1)
  - [weekly challenge this week](#orgc4dbd72)
    - [<https://theweeklychallenge.org/>](#org8770fe5)
  - [from previous meetings](#org070d6bf)
    - [an answer to what's Raku for:](#orgaadf626)
    - [gui toolkits](#orga1d7330)
  - [announcements](#org5aa25d9)
    - [May 8th: next raku study group meeting](#org029b866)
    - [June 21-25: tprc: perl/raku conference](#orgd741f31)


<a id="orgba1a266"></a>

# meeting notes May 08, 2022


<a id="org1df3f69"></a>

## the raku study group


<a id="org2e8eaee"></a>

### "Raku Saki Robots" (?)


<a id="orgf2b5d9d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org56ffcd6"></a>

## finished to test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  miscelanious things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgedd663e"></a>

## raku's "move" considered screwed-up


<a id="org174aa68"></a>

### <https://docs.raku.org/routine/move>


<a id="org4989e00"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org72aa691"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org4c202ba"></a>

## bill michaels


<a id="org34babd1"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org8f83a61"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org41a76a4"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org7e55336"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org3bc0c29"></a>

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


<a id="orgab46e1a"></a>

## equilibirum index


<a id="org03c2a8d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="orgdba1af9"></a>

### TODO revisit this next time (Rob solution?)


<a id="orga70b2c1"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgc4dbd72"></a>

## weekly challenge this week


<a id="org8770fe5"></a>

### <https://theweeklychallenge.org/>


<a id="org070d6bf"></a>

## from previous meetings


<a id="orgaadf626"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orga1d7330"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org5aa25d9"></a>

## announcements


<a id="org029b866"></a>

### May 8th: next raku study group meeting


<a id="orgd741f31"></a>

### June 21-25: tprc: perl/raku conference
