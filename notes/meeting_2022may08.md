- [meeting notes May 08, 2022](#org67746e4)
  - [the raku study group](#org527ef5d)
    - [usual links](#org472dd67)
  - [finished tests to examine ^methods issues](#orga7ddccf)
  - [raku's "move" considered ungood](#org0c8b2bb)
    - [move/copy command in Raku doesn't work with directory as second arg](#org145946a)
    - [<https://docs.raku.org/routine/move>](#orgf2032c5)
    - [we've discussed this one already:](#org69ffed2)
    - [an issue: the unix "mv" can do a rename or a refile](#org1d6cf71)
  - [rob ransbottom](#orgcb15569)
    - [topics in mind, which are](#org883258c)
  - [recent raku topics](#orgeda4b7e)
    - [web scraping:](#orgdf80ead)
    - [a new "are" method (what are these?)](#orge2c07db)
    - [rakudo weekly news](#orgd0829dc)
    - [more dwimmy .all ~~ Type](#org74158c8)
    - [checking a program is on system](#org105e7b2)
    - [parsing wiki syntax, regex vs grammars](#org7cdec7e)
  - [sniping at perl, circa 2009](#org06f4ba7)
    - [<https://corky.net/dotan/log/2009/06/heres-why-people-hate-perl-folks.html>](#orgea385f3)
  - [equilibirum index](#orgfb5c609)
    - [<http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>](#org07a1040)
    - [revisit this next time (Rob solution?)](#org70acecc)
  - [Rob's interested in discussing missing basic tools](#orgcbe86b3)
  - [weekly challenge this week](#org4ddfdf0)
    - [<https://theweeklychallenge.org/>](#org795036a)
  - [from previous meetings](#org128d8f3)
    - [an answer to what's Raku for:](#orgf872f50)
    - [gui toolkits](#org21544b0)
  - [bill michels](#orga28d7a3)
    - [<https://unix.stackexchange.com/a/699417/227738>](#org57f392c)
    - [<https://stackoverflow.com/a/71973303/7270649>](#orgfe10011)
    - [<https://stackoverflow.com/a/71989016/7270649>](#org8ebaf04)
    - [<https://unix.stackexchange.com/a/699338/227738>](#orgb08f72c)
  - [announcements](#org5d31b29)
    - [May 22nd: next raku study group meeting](#orgf1dd6f4)
    - [June 21-25: tprc: perl/raku conference](#org49707b4)


<a id="org67746e4"></a>

# meeting notes May 08, 2022


<a id="org527ef5d"></a>

## the raku study group


<a id="org472dd67"></a>

### usual links

1.  these notes

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may08.md>

2.  code examples

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may08>


<a id="orga7ddccf"></a>

## finished tests to examine ^methods issues

1.  <https://github.com/doomvox/darkroast/tree/main/S12-introspection/method_object_gists.t>

2.  misc things could be said about the code (search for STUDYGROUP)

    1.  /home/doom/End/Cave/Raku/Notes/notes-darkroast-c
    
    2.  aret<sub>methods</sub><sub>method</sub>


<a id="org0c8b2bb"></a>

## raku's "move" considered ungood


<a id="org145946a"></a>

### move/copy command in Raku doesn't work with directory as second arg


<a id="orgf2032c5"></a>

### <https://docs.raku.org/routine/move>

1.  "To avoid copying, you can use rename, if the files are on the same storage device. It also works with directories, while move does not."

2.  Uh: WTF?


<a id="org69ffed2"></a>

### we've discussed this one already:

1.  <https://stackoverflow.com/questions/71909580/move-function-does-not-work-in-raku-in-windows/71973303#71973303>


<a id="org1d6cf71"></a>

### an issue: the unix "mv" can do a rename or a refile

1.  unix mv:

    1.  refile happens if last argument is a directory
    
    2.  rename fails if there are more than two arguments

2.  Q: should raku emulate unix

    1.  unix-heads were target audience for perl, maybe not-so for raku


<a id="orgcb15569"></a>

## rob ransbottom


<a id="org883258c"></a>

### topics in mind, which are

1.  bruce gray

    system install perl vs custom


<a id="orgeda4b7e"></a>

## recent raku topics


<a id="orgdf80ead"></a>

### web scraping:

1.  <https://www.reddit.com/r/rakulang/comments/u6bixq/web_scraping_with_raku/>


<a id="orge2c07db"></a>

### a new "are" method (what are these?)

1.  <https://www.reddit.com/r/rakulang/comments/ueixic/new_are_method_rocks/>


<a id="orgd0829dc"></a>

### rakudo weekly news

1.  <https://rakudoweekly.blog/2022/05/02/2022-18-period/>


<a id="org74158c8"></a>

### more dwimmy .all ~~ Type

<https://www.reddit.com/r/rakulang/comments/tspr5a/a_much_more_dwimmy_where_all_type/>


<a id="org105e7b2"></a>

### checking a program is on system

1.  <https://stackoverflow.com/questions/71894048/how-to-check-if-a-program-is-present-in-the-system-with-raku>


<a id="org7cdec7e"></a>

### parsing wiki syntax, regex vs grammars

1.  <https://stackoverflow.com/questions/71812642/should-raku-grammars-or-regexes-be-used-for-parsing-wiki-markup>


<a id="org06f4ba7"></a>

## sniping at perl, circa 2009


<a id="orgea385f3"></a>

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


<a id="orgfb5c609"></a>

## equilibirum index


<a id="org07a1040"></a>

### <http://rosettacode.org/wiki/Equilibrium_index#Single-pass_solution>


<a id="org70acecc"></a>

### TODO revisit this next time (Rob solution?)


<a id="orgcbe86b3"></a>

## TODO Rob's interested in discussing missing basic tools


<a id="org4ddfdf0"></a>

## weekly challenge this week


<a id="org795036a"></a>

### <https://theweeklychallenge.org/>


<a id="org128d8f3"></a>

## from previous meetings


<a id="orgf872f50"></a>

### an answer to what's Raku for:

1.  <https://www.codesections.com/blog/raku-manifesto/>


<a id="org21544b0"></a>

### gui toolkits

1.  gtk3

    1.  marcel timmerman on raku
    
    2.  <https://modules.raku.org/dist/Gnome::Gtk3>
    
    3.  <https://github.com/MARTIMM/gnome-gtk3/issues/28#issue-1199187148>

2.  iup

    1.  <https://en.wikipedia.org/wiki/IUP_(software)>
    
    2.  <https://raku.land/github:hankache/IUP>

3.  wish based tk


<a id="orga28d7a3"></a>

## bill michels


<a id="org57f392c"></a>

### <https://unix.stackexchange.com/a/699417/227738>


<a id="orgfe10011"></a>

### <https://stackoverflow.com/a/71973303/7270649>


<a id="org8ebaf04"></a>

### <https://stackoverflow.com/a/71989016/7270649>


<a id="orgb08f72c"></a>

### <https://unix.stackexchange.com/a/699338/227738>


<a id="org5d31b29"></a>

## announcements


<a id="orgf1dd6f4"></a>

### May 22nd: next raku study group meeting


<a id="org49707b4"></a>

### June 21-25: tprc: perl/raku conference
