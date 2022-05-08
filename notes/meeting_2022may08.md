- [meeting notes May 08, 2022](#orgdc2e249)
  - [the raku study group](#orgf2673b7)
    - [usual links](#orgb57b606)
  - [finished tests to examine ^methods issues](#org27f1516)
  - [raku's "move" considered ungood](#orgd0589d7)
    - [move/copy command in Raku doesn't work with directory as second arg](#org86c94a2)
    - [<https://docs.raku.org/routine/move>](#org671e0ed)
    - [we've discussed this one already:](#orgb5d2104)
    - [an issue: the unix "mv" can do a rename or a refile](#org1aaee9b)
  - [rob ransbottom](#org59301a9)
    - [topics in mind, which are](#orgff61587)
  - [recent raku topics](#org762cf01)
    - [web scraping:](#orga652746)
    - [a new "are" method (what are these?)](#org4aefe4a)
    - [rakudo weekly news](#org983fe05)
    - [more dwimmy .all ~~ Type](#org5a5e9b9)
    - [checking a program is on system](#org474dea3)
    - [parsing wiki syntax, regex vs grammars](#org1cbee35)
  - [sniping at perl, circa 2009](#org05af483)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#org250bdd9)
  - [equilibirum index](#org5adef0d)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org2c1d41b)
    - [revisit this next time (Rob solution?)](#org09e4e86)
  - [Rob's interested in discussing missing basic tools](#org4051d1e)
  - [weekly challenge this week](#org4173ae6)
    - [<https://theweeklychallenge.org/>](#orga7c8ed7)
  - [from previous meetings](#orgcbeacb1)
    - [an answer to what's Raku for:](#org1a08178)
    - [gui toolkits](#org9723321)
  - [bill michels](#org8030337)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org76ad623)
    - [<https://stackoverflow.com/a/71973303/7270649>](#org4aa6a43)
    - [<https://stackoverflow.com/a/71989016/7270649>](#orgb14baae)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgbd71cdd)
  - [announcements](#orgaa2fb9d)
    - [May 22nd: next raku study group meeting](#orgc853b9e)
    - [June 21-25: tprc: perl/raku conference](#orgd40ccab)


<a id="orgdc2e249"></a>

# meeting notes May 08, 2022


<a id="orgf2673b7"></a>

## the raku study group


<a id="orgb57b606"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="org27f1516"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="orgd0589d7"></a>

## raku's "move" considered ungood


<a id="org86c94a2"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="org671e0ed"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="orgb5d2104"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org1aaee9b"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="org59301a9"></a>

## rob ransbottom


<a id="orgff61587"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom, history


<a id="org762cf01"></a>

## recent raku topics


<a id="orga652746"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="org4aefe4a"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="org983fe05"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org5a5e9b9"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org474dea3"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org1cbee35"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org05af483"></a>

## sniping at perl, circa 2009


<a id="org250bdd9"></a>

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


<a id="org5adef0d"></a>

## equilibirum index


<a id="org2c1d41b"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org09e4e86"></a>

### TODO revisit this next time (Rob solution?)


<a id="org4051d1e"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org4173ae6"></a>

## weekly challenge this week


<a id="orga7c8ed7"></a>

### <https://theweeklychallenge.org/>


<a id="orgcbeacb1"></a>

## from previous meetings


<a id="org1a08178"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org9723321"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="org8030337"></a>

## bill michels


<a id="org76ad623"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="org4aa6a43"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="orgb14baae"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgbd71cdd"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="orgaa2fb9d"></a>

## announcements


<a id="orgc853b9e"></a>

### May 22nd: next raku study group meeting


<a id="orgd40ccab"></a>

### June 21-25: tprc: perl/raku conference
