- [meeting notes May 08, 2022](#orgca1da85)
  - [the raku study group](#org5eaf11f)
    - [usual links](#org353dc9d)
  - [finished to test to examine ^methods issues](#org10c8932)
  - [raku's "move" considered screwed-up](#orgdcba557)
    - [<https://docs.raku.org/routine/move>](#orgc3dddd8)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#orgd7649e0)
    - [discussed last meeting:](#orge39c2e2)
  - [sniping at perl, circa 2009](#org0ee0074)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org6f23c64)
  - [equilibirum index](#orgff44e57)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org1b9031f)
    - [revisit this next time (Rob solution?)](#org97c315c)
  - [Rob's interested in discussing missing basic tools](#orgca5223c)
  - [weekly challenge this week](#orgac31e04)
    - [<https://theweeklychallenge.org/>](#org65eac84)
  - [from previous meetings](#orgf6d76ee)
    - [an answer to what's Raku for:](#orge703805)
    - [gui toolkits](#org7365d38)
  - [bill michaels](#org85ae912)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org8f46a54)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org1b695db)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgaec9671)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org2c02912)
  - [announcements](#orgacd934e)
    - [May 8th: next raku study group meeting](#org263553b)
    - [June 21-25: tprc: perl/raku conference](#orgc7f0ef7)


<a id="orgca1da85"></a>

# meeting notes May 08, 2022


<a id="org5eaf11f"></a>

## the raku study group


<a id="org353dc9d"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org10c8932"></a>

## finished to test to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-caret<sub>methods</sub><sub>method</sub>


<a id="orgdcba557"></a>

## raku's "move" considered screwed-up


<a id="orgc3dddd8"></a>

### <https://docs.raku.org/routine/move>


<a id="orgd7649e0"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="orge39c2e2"></a>

### discussed last meeting:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org0ee0074"></a>

## sniping at perl, circa 2009


<a id="org6f23c64"></a>

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


<a id="orgff44e57"></a>

## equilibirum index


<a id="org1b9031f"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org97c315c"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgca5223c"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgac31e04"></a>

## weekly challenge this week


<a id="org65eac84"></a>

### <https://theweeklychallenge.org/>


<a id="orgf6d76ee"></a>

## from previous meetings


<a id="orge703805"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org7365d38"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org85ae912"></a>

## bill michaels


<a id="org8f46a54"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org1b695db"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgaec9671"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org2c02912"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgacd934e"></a>

## announcements


<a id="org263553b"></a>

### May 8th: next raku study group meeting


<a id="orgc7f0ef7"></a>

### June 21-25: tprc: perl/raku conference
