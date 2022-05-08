- [meeting notes May 08, 2022](#orgb711ec9)
  - [the raku study group](#org4dfecba)
    - [usual links](#orge24de0e)
  - [finished tests to examine ^methods issues](#orga77c822)
  - [raku's "move" considered screwed-up](#org52695c9)
    - [<https://docs.raku.org/routine/move>](#org74b71d2)
    - ["To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."](#org692567f)
    - [move/copy command in Raku doesn't work with directory as second arg](#org5d3df6a)
    - [we've discussed this one already:](#orgacfc1df)
  - [recent raku topics](#org04ca5fb)
    - [web scraping:](#org571eec4)
    - [a new "are" method (what are these?)](#org9a19bb0)
    - [rakudo weekly news](#org2ae8d24)
    - [more dwimmy .all ~~ Type](#org19aa8b3)
    - [checking a program is on system](#org968d52e)
    - [parsing wiki syntax, regex vs grammars](#orgee7eece)
  - [sniping at perl, circa 2009](#org8e75a03)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org14b0f34)
  - [equilibirum index](#orgc9db62a)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org6761e08)
    - [revisit this next time (Rob solution?)](#org44eedb1)
  - [Rob's interested in discussing missing basic tools](#orgee29fe7)
  - [weekly challenge this week](#orgebda37e)
    - [<https://theweeklychallenge.org/>](#org4bfb602)
  - [from previous meetings](#org1d3e725)
    - [an answer to what's Raku for:](#org5804318)
    - [gui toolkits](#org015a448)
  - [bill michaels](#org52c85e4)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org4c16f7e)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org2b81f0c)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org790875f)
    - [<https://unix.stackexchange.com/a/699338/227738>](#org21e00c6)
  - [announcements](#orgbc5a384)
    - [May 22nd: next raku study group meeting](#org41c003a)
    - [June 21-25: tprc: perl/raku conference](#orgd5a92ad)


<a id="orgb711ec9"></a>

# meeting notes May 08, 2022


<a id="org4dfecba"></a>

## the raku study group


<a id="orge24de0e"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga77c822"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org52695c9"></a>

## raku's "move" considered screwed-up


<a id="org74b71d2"></a>

### <https://docs.raku.org/routine/move>


<a id="org692567f"></a>

### "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."


<a id="org5d3df6a"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgacfc1df"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org04ca5fb"></a>

## recent raku topics


<a id="org571eec4"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org9a19bb0"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org2ae8d24"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org19aa8b3"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org968d52e"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="orgee7eece"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org8e75a03"></a>

## sniping at perl, circa 2009


<a id="org14b0f34"></a>

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


<a id="orgc9db62a"></a>

## equilibirum index


<a id="org6761e08"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org44eedb1"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgee29fe7"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="orgebda37e"></a>

## weekly challenge this week


<a id="org4bfb602"></a>

### <https://theweeklychallenge.org/>


<a id="org1d3e725"></a>

## from previous meetings


<a id="org5804318"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org015a448"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org52c85e4"></a>

## bill michaels


<a id="org4c16f7e"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org2b81f0c"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org790875f"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="org21e00c6"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgbc5a384"></a>

## announcements


<a id="org41c003a"></a>

### May 22nd: next raku study group meeting


<a id="orgd5a92ad"></a>

### June 21-25: tprc: perl/raku conference
