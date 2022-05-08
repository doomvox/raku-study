- [meeting notes May 08, 2022](#orgf29447e)
  - [the raku study group](#org919862f)
    - [usual links](#org95d887e)
  - [finished tests to examine ^methods issues](#org42628e6)
  - [raku's "move" considered ungood](#org6302917)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgfaad088)
    - [<https://docs.raku.org/routine/move>](#org4851332)
    - [we've discussed this one already:](#orge5055d0)
    - [an issue: the unix "mv" can do a rename or a refile](#org701e7fe)
  - [rob ransbottom](#org5b81d92)
    - [topics in mind, which are](#orgc125f9d)
    - [bruce gray](#org5cc04a6)
  - [recent raku topics](#orgc0ca07c)
    - [web scraping:](#org81826f4)
    - [a new "are" method (what are these?)](#orgb9d5d78)
    - [rakudo weekly news](#org7a4d71a)
    - [more dwimmy .all ~~ Type](#org2b04b05)
    - [checking a program is on system](#org6b9c1ae)
    - [parsing wiki syntax, regex vs grammars](#org5ec8bd3)
  - [sniping at perl, circa 2009](#org5c9ddd6)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orga5a3014)
  - [equilibirum index](#orga40281c)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org9cd7286)
    - [revisit this next time (Rob solution?)](#org5e351d5)
  - [Rob's interested in discussing missing basic tools](#orgca3afa4)
  - [weekly challenge this week](#orgbcd9076)
    - [<https://theweeklychallenge.org/>](#orgbbdf5a3)
  - [from previous meetings](#orga087182)
    - [an answer to what's Raku for:](#org86a7691)
    - [gui toolkits](#orgb500a14)
  - [bill michels](#org3e1e51c)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org95bdf98)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgc14f52f)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orge35d65e)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgab24a4f)
  - [announcements](#org682a801)
    - [May 22nd: next raku study group meeting](#orgbb25d2d)
    - [June 21-25: tprc: perl/raku conference](#orge89f7c7)


<a id="orgf29447e"></a>

# meeting notes May 08, 2022


<a id="org919862f"></a>

## the raku study group


<a id="org95d887e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org42628e6"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org6302917"></a>

## raku's "move" considered ungood


<a id="orgfaad088"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org4851332"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orge5055d0"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org701e7fe"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org5b81d92"></a>

## rob ransbottom


<a id="orgc125f9d"></a>

### topics in mind, which are


<a id="org5cc04a6"></a>

### bruce gray

system install


<a id="orgc0ca07c"></a>

## recent raku topics


<a id="org81826f4"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orgb9d5d78"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org7a4d71a"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org2b04b05"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org6b9c1ae"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org5ec8bd3"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org5c9ddd6"></a>

## sniping at perl, circa 2009


<a id="orga5a3014"></a>

### <https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>

1.  William Michaels brought up this piece from 2009

2.  true: "There are many wonderful modules in CPAN, but learning about them, learning to use them &#x2026; takes even more time"

3.  eh: "People hate Perl for the same reason we love it&#x2013; because it makes us feel clever."

    1.  And people attacked perl so they could feel clever&#x2013; or at least pose as enlightened insiders.

4.  links to Steve Yegge: <https://sites.google.com/site/steveyegge2/ancient-languages-perl>

5.  my old commentary about Steve Yegge

    1.  <http://obsidianrook.com/doomfiles/GENTLE_ART_OF_PROGRAMMING.html>
    
    2.  <http://obsidianrook.com/doomfiles/SIGILS_OF_POWER.html>
    
    3.  <http://obsidianrook.com/doomfiles/CASE_STUDY_2.html>
    
    4.  <http://obsidianrook.com/doomfiles/THE_PERL_AFFAIR.html>


<a id="orga40281c"></a>

## equilibirum index


<a id="org9cd7286"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org5e351d5"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgca3afa4"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgbcd9076"></a>

## weekly challenge this week


<a id="orgbbdf5a3"></a>

### <https://theweeklychallenge.org/>


<a id="orga087182"></a>

## from previous meetings


<a id="org86a7691"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgb500a14"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org3e1e51c"></a>

## bill michels


<a id="org95bdf98"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgc14f52f"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orge35d65e"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgab24a4f"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org682a801"></a>

## announcements


<a id="orgbb25d2d"></a>

### May 22nd: next raku study group meeting


<a id="orge89f7c7"></a>

### June 21-25: tprc: perl/raku conference
