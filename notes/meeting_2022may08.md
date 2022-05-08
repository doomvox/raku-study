- [meeting notes May 08, 2022](#org3edf1fb)
  - [the raku study group](#orgebc0ce7)
    - [usual links](#orge2a442e)
  - [finished tests to examine ^methods issues](#org424ca67)
  - [raku's "move" considered ungood](#org4c2179f)
    - [move/copy command in Raku doesn't work with directory as second arg](#orgad4c329)
    - [<https://docs.raku.org/routine/move>](#org8eb2b6b)
    - [we've discussed this one already:](#org394a6c7)
    - [an issue: the unix "mv" can do a rename or a refile](#orge65d4e0)
  - [rob ransbottom](#org6f08ae2)
    - [topics in mind, which are](#org79ee3db)
  - [recent raku topics](#org668d88c)
    - [web scraping:](#org88fb5be)
    - [a new "are" method (what are these?)](#org048788f)
    - [rakudo weekly news](#org7d6930d)
    - [more dwimmy .all ~~ Type](#org6f3d8e0)
    - [checking a program is on system](#org2967121)
    - [parsing wiki syntax, regex vs grammars](#org786946d)
  - [sniping at perl, circa 2009](#org9ec3ed5)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgeca9c9c)
  - [equilibirum index](#org7c88836)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org5098f9d)
    - [revisit this next time (Rob solution?)](#org725c829)
  - [Rob's interested in discussing missing basic tools](#org6887e77)
  - [weekly challenge this week](#org6839f59)
    - [<https://theweeklychallenge.org/>](#org95669d4)
  - [from previous meetings](#org2134165)
    - [an answer to what's Raku for:](#org1690647)
    - [gui toolkits](#org793d191)
  - [bill michels](#orgbc3d2f9)
    - [<https://unix.stackexchange.com/a/699417/227738>](#orge681d02)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgb6dbb12)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org2f8f60f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org56a22d2)
  - [announcements](#org0c68e39)
    - [May 22nd: next raku study group meeting](#orgbe764f0)
    - [June 21-25: tprc: perl/raku conference](#orgc536cc5)


<a id="org3edf1fb"></a>

# meeting notes May 08, 2022


<a id="orgebc0ce7"></a>

## the raku study group


<a id="orge2a442e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org424ca67"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org4c2179f"></a>

## raku's "move" considered ungood


<a id="orgad4c329"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org8eb2b6b"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org394a6c7"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="orge65d4e0"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org6f08ae2"></a>

## rob ransbottom


<a id="org79ee3db"></a>

### topics in mind, which are


<a id="org668d88c"></a>

## recent raku topics


<a id="org88fb5be"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org048788f"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org7d6930d"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org6f3d8e0"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org2967121"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org786946d"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org9ec3ed5"></a>

## sniping at perl, circa 2009


<a id="orgeca9c9c"></a>

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


<a id="org7c88836"></a>

## equilibirum index


<a id="org5098f9d"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org725c829"></a>

### TODO revisit this next time (Rob solution?)


<a id="org6887e77"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org6839f59"></a>

## weekly challenge this week


<a id="org95669d4"></a>

### <https://theweeklychallenge.org/>


<a id="org2134165"></a>

## from previous meetings


<a id="org1690647"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org793d191"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orgbc3d2f9"></a>

## bill michels


<a id="orge681d02"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgb6dbb12"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org2f8f60f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org56a22d2"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org0c68e39"></a>

## announcements


<a id="orgbe764f0"></a>

### May 22nd: next raku study group meeting


<a id="orgc536cc5"></a>

### June 21-25: tprc: perl/raku conference
